use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 586139  and CodUF = 'MT'

exec VerificaCTe 240000053822


--------------------------------------------------------------------------------------------------------
--#9747 - NOVA MDF-e - ALTERAÇÃO DE PLACA QAQ9289 - CT-e 674626

select * from Veiculos where PlacaVeiculo in ('QAB-2775','QAB-2776','QAB-2777')
select * from ConjuntosVeiculo  where CodVeiculo = 9289
select * from ConjuntosVeiculo  where CodVeiculo = 3805
select * from ConjuntosVeiculo  where CodVeiculo = 9289
--update ConjuntosVeiculo set CodVeiculoAdicional1 = 2775, CodVeiculoAdicional2 = 2776 , CodVeiculoAdicional3 = 2777  where CodVeiculo = 9289

exec MonitoraMDFe 22076090  --1477824 Rejeição: Existe MDF-e não encerrado há mais de 5 dias para placa com até 2 UF de percurso informadas [chMDFe Não Encerrada:51230611455829000286580020003418361013620378][NroProtocolo:951230008031087]
--update LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1477890

--------------------------------------------------------------------------------------------------------

--select * from ConhecimentosRelFretes_Cheques crfchq  JOIN ChequesEmitidos cheque ON cheque.Sequencial = crfchq.SeqCheque WHERE cheque.CodFilial = 'CG' and cheque.CodContaBancaria = 35 and cheque.NumeroCheque = 51695206

--------------------------------------------------------------------------------------------------------

select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1475775

--------------------------------------------------------------------------------------------------------

--: #9768 - ERRO NA GERAÇÃO DE MDF-e 14:45
exec MonitoraMDFe 26031866

--------------------------------------------------------------------------------------------------------

exec VerificaNFe 100000700
--exec GravaNFe 100000700
select * from LONTANO_nfe.dbo.NFe where CodVenda = 100000700
--delete from LONTANO_nfe.dbo.NFe where CodVenda = 100000700

--------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 117051 and CodUF = 'SP'
select * from LONTANO_GSe.dbo.CTe where Sequencial =  350000003698

exec VerificaCTe 350000003698