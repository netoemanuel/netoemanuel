use RODOMAIOR


select Propriedade,* from Veiculos where  propriedade = 'Terceiro' and codveiculo <> 1084043 

SELECT CodVeiculo,CodVeiculoOrigem,* FROM MovimentacaoPneus



select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)


exec MonitoraMDFe 81004318
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 538168
exec MonitoraMDFe 75010281
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 538659
exec MonitoraMDFe 33014598
--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 538278


select Saldo,* from ContasReceber where CodContasReceber = 1175469
--UPDATE ContasReceber set saldo = 0.00 where CodContasReceber = 1175469



exec MonitoraMDFe 18014305

--update RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 538007
