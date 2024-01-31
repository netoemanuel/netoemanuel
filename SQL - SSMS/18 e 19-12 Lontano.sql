select * from OrdemEmbarque where NumOrdemEmbarque = 11020034
select CIOT, NumFormulario,* from ConhecimentosTransporte where NumConhecto  = 698115   and CodUF = 'MT'
select CIOT,QtdeConhectosEmitir,* from OrdemEmbarque_log where NumOrdemEmbarque = 11020034 order by DataLog desc
select CIOT, NumFormulario,* from ConhecimentosTransporte_log where NumConhecto  = 698115   and CodUF = 'MT'

SELECT 
	ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC',
	CTRC.Sequencial,
	O.DataCriacao,
	APF.Descricao,
	O.NumSeq,
	O.SeqConsulta,
	O.DescricaoOcorrencia,
	O.tipoOcorrencia,
	O.Erro,
	O.CodAdmPagtoFrete,
	O.IdCartaFrete,
	CF.NumOrdemEmbarque

	--CTRC.CodOrdemEmbarque, CTRC.Sequencial,  CTRC.CIOT, O.* 
FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
INNER JOIN AdmPagamentoFrete APF ON APF.CodAdmFrete = O.CodAdmPagtoFrete
WHERE 
CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto in (698115)
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC


select tipoOcorrencia,* from CartaFrete_Ocorrencia where IdCartaFrete = 1505276 and tipoOcorrencia like 'Pendente'



select top (30) * from LONTANO_GSe.dbo.NFSe where CodMunicipioIbge = 5107602 order by DataCriacao desc --where Sequencial in (880000131634)
exec Lontano_gse.dbo.MonitorarNFSe_RO_GO '5107602'

--update LONTANO_GSe.dbo.nfse 
--	set 
--		DataRecebimentoRps = GETDATE(), DataConsultaNfse = GETDATE(), SituacaoProtocolo = 4, NumeroNfse = 84785, Protocolo = '0000084785', 
--		CodigoVerificacao = '7b6900a3b20bd3fca0e8',ValorServicos = 1357.20 , ValorDeducoes = 0.00, ValorPis = 0.00, ValorCofins = 0.00,
--		ValorInss = 0.00 , ValorCsll = 0.00, OutrasRetencoes = 0.00, ValorIss = 67.86	, ValoresNfse_BaseCalculo = 67.86	 , ValoresNfse_Aliquota = 5.00,
--		ValoresNfse_ValorIss = 0.00 , ValoresNfse_ValorLiquidoNfse = 1289.34			,  DataSituacaoProtocolo  = '2023-12-16 14:20:10',
--		DataEmissaoNfse = '2023-12-16 14:20:10'
--	where Sequencial in (880000131704)

select top (30) * from LONTANO_GSe.dbo.NFSe where CodMunicipioIbge = 5107602 order by DataCriacao desc 

--update lontano_gse.dbo.LoteNFSe set SequencialRPS = 131329, status = 1 where ID_NFSe = 105043  



exec VerificaCTe 10000023449
--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 10000023449

select CodVeiculo, * from ConhecimentosTransporte where Sequencial = 160000022569
--UPDATE ConhecimentosTransporte set CodVeiculo = 114593 where Sequencial = 160000022569
select * from Veiculos where PlacaVeiculo = 'AAA-0000'

select CIOT,* from OrdemEmbarque where NumOrdemEmbarque =11020034
--UPDATE OrdemEmbarque set CIOT = 'REPOM' where NumOrdemEmbarque =11020034


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 118393                               
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete where Id = 1411774
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1411774 AND NumSeq = 47
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 4207658, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1411774 AND NumSeq = 47