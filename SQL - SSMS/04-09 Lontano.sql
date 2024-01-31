use LONTANO


select NumRelatorioEmbarque, CodPedidoFrete,* from ConhecimentosTransporte where NumConhecto = 99000289 
select NumRelatorioEmbarque, CodPedidoFrete,* from ConhecimentosTransporte_log where NumConhecto = 99000289 


------------------------------------------------------------------------------------------------------------------

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 493574  and CodUF = 'MS' -- 47.7083
--UPDATE  ConhecimentosTransporte set TarifaFreteEmpresa = 42.7083  where Sequencial = 500000005957

select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1518071
