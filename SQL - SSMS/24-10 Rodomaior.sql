use RODOMAIOR


exec MonitoraMDFe 66023325


select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 534749

--UPDATE  RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 534749

exec VerificaCTe 10000024372

--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 10000024372

SELECT * FROM FiliaisServidor WHERE (CodFilial = 'RBP')


select TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 546940 --Complemento
--UPDATE  ConhecimentosTransporte set TipoConhecimento = 'Normal'where Sequencial = 10000024196

select * from ConhecimentosTransporte where NumConhecto = 98580 and CodUF = 'GO'


