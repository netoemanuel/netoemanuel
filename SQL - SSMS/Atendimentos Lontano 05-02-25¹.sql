--Quando puder validar:
--(Ticket Nº 24794) Atendimentos à usuário(a) Marilene referente a chamado aberto pelo Milvus com Assunto: "Ordem sem ciot - cte com ciot - 745078".

select CIOT,* from ConhecimentosTransporte where Numconhecto = 745078  and CodUF = 'MT' and SerieConhecto = '0' 
select CIOT, * FROM OrdemEmbarque where NumOrdemEmbarque = 4031790
select CIOT,* FROM OrdemEmbarque_log where NumOrdemEmbarque = 4031790

select CIOT,* from ConhecimentosTransporte where CodOrdemEmbarque = 4031790
select * from ConhecimentosTransporte_log where CodOrdemEmbarque = 4031790
SELECT * from ConhecimentosTransporte where CIOT = '167022798888/7440'

SELECT ciot, * from ConhecimentosTransporte where CIOT like '%/%' ORDER by DataCriacao desc


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 745078                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.CIOT LIKE  '167022798888%'            --MT-745022                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from MDFeViagem_OrdemEmbarque WHERE NumOrdemEmbarque in ( 19040607,4031790) ORDER by DataCriacao desc

SELECT * from OrdemEmbarque where NumOrdemEmbarque = 19040607
SELECT CIOT,* from OrdemEmbarque_Log where NumOrdemEmbarque = 19040607


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 141536                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT CodMovBancaria,* FROM ChequesEmitidos WHERE (Sequencial = 60000071681)
SELECT CodMovBancaria,* FROM ChequesEmitidos WHERE Historico ='Pagto. CTRC GO-646750'
--UPDATE ChequesEmitidos SET SituacaoCheque = 'Pago' WHERE (Sequencial = 60000071681)
SELECT CodMovBancaria,* FROM ChequesEmitidos_Log WHERE (Sequencial = 60000071681)
SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 6070755) --and ValorMovimento = 641.63
SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 6070755) and ValorMovimento = 641.63
SELECT * FROM MovimentacaoBancaria_log WHERE (CodMovBancaria = 6070755) and ValorMovimento = 641.63 ORDER BY DataLog desc
--INSERT INTO MovimentacaoBancaria VALUES (6070755,'CG',566,'2024-12-06 00:00:00','2024-12-06 00:00:00',5,646750,641.63,1,'D','Pagto. CTRC GO-646750','2024-12-06 00:00:00',NULL,NULL,78,'Baixado','S','N',NULL,NULL,NULL,13903,'CUB','2024-12-06 15:37:59.000',NULL,NULL,NULL,NULL,3,NULL,NULL)

select * from Usuarios where CodUsuario = 13903

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 544258                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 544253                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CF.CodAdmPagtoFrete = 15      and o.Erro like '0 - ROTEIRO VINCULADO COM SUCESSO'                          
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 745975                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 703333                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 9040302
select NumFormulario,* from ConhecimentosTransporte where Numconhecto = 703333  and CodUF = 'MT' and SerieConhecto = '0' 
SELECT * from ChequesEmitidos where Sequencial = 100000081461

SELECT * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000081461


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 528009                                        
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 9040302
select NumFormulario,* from ConhecimentosTransporte where Numconhecto = 528009  and CodUF = 'MS' and SerieConhecto = '0' 
SELECT * from ChequesEmitidos where Sequencial = 500000006787
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 500000006787

select * from ChequesEmitidos where NumeroCheque = 278008 and CodContaBancaria in ( 22,77)
--UPDATE  ChequesEmitidos SET SituacaoCheque = 'A Emitir',Gerado = 'N' where NumeroCheque = 278008 and CodContaBancaria in ( 22,77)
--UPDATE  ChequesEmitidos SET SituacaoCheque = 'Pago',Gerado = 'S' where NumeroCheque = 278008 and CodContaBancaria in ( 22,77)


--SELECT CASE WHEN PAR.ObrigaImagemCTePagtoSaldo = 'S' THEN 'S' ELSE 'N' END AS Validar
--	FROM ParametrosGerais PAR
--	WHERE PAR.CodFilial = @filial

--EXEC ValidaImagemCTe 500000006787

SELECT * from ImagensCTe where Sequencial = 500000006787

