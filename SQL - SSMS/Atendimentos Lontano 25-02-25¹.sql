SELECT  * FROM ConhecimentosTransporte WHERE NumConhecto = 538881 AND CodUF = 'ms'

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 547323                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC




select ProntuarioCNH,DataCriacao,* from Motoristas where len(ProntuarioCNH) > 9 AND UFProntuario = 'PR' ORDER BY Motoristas.DataCriacao desc

	select ProntuarioCNH,* from Motoristas where CodMotorista = 1106518
	
	select ProntuarioCNH,* from Motoristas where NomeMotorista LIKE 'Weller%Medeiros%Goncalves'
	select CPF,* from Motoristas  where CPF = '031.824.291-54'
	select * from Veiculos where PlacaVeiculo = 'RWA0I51'  --8851
	SELECT * from ConjuntosVeiculo where CodVeiculo = 8851
	select * from Veiculos where PlacaVeiculo = 'QAP0C47'
	select * from Veiculos where PlacaVeiculo = 'QAP0C48'
	select * from Veiculos where PlacaVeiculo = 'QAP0C48'


select * from MovimentacaoBancaria where CodMovBancaria = 1630908
--UPDATE MovimentacaoBancaria SET DataMovimento  = '2025-01-02 00:00:00', DataCaixa = '2025-01-02 00:00:00' where CodMovBancaria = 1630908  --2024-12-31 00:00:00

select * from ConhecimentosTransporte where NumConhecto IN (652465,652463) and CodUF ='GO'

EXEC VerificaCTe 560000030695
--DELETE from LONTANO_GSe.dbo.CTe_LOG WHERE Sequencial = 560000030695 AND ID = 23247985
EXEC VerificaCTe 240000063344
--DELETE from LONTANO_GSe.dbo.CTe_LOG WHERE Sequencial = 240000063344 AND ID = 23247979