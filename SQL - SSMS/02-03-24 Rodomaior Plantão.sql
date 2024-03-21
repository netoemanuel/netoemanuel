use RODOMAIOR

select CodFornecedor, * from Motoristas where CodMotorista = 57000935
select * from OrdemEmbarque where NumOrdemEmbarque = 57004931 -- 57000414
--UPDATE OrdemEmbarque set CodFornecedor = 1057420 where NumOrdemEmbarque = 57004931

exec MonitoraMDFe 57004931
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 574773


--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update Rodomaior_GSe.dbo.MDFe set status = 0, tpTransp = 2  where CodManifestoCarga = 636806


exec VerificaCTe 410000028845
select * from RODOMAIOR_GSe.dbo.cte where Sequencial = 410000028845
select * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial = 410000028845

select CodMotorista,CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 34025186 -- 15002241 / 38299
select  * from Motoristas where CPF = '018.005.631-08'
select * from Veiculos where PlacaVeiculo = 'SUF4E19'

--UPDATE OrdemEmbarque set CodMotorista = 34004019, CodVeiculo = 167245 where NumOrdemEmbarque = 34025186

select CodMotorista,CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 13018453 -- 13001658 / 87891
select  * from Motoristas where CPF = '928.446.421-87'
select * from Veiculos where PlacaVeiculo = 'AVC3J54'
--UPDATE OrdemEmbarque set CodMotorista = 1068331, CodVeiculo = 167262 where NumOrdemEmbarque = 13018453