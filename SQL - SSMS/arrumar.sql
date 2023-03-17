exec MonitoraMDFe 17026572 
EXEC MonitoraMDFe 78020302
--update LONTANO_GSe.dbo.mdfe set Status = 0 where CodManifestoCarga = 1287988
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 17026572
select * from LONTANO_GSe.dbo.MDFe where CodManifestoCarga = 28004397
select CodVeiculo, * from OrdemEmbarque where CodVeiculo = 286785 order by DataCriacao desc


select CodOrdemEmbarque,* from ConhecimentosTransporte where NumConhecto = 468428 and CodUF = 'MS'
exec VerificaCTe 450000023000 --Rejeicao: Vedado cancelamento se existir MDF-e autorizado para o CT-e [chMDFe: 50230311455829000103580010002369921012878540]
--delete from LONTANO_GSe.dbo.CTe_LOG where id in (20196235,20196234,20196233,20196232,20196219,20196218,20196217,20196216,20196203,20196202) and Sequencial = 450000023000
exec MonitoraMDFe 45025006
select * from LONTANO_GSe.dbo.MDFe_log where CodManifestoCarga = 1287854 order by dhLog desc
--update LONTANO_GSe.dbo.mdfe set Status =0 where CodManifestoCarga =1287854
--update LONTANO_GSe.dbo.mdfe_LOG set cStat = 204 where ID = 22662027


select CodOrdemEmbarque,* from ConhecimentosTransporte where NumConhecto = 566772 and CodUF = 'GO'
exec VerificaCTe 310000088457
--exec Grava_CTe 310000088457
exec VerificaCTe 620000018409


select CodOrdemEmbarque,* from ConhecimentosTransporte where NumConhecto = 661299	and CodUF = 'MT'
exec VerificaCTe 260000020269
--update LONTANO_GSe.dbo.CTe set Status = 1 where Sequencial = 260000020269 
--delete from LONTANO_GSe.dbo.CTe_LOG where ID in (20195010,20195009) and Sequencial = 260000020269

select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1393172
select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1393172
select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1395333
--update LONTANO_GSe.dbo.Eventos_MDFe set Status = 2  where Sequencial_MDFe = 1393172
--update LONTANO_GSe.dbo.Eventos_MDFe set Status = 2  where Sequencial_MDFe = 1395333

exec MonitoraMDFe 27074002 -- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:31230311455829000529580050001650521012879967][NroProtocolo:931230003896792]