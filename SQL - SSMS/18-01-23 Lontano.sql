SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 125605                                
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select ObsConhecto, * from ConhecimentosTransporte where CodOrdemEmbarque = 99002701
--UPDATE ConhecimentosTransporte set ObsConhecto =  'PAGAMENTO DE SALDO MEDIANTE CARTA FRETE (ou) CIOT E TICKET DE DESCARGA' where Sequencial = 990000001684
select Observacoes, * from OrdemEmbarque where NumOrdemEmbarque = 99002701
--UPDATE OrdemEmbarque set Observacoes = 'PAGAMENTO DE SALDO MEDIANTE CARTA FRETE (ou) CIOT E TICKET DE DESCARGA' where NumOrdemEmbarque = 99002701

select ObsConhecto, * from ConhecimentosTransporte where NumConhecto = 125677
select Observacoes, * from OrdemEmbarque where NumOrdemEmbarque = 99002701


-- verificar mdfe 
EXEC MonitoraMDFe 78030521
select * from rotas where CodRota in (97916,950050)