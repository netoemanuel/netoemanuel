
select mvoe.NumOrdemEmbarque, mdfe.Sequencial, mdfe.dhEmi, mdfe.[Status]
from LONTANO_GSe.dbo.mdfe mdfe 
join MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga
where mdfe.status = 1 
	and mdfe.sequencial not in (select Sequencial from LONTANO_GSe.dbo.MDFe_LOG where codLog = 22 and cstat = 100)
	and mdfe.sequencial not in (select Sequencial from LONTANO_GSe.dbo.MDFe_LOG where codLog = 32 and cstat = 100)

EXEC VerificaCTe 220000078091
SELECT TOP (1) CT.Sequencial, NF.SituacaoProtocolo, CASE WHEN ISNULL(NF.SituacaoProtocolo, 0) <> 3  THEN 'N' ELSE CASE WHEN ISNULL(NF.SituacaoProtocolo, 0) = 3 AND OCO.ConteudoXml LIKE '%RPS já informado%' THEN 'N' ELSE 'S' END END AS PermiteExcluir, CASE WHEN ISNULL(NF.SituacaoProtocolo, 0) <> 3  THEN 'Motivo: Situação Protocolo diferente de 3.' ELSE CASE WHEN ISNULL(NF.SituacaoProtocolo, 0) = 3 AND OCO.ConteudoXml LIKE '%RPS já informado%' THEN 'Motivo: RPS fora de numeração.' ELSE '' END END AS MensagemErro FROM ConhecimentosTransporte ct LEFT OUTER JOIN LONTANO_GSe.dbo.NFSe NF ON NF.Sequencial = CT.Sequencial LEFT OUTER JOIN LONTANO_GSe.dbo.NFSe_Ocorrencia OCO ON OCO.IdNfse = NF.Id AND OCO.TipoOcorrencia = 'RETORNO'
WHERE (ct.ModeloDocumento = 'NFS-e') AND (CT.Sequencial = '20000155812')

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 133128                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from ConhecimentosTransporte where NumConhecto = 725245 and CodUF = 'MT'
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 25122700 
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque_log WHERE NumOrdemEmbarque = 6037436 

--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 25122700 
--update OrdemEmbarque set RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 25122700 ---voltar os dados:
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4198071139792720, RotaSemParar = null, ValorPedagioSemParar = null, TipoDispositivoValePedagio = 0   where  NumOrdemEmbarque = 25122700 
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar	TipoDispositivoValePedagio
--Centro de Gestao de Meios de P	0738795964	FELIZ NATAL-MT X ITAITUBA-PA NOVO	843.89	1

select * from LONTANO_GSe.dbo.CTe where ID LIKE '%1410%' order BY DataCriacao desc
--DELETE from LONTANO_GSe.dbo.CTe_log where Sequencial = 410000053538 and ID = 22916742
EXEC VerificaCTe 410000053538
--UPDATE LONTANO_GSe.dbo.CTe SET Status= 0 where Sequencial = 410000053538
EXEC VerificaCTe 640000065814
--UPDATE LONTANO_GSe.dbo.CTe SET Status= 0 where Sequencial = 640000065814

--blk
--wtf 895
--KILL 895

select * from ConhecimentosTransporte where NumConhecto = 412731 and CodUF = 'MG'
EXEC VerificaCTe 270000078497
SELECT Status,* FROM LONTANO_GSe.dbo.cte where Sequencial = 270000078497
SELECT Status,* FROM LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 270000078497
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET Status = 0 where Sequencial_CTe = 270000078497
EXEC MonitoraMDFe 27083705

EXEC MonitoraMDFe 64077263
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 626726 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240018630169', nProt = '941240018630169' where Sequencial = 1705576 and ID = 6999287 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1705576
--UPDATE LONTANO_GSe.dbo.MDFe_log SET Status = 2, cstat = 204 where Sequencial = 1705576  and ID = 6999287 

select * from ConhecimentosTransporte where NumConhecto = 725854 and CodUF = 'MT'
EXEC MonitoraMDFe 9041903
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1705805

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 527648                                  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque_log WHERE NumOrdemEmbarque = 25121176 
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 25121176 
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4417812018370665, RotaSemParar = Null, ValorPedagioSemParar = null, TipoDispositivoValePedagio = 0   where  NumOrdemEmbarque = 25121176 
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar	TipoDispositivoValePedagio
--		NULL			4417812018370665	BELA VISTA-MS X ALTO TAQUARI-MT	 267.21			NULL

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 527653                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
--MS-
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque_log WHERE NumOrdemEmbarque = 25121175 
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 25121175 
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4417812018385895, RotaSemParar = null, ValorPedagioSemParar = Null, TipoDispositivoValePedagio = 0   where  NumOrdemEmbarque = 25121175 
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar	TipoDispositivoValePedagio
--Banco Bradesco S/A	4417812018385895	BELA VISTA-MS X ALTO TAQUARI-MT	267.21	0
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 25121175 ORDER BY datalog desc

SELECT * from ConhecimentosTransporte where NumConhecto = 726169 and CodUF = 'MT'
EXEC VerificaCTe 20000155895
--EXEC Grava_CTe 20000155895

EXEC MonitoraMDFe 76083828
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 9 where Sequencial = 1698557
-------------------------------------------------------------------------------------------------------------------
select Discriminacao,* from LONTANO_GSe.dbo.NFSe where Sequencial = 510000032620
--UPDATE LONTANO_GSe.dbo.NFSe set Discriminacao = 'Mercadoria: Fertilizantes - NF: 3/352456 - Peso: 31613.000 - Valor: R$ 73380.50 - Placa: ABR-3558 - Alíq.ISS: 3.00 Valor ISS: 48.65
--- Tarifa: R$ 51.3000 - Motorista: Jose Manoel. ATENCAO PAGAMENTO DO SALDO DO FRETE, SOMENTE COM O CANHOTO DA DANFE ASSINADO, NOME POR EXTENSO, RG OU CPF DE QUEM ACOMPANHOU A DESCARGA 
--E RECEBEU A MERCADORIA     C N D 0050913464 COD. AUT. T722LU72B2TBB2AU - Remetente: Mosaic Fertilizantes do Brasil Ltda CNPJ/CPF: 61.156.501/0092-93 IE: 13.239.249-6 - Destinatário:
--Lavoro Agrocomercial Sa CNPJ/CPF: 06.116.723/0033-14 IE: 139331883 - Pedido: LAVORO001/24 - NFe:51240861156501009293550030003524561686963816'	 where Sequencial = 370000003912

--UPDATE LONTANO_GSe.dbo.NFSe set DataAlteracao = GETDATE () where Sequencial = 370000003912

select Discriminacao,SequencialRPS,NumeroNfse,* from LONTANO_GSe.dbo.NFSe  order BY DataCriacao desc 

select Discriminacao,* from LONTANO_GSe.dbo.NFSe where DataCriacao > '2024-08-14 12:40:29.000' AND SequencialRPS IS not null AND Discriminacao IS  null and NumeroNfse IS not null
--UPDATE LONTANO_GSe.dbo.NFSe set SituacaoProtocolo = 4  where DataCriacao > '2024-08-14 12:40:29.000' AND SequencialRPS IS not null AND Discriminacao IS  null 
--and NumeroNfse IS not null and DataAlteracao IS not null 


SELECT * from ConhecimentosTransporte where NumConhecto IN (726464) and CodUF = 'MT'
EXEC VerificaCTe 400000011379
--UPDATE LONTANO_GSe.dbo.CTE SET Status = 0 where Sequencial in(810000004652,40000042115)