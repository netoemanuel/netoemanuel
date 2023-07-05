--Atendimento Clovis

SELECT *FROM DiarioBordoSintetico where CodMotorista = 22003551 and '05/21/2023' BETWEEN DataInicial AND DataFinal
-----------------------------------------------------------------------------------------------------------------
--LONTANO -> Evento de MDF-e com Problemas 
select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1476380
select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1472468
select status, * from lontano_gse.dbo.mdfe where sequencial = 1476380
select * from mdfeviagem_ordemembarque where seqviagem= 1363643
exec monitoramdfe 23052264
select * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1476380
--delete from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1476380
select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1476380 and codlog = 51
--delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1476380 and codlog = 51
--EXEC GravaEncerramentoMDFe 23052264, 10001, 'CG','Encerramento Manual'

--select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1463370
--select status, * from lontano_gse.dbo.mdfe where sequencial = 1463370
--select * from mdfeviagem_ordemembarque where seqviagem= 1351282
--exec monitoramdfe 51037256
--select * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1463370
----delete from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1463370
--select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1463370 and codlog = 51
----delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1463370 and codlog = 51
----EXEC GravaEncerramentoMDFe 12037547, 10001, 'CG','Encerramento Manual'

select * from ConhecimentosTransporte where NumConhecto = 382507 and CodUF = 'MG'
exec VerificaCTe 530000154156
exec MonitoraMDFe 16023582
SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC
select status, * from lontano_gse.dbo.eventos_mdfe where Status = 0 
-----------------------------------------------------------------------------------------------------------------
--9685 - Não está gerando CTe
select * from ConhecimentosTransporte where NumConhecto = 382515 and CodUF = 'MG'
exec VerificaCTe 940000057528
--UPDATE LONTANO_GSe.dbo.CTe set Status =0 where Sequencial = 940000057528
-----------------------------------------------------------------------------------------------------------------

--#9688 - ERRO AO EMITIR ORDEM DE CARREGAMENTO - FILIAL RDN
select SituacaoFornecedor, * from Fornecedores where CodFornecedor = 1000001
select SituacaoFornecedor, * from Fornecedores_log where CodFornecedor = 1000001 order BY DataLog desc
select * from Usuarios where CodUsuario = 13091

-----------------------------------------------------------------------------------------------------------------

 --#9687 - TARIFA FRETE EMPRESA INCORRETO - MS 482756
select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 482756 and CodUF = 'MS' --1450.0000
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 113.02 where sequencial = 250000074263
exec VerificaCTe 250000074263

-----------------------------------------------------------------------------------------------------------------
--9693 - Favor autorizar cte 485922
select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 485922 and CodUF = 'MS'
exec VerificaCTe 760000054522
select Status,* from LONTANO_GSe.dbo.cte where Sequencial = 760000054522
--UPDATE LONTANO_GSe.dbo.CTe set Status =1 where Sequencial = 760000054522

-----------------------------------------------------------------------------------------------------------------
 --#9686 - ERRO AO GERAR MDF-E

 exec MonitoraMDFe 31113013

  select * from LONTANO_GSe.dbo.Seguro_MDFe order by DataCriacao desc
 select * from LONTANO_GSe.dbo.Seguro_MDFe where Sequencial = 1477257
 --update LONTANO_GSe.dbo.Seguro_MDFe set nAPol = 02540031100 where Sequencial = 1477257
 --update LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1477257
 select * from LONTANO_GSe.dbo.MDFe where Sequencial = 1477211
 --delete from LONTANO_GSe.dbo.MDFe where Sequencial = 1477211

 -----------------------------------------------------------------------------------------------------------------

 select * from ConhecimentosTransporte where NumConhecto = 382213 and CodUF = 'MS'

 exec VerificaCTe 330000012849

 -----------------------------------------------------------------------------------------------------------------
 --#9696 - Ct-e MT-676783 - Veículo aguardando
  select * from ConhecimentosTransporte where NumConhecto = 676783 and CodUF = 'MT'

 exec VerificaCTe 120000022954
 
 select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial = 120000022954
 -----------------------------------------------------------------------------------------------------------------

  --#9702 - CTE NÃO AUTORIZADO - IE DESTINATARIO NÃO VINCULADA

select * from ConhecimentosTransporte where NumConhecto = 116999 and CodUF = 'SP'

exec VerificaCTe 150000018768
select * from LONTANO_GSe.dbo.CTe where Sequencial = 150000018768 
--delete from LONTANO_GSe.dbo.CTe where Sequencial = 150000018768
 
--exec Grava_CTe 150000018768

-----------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 486050 and CodUF = 'GO'

exec VerificaCTe 520000036997

select * from ConhecimentosTransporte where NumConhecto = 676858   and CodUF = 'MT'

exec VerificaCTe 110000018309
select Status,* from LONTANO_GSe.dbo.CTe where Sequencial = 110000018309
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 520000036997


select * from LONTANO_GSe.dbo.CTe_LOG where id in (21202218,21200748,21200747,21200746,21200742,21200741,21200740,21200734,21200733,21200732,21200728,21200721,
21200720,21200719,21200717,21200716,21200713,21200677,21200676,21200674,21200668,21200667,21200630,21200621,21200620,21200616,21200598,21200596,21200437,21200436,
21200430,21200384,21200382,21200377,21200294,21200292,21200288,21200230) and Sequencial = 110000018309
--delete from LONTANO_GSe.dbo.CTe_LOG where id in (21202218,21200748,21200747,21200746,21200742,21200741,21200740,21200734,21200733,21200732,21200728,21200721,
--21200720,21200719,21200717,21200716,21200713,21200677,21200676,21200674,21200668,21200667,21200630,21200621,21200620,21200616,21200598,21200596,21200437,21200436,
--21200430,21200384,21200382,21200377,21200294,21200292,21200288,21200230,21202229,21202226,21202225) and Sequencial = 110000018309