use RODOMAIOR

select BaseCalcICMSRetido,* from ConhecimentosTransporte where NumConhecto = 3670 and CodUF = 'SC'

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where PlacaVeiculo = 'QCG-7295'

select CodOrdemEmbarque, * from ConhecimentosTransporte where CodVeiculo = 364579 order by DataCriacao desc --  42646 MT

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga, 
CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC',
CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 42646                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where CodVeiculo = 127821
select * from ConjuntosVeiculo  where CodVeiculo = 127821

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

select DataCriacao as Data,* from PermissoesAcesso where CodUsuarioCriacao = 10008 order by DataCriacao desc

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

select  top (500)* from RODOMAIOR_GSe.dbo.tblLog_operacao order by DT_Hs desc