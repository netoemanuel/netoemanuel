/*
--Thiago (#15287): geração de CCEs da AGROCLUB BRASIL -> "Pis e Cofins tributado integralmente"
-- delete from LONTANO_GSe.dbo.Temp_CCeCaramuru
-- select * from LONTANO_GSe.dbo.Temp_CCeCaramuru 
-- insert into LONTANO_GSe.dbo.Temp_CCeCaramuru
-- SELECT cte.cUF, cte.nCT
-- FROM OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\20240201204817_U6EWIYMRGX2_CTe_Lontano_-_Erro_Agro_Club.xlsx','SELECT * FROM [Lista$A1:A1000]') P
-- JOIN LONTANO_GSe.dbo.CTe cte ON cte.ID = P.Chave COLLATE Latin1_General_CI_AS
select top(1000) * from LONTANO_GSe.dbo.ItensCartaCorrecao_CTe order by DataCriacao desc
select top(200) * from LONTANO_GSe.dbo.ItensCartaCorrecao_CTe WHERE campoAlterado = 'INFADFISCO' order by DataCriacao desc
select top(200) Status, * 
from LONTANO_GSe.dbo.Eventos_CTe 
where dhEvento >= '2024-02-01 17:10' and tpEvento = 110110 
	and Status <> 1 
order by dhEvento desc
--ICMS ISENTO CONF. ART.133, ANEXO IV DO RICMS/MT DEC. 2.212/14 MERCADORIA DESTINADA A EXPORTACAO PIS/COFINS TRIBUTADO INTEGRALMENTE.
exec VerificaCTe 980000026755
*/


DECLARE @sec as int
DECLARE @hora as datetime
DECLARE @ini as datetime
DECLARE @ev AS INT
DECLARE @seq decimal(12,0)
select getdate()
select @hora = '2024-02-01 17:15:00'
select @ini  = '2024-02-01 17:15:00'
SET @sec = 1
--SELECT @hora = DATEADD(SECOND,@sec,GETDATE())
--SELECT getdate(), @hora

declare cce cursor for
select top 1000 cte.Sequencial
from lontano_gse.dbo.Temp_CCeCaramuru tmp 
inner join LONTANO_GSe.dbo.CTe cte on tmp.UF = cte.cuf AND tmp.nCT = cte.nCT
where cte.Status = 1 and cte.Sequencial not in (SELECT Sequencial_CTe from lontano_gse.dbo.Eventos_CTe WHERE dhEvento >= '2024-02-01' and tpEvento = 110110)
    and patindex('%PIS/COFINS SUSPENSO CONFORME PARAGRAFO 6A. DO ART. 40 DA LEI NO. 10.865/2004 MERCADORIA DESTINADA A EXPORTACAO.%',cte.infAdFisco) > 0
order BY cte.dhEmi


OPEN cce
FETCH next from cce into @seq
WHILE @@fetch_status = 0 BEGIN

	SELECT @hora = DATEADD(SECOND,@sec,@ini)
	SELECT @sec = @sec + 1
	--select @hora

	--INSERE OS REGISTROS NA TABELA Eventos_CTe
	INSERT INTO LONTANO_GSe.dbo.Eventos_CTe (Sequencial_CTe, versao, Id, cOrgao, tpAmb, CNPJ, chCTe, dhEvento, tpEvento, nSeqEvento, versaoEvento, Status, xCondUso, CodUsuarioCriacao, CodFilialCriacao, DataCriacao)
	select  CTe.Sequencial, '2.00', 'ID110110'+CTe.ID+right('0'+convert(varchar(2),ISNULL((SELECT COUNT(*) FROM LONTANO_GSe.dbo.Eventos_CTe WHERE Sequencial_CTe = CTe.Sequencial AND tpEvento = '110110'),0)+1),2), 
			CTe.cUF, CTe.tpAmb, CTe.CNPJ, CTe.ID, @hora, '110110', ISNULL((SELECT COUNT(*) FROM LONTANO_GSe.dbo.Eventos_CTe WHERE Sequencial_CTe = CTe.Sequencial AND tpEvento = '110110'),0)+1, 
			'3.00', 0, 'A Carta de Correcao e disciplinada pelo Art. 58-B do CONVENIO/SINIEF 06/89: Fica permitida a utilizacao de carta de correcao, para regularizacao de erro ocorrido na emissao de documentos fiscais relativos a prestacao de servico de transporte, desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: base de calculo, aliquota, diferenca de preco, quantidade, valor da prestacao;II - a correcao de dados cadastrais que implique mudanca do emitente, tomador, remetente ou do destinatario;III - a data de emissao ou de saida.' ,
			10001, 'CG', GETDATE()
	From LONTANO_GSe.dbo.CTe CTe 
	inner join lontano_gse.dbo.Temp_CCeCaramuru tmp on tmp.UF = cte.cuf AND tmp.nCT = cte.nCT
	where cte.Sequencial = @seq

	SELECT @ev = max(Sequencial) 
    FROM LONTANO_GSe.dbo.Eventos_CTe
    WHERE Sequencial_CTe = @seq

	--INSERE OS REGISTROS NA TABELA ItensCartaCorrecao_CTe
	INSERT INTO LONTANO_GSe.dbo.ItensCartaCorrecao_CTe (SeqEvento, SeqCorrecao, grupoAlterado, campoAlterado, valorAlterado, nroItemAlterado, CodUsuarioCriacao, CodFilialCriacao, DataCriacao)
	SELECT @ev, 1, 'imp', 'infAdFisco', 
        REPLACE(convert(varchar(max),cte.infadfisco),'PIS/COFINS SUSPENSO CONFORME PARAGRAFO 6A. DO ART. 40 DA LEI NO. 10.865/2004 MERCADORIA DESTINADA A EXPORTACAO.','PIS/COFINS TRIBUTADO INTEGRALMENTE.'),
        NULL, 10001, 'CG', GETDATE()
	FROM LONTANO_GSe.dbo.cte cte
	WHERE cte.Sequencial = @seq

	Fetch next from cce into @seq

end

CLOSE cce
DEALLOCATE cce


