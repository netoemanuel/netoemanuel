exec MonitoraMDFe 83069697  -- atn2b00
 --Outro problema com MDFe
select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1394966
--update lontano_gse.dbo.eventos_mdfe set status = 2 where sequencial_mdfe = 1394966
select status, * from lontano_gse.dbo.mdfe where sequencial = 1394966
select * from mdfeviagem_ordemembarque where seqviagem = 1286956
exec monitoramdfe 53088515


--delete from LONTANO_GSe.dbo.MDFe where Sequencial = 1395970

--exec monitoramdfe 83069630

--exec monitoramdfe 53088603 byf0697
--exec monitoramdfe 78020274 ijv2378

--select * from ConhecimentosTransporte where NumConhecto = 566673
--select status, * from LONTANO_GSe.dbo.CTe where Sequencial = 560000028356
--delete from LONTANO_GSe.dbo.CTe_log where id = 20192600 and Sequencial = 560000028356
--exec VerificaCTe 560000028356

--select * from ConhecimentosTransporte where NumConhecto = 566680 and CodUF = 'GO'

--exec VerificaCTe 440000048549

exec MonitoraMDFe 13007744
--delete from LONTANO_GSe.dbo.MDFe_LOG where id = 22657874 and Sequencial = 1396077

exec MonitoraMDFe 24073283 -- gvh2i08




 select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1392068
--update lontano_gse.dbo.eventos_mdfe set status = 2 where sequencial_mdfe = 1394966
select status,  * from lontano_gse.dbo.mdfe where sequencial = 1392068
select NumOrdemEmbarque,* from mdfeviagem_ordemembarque where seqviagem = 1392068


select * from ConhecimentosTransporte where NumConhecto =99000058

exec MonitoraMDFe 78020274
exec MonitoraMDFe 78020302

exec MonitoraMDFe 22073692

--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 1395688

exec MonitoraMDFe  45025006 -- nrn5a60
exec MonitoraMDFe 35003442  -- 35230311455829000600580060000366061012879917

exec MonitoraMDFe 78020302 -- IJV-2378  -- 50230311455829000103580010002370651012879935


--_________________
exec VerificaNFe 100000640
exec GravaNFe 100000640
select * from Vendas where CodVenda = 100000640

select status,   * from LONTANO_NFe.dbo.nfe where CodVenda = 100000640

update LONTANO_NFe.dbo.nfe set status = 0 where CodVenda = 100000640

