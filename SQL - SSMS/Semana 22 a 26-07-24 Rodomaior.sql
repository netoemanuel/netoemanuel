use RODOMAIOR

SELECT ValorMovimento FROM MovimentacaoBancaria WHERE (CodMovBancaria = 4065740)
SELECT SUM(ValorCheque) AS ValorTotalPago FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 40000066101) AND (CodRelacaoFrete = 4006097)

SELECT ValorMovimento,* FROM MovimentacaoBancaria WHERE (CodMovBancaria = 4065740)
SELECT * FROM ConhecimentosRelFretes_Cheques WHERE (SeqCheque = 40000066101) AND (CodRelacaoFrete = 4006097)
--UPDATE ConhecimentosRelFretes_Cheques set ValorCheque = 1258.61 WHERE (SeqCheque = 40000066101)

SELECT SUM(ValorTotalPago) AS ValorTotalPago FROM ContasPagas WHERE CodMovCaixa = 400065833
SELECT * FROM ContasPagas WHERE CodMovCaixa = 400065833
--UPDATE ContasPagas set ValorTotalPago = 1258.61 WHERE CodMovCaixa = 400065833

SELECT * from ContasPagar where CodContasPagar = 4006096
--UPDATE ContasPagar set Saldo =  0.00 where CodContasPagar = 4006096

SELECT ValorMovimento,* FROM MovimentacaoBancaria_Log WHERE (CodMovBancaria = 4065740)
SELECT * FROM ConhecimentosRelFretes_Cheques_log WHERE (SeqCheque = 40000066101) AND (CodRelacaoFrete = 4006097)


SELECT * FROM FiliaisAgencias WHERE CodFilial = 'igm'

SELECT * FROM RateioContasPagar WHERE (CodContasPagar = 5006276) AND (CodFilial = 'IGM') AND (CodCentroCusto = 1)

select * from CentroCusto where (CodFilial = 'RP')


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 202950                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC



select * from ContasPagar where CodContasPagar = 92000532 -- 2776.95
--UPDATE ContasPagar set Saldo = 279.00  where CodContasPagar = 92000532 


SELECT * from RODOMAIOR_GSe.dbo.NFe where ID = '35240702957104000114550000011508571369173168'


EXEC MonitoraMDFe 41030995
delete  from RODOMAIOR_GSe.dbo.MDFe_LOG where Sequencial = 619657 and ID > 6955969

--delete  from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 619793 


exec VerificaCTe 40000041243
EXEC MonitoraMDFe 51015854

select * FROM RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 613974

--UPDATE RODOMAIOR_GSe.dbo.MDFe_LOG SET nRec ='951240008497844', nProt = '951240008497844' WHERE Sequencial = 613974 and id = 6927515

EXEC MonitoraMDFe 6053412 -- 620462

--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update RODOMAIOR_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 704116


SELECT TarifaFreteMotorista,TotalFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 84276 and CodUF = 'MG' AND SerieConhecto = 0 -- 505.05
--UPDATE ConhecimentosTransporte SET TarifaFreteMotorista = 505.05 where NumConhecto = 84276 and CodUF = 'MG' AND SerieConhecto = 0

SELECT TotalFreteMotorista,ValorTotalFrete,QuantidadeSaida,* from ConhecimentosTransporte where NumConhecto = 568862 and CodUF = 'PR' AND SerieConhecto = 'R' -- 505.05
--UPDATE  ConhecimentosTransporte set ValorTotalFrete = 408.00 , TotalFreteMotorista = 855.00, QuantidadeSaida = 1000 where NumConhecto = 568862 and CodUF = 'PR' AND SerieConhecto = 'R' 

SELECT TOP (100)* from RODOMAIOR_GSe.dbo.AverbacaoFrete order by DataCriacao desc

exec MonitoraMDFe 13019089
--DELETE from RODOMAIOR_GSe.dbo.MDFe WHERE Sequencial IN (620591)


select * FROM Usuarios where NomeUsuario LIKE 'Clóvis%'

select * from InventarioEstoque_Log where CodUsuarioLog = 12451

select * from RODOMAIOR_GSe.dbo.NFe where ID in ('52240714796754001267550100002346121286909993','52240714796754001267550100002346151675323282','52240714796754001267550100002346201004565223', '52240714796754001267550100002347021659933630'
,'52240714796754001267550100002347641996336400','52240714796754001267550100002347621000438699')
select * from RODOMAIOR_GSe.dbo.NFe where ID in ('52240714796754001267550100002347621000438699')
select * from RODOMAIOR_GSe.dbo.NFe where ID in ('52240714796754001267550100002348791016969284','52240714796754001267550100002348801128489730', '52240714796754001267550100002348811370489760')
select TOP (300)* from RODOMAIOR_GSe.dbo.tblLog_operacao order BY DT_Hs desc



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'R' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 568863                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


EXEC MonitoraMDFe 6053414
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update RODOMAIOR_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 705304

--DELETE FROM RODOMAIOR_GSe.dbo.MDFe WHERE Sequencial IN (621164)




SELECT ValorTotalFrete,TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 1383 and CodUF = 'PR' AND SerieConhecto = 'NE' --33.60 / 16.8000
--UPDATE  ConhecimentosTransporte set ValorTotalFrete = 30.00 , TarifaFreteEmpresa = 15.00 where NumConhecto = 1383 and CodUF = 'PR' AND SerieConhecto = 'NE'
