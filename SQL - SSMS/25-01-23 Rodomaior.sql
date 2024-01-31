--select (30574.70 - 29389.10)


select Saldo,* from ContasPagar where CodContasPagar = 2006587
--UPDATE ContasPagar set Saldo = 1185.60 where CodContasPagar = 2006587




select * from ConhecimentosTransporte where NumConhecto = 47318 and CodUF = 'MT'

exec VerificaCTe 530000004762

select * from Motoristas where CPF = '572.018.891-68'
select CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 4039134 -- 4008048
--UPDATE OrdemEmbarque set CodMotorista = 4008071 where NumOrdemEmbarque = 4039134