SELECT * FROM DocumentosCte where  SequencialConhecimento = 500000006787
select ValorTotalFrete,ad* from ConhecimentosTransporte where Sequencial = 500000006787
inset 
    CTRC.DataCriacao AS 'Criação CTRC',
	CTRC.QuantidadeSaida,
	CTRC.QuantidadeChegada,
	a.CodRelacaoFrete,
	b.CodRelacaoFrete,
	a.CodUsuarioCriacao AS 'Usuário pagamento adiantamento',
	a.DataCriacao AS 'Criação adiantamento',
	b.CodUsuarioCriacao AS 'Usuário pagamento saldo',
	b.DataCriacao AS 'Criação Saldo',
	CTRC.CodUsuarioCriacao AS 'Usuário criação CTRC',
	CTRC.CodUF,
    CTRC.NumConhecto,
    A.NumSeqConhecto,
    A.ValorPago AS ValorAdiantamento,
    B.ValorPago AS ValorSaldoFrete
FROM ConhecimentosRelacaoFretes A
JOIN ConhecimentosRelacaoFretes B 
    ON A.NumSeqConhecto = B.NumSeqConhecto
    AND A.CodTipoPagamento = 1
    AND B.CodTipoPagamento = 2
    AND A.ValorPago = B.ValorPago
JOIN ConhecimentosTransporte CTRC 
    ON CTRC.Sequencial = A.NumSeqConhecto
WHERE CTRC.DataCriacao >= '2024-01-01 17:01:26.000'
ORDER BY CTRC.DataCriacao DESC;


    SELECT 'Documentos CTe' AS Origem
        , DocumentosCte.DocumentosCTeID AS ID, DocumentosCte.OrdemImagens AS SeqItem, DocumentosCte.OrdemImagens AS SeqImagem
        , DocumentosCte.SequencialConhecimento AS Sequencial, CTRC.NumConhecto
        , DocumentosCte.AprovacaoImagem, DocumentosCte.CodUsuarioCriacao, DocumentosCte.CodFilialCriacao, DocumentosCte.DataCriacao, DocumentosCte.CodUsuarioAlteracao
        , DocumentosCte.CodFilialAlteracao, DocumentosCte.DataAlteracao
        , DocumentosCte.TipoDocumento
        , CASE WHEN LEN(ISNULL(DocumentosCte.LoginCriacao,'')) = 11 THEN dbo.CNPJ_CPF_Masc(CONVERT(VARCHAR(11), DocumentosCte.LoginCriacao)) ELSE '' END CPF_Motorista
        , CASE WHEN LEN(ISNULL(DocumentosCte.LoginCriacao,'')) > 11 THEN dbo.CNPJ_CPF_Masc(CONVERT(VARCHAR(11), DocumentosCte.LoginCriacao)) ELSE '' END CNPJ_Fornecedor
        , CASE WHEN ISNULL(DocumentosCte.LoginCriacao,'') = '' THEN DocumentosCte.CodUsuarioCriacao ELSE 0 END CodUsuario
    FROM DocumentosCte 
    JOIN ConhecimentosTransporte CTRC WITH (INDEX(PK_ConhecimentosTransporte)) ON CTRC.Sequencial = DocumentosCte.SequencialConhecimento
	WHERE Sequencial = 500000006787

	SELECT 'Relação Postos' AS Origem, img.CodRelacao AS ID, img.SeqItem, img.SeqImagem
    , it.SeqConhecto AS Sequencial, CTRC.NumConhecto
    , img.AprovacaoImagem, CAST(img.CodUsuarioCriacao AS VARCHAR) AS CodUsuarioCriacao, img.CodFilialCriacao, img.DataCriacao, img.CodUsuarioAlteracao, img.CodFilialAlteracao, img.DataAlteracao
    , Usu.NomeUsuario COLLATE Latin1_General_CI_AS AS NomeUsuarioCriacao, ISNULL(Alt.NomeUsuario,'') AS NomeUsuarioAlteracao
    , TipoDocumento AS TipoDocumento, NULL [CPF_Motorista]
FROM ItensRelacaoPostos_Img img 
JOIN ItensRelacaoPostos it ON it.CodRelacao = img.CodRelacao AND it.SeqItem = img.SeqItem 
JOIN ConhecimentosTransporte CTRC WITH (INDEX(PK_ConhecimentosTransporte)) ON CTRC.Sequencial = it.SeqConhecto
JOIN Usuarios Usu ON Usu.CodUsuario = img.CodUsuarioCriacao
LEFT JOIN Usuarios Alt ON Alt.CodUsuario = img.CodUsuarioAlteracao
WHERE Sequencial = 500000006787