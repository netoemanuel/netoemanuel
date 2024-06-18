

select * from Fatura_Repom where ID = 59 -- valor menor
select * from Fatura_Repom_Itens where IDFatura_REPOM = 59
select (  2268846.55  - 2275351.55) -- -6505.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 59 and ValorTransacao = 6505.00
select * from Fatura_Repom_Itens where IDFatura_REPOM = 59 and ISNULL(LocalQuitacao, '') not IN ('F','P')
select * from Fatura_Repom_Itens where IDFatura_REPOM = 59 and Sequencial_CTRC in (950000005131)
select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial in (950000005131)
EXEC VerificaCTe 950000005131
select * from Fatura_Repom_Itens where IDFatura_REPOM = 59 and Sequencial_CTRC is null


 select * from ContasPagar where CodContasPagar = 1416857
 --UPDATE ContasPagar set ValorDocumento = (ValorDocumento - 6505.00), ValorPagar =  (ValorPagar - 6505.00), Saldo = (Saldo - 6505.00) where CodContasPagar = 1416857
	
 --50240611595217000108580000001207701006829956
 EXEC MonitoraMDFe 2053231

 EXEC MonitoraMDFe 2053188ssssss
 select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 606085




select * from ContratosPagar where CodContrato = 2438
select * from ContratosPagar where CodContrato = 2440
select * from ContratosPagar_Log where CodContrato = 2440



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 10414                                  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from ConhecimentosTransporte where SerieConhecto = 'NE' AND CodUF = 'MS' AND Numconhecto = 10414    
--update ConhecimentosTransporte set NumConhecto = 10414 where sequencial = 80000019555

SELECT * FROM PermissoesAcesso WHERE CodUsuario = 13080-- AND CodUsuarioCriacao = 12451
SELECT * from Usuarios where CodUsuario = 13080
SELECT * from Usuarios where CodUsuario = 122

SELECT * from ConhecimentosTransporte where NumConhecto = 56606 and CodUF = 'MT'

EXEC VerificaCTe 510000012608

--DELETE FROM RODOMAIOR_GSe.dbo.cte where Sequencial = 510000012608

--exec Grava_CTe 510000012608