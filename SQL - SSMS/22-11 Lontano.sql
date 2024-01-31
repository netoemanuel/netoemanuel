use LONTANO


select CodIndicadorDiferenca, CodRelacaoFreteDiferenca,* from RelacaoFretes where CodRelacaoFrete = 1198447  -- 3 / 1198925
--UPDATE RelacaoFretes set CodIndicadorDiferenca = 2, CodRelacaoFreteDiferenca = NULL  where CodRelacaoFrete = 1198447 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select CodVeiculo, * from ConhecimentosTransporte where NumConhecto = 694241  and CodUF = 'MT'

--antigo
select * from Veiculos where CodVeiculo = 466077
select * from ConjuntosVeiculo where CodVeiculo = 466077

--novo
select * from Veiculos where CodVeiculo = 347513
select * from ConjuntosVeiculo where CodVeiculo = 347513

exec MonitoraMDFe 50012259
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1570472
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select TipoDispositivoValePedagio,* from OrdemEmbarque where NumOrdemEmbarque = 2162483
--UPDATE OrdemEmbarque set TipoDispositivoValePedagio = 4 where NumOrdemEmbarque = 2162483