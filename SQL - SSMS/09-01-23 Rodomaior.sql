use RODOMAIOR


exec MonitoraMDFe 96003663
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 557317
select * from veiculos where PlacaVeiculo = 'SFA0J38' --151501
select * from ConjuntosVeiculo where CodVeiculo = 151501

select CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 65004125 --148365
--UPDATE OrdemEmbarque set CodVeiculo = 151501 where NumOrdemEmbarque = 65004125 

select * from Temp_BaixasMultiplas
--delete from Temp_BaixasMultiplas where Situacao = 'Agendada PAG-FOR'

select * from ConhecimentosTransporte where NumConhecto = 109094 and CodUF = 'GO'
exec VerificaCTe 800000007168
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 800000007168
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial = 800000007168

exec Grava_CTe 800000007168