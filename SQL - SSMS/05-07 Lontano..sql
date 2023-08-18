use LONTANO


select * from Usuarios where NomeUsuario = 'Anderson da Silva Souza'

-------------------------------------------------------------------------------------------

select * from ConjuntosVeiculo where CodVeiculo = 9487

select * from Veiculos where CodVeiculo in (3397,34402,3398)

select * from Veiculos where PlacaVeiculo = 'qaq-9914'

select * from ConjuntosVeiculo where CodVeiculo = 9144
-------------------------------------------------------------------------------------------

select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1478601

select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1478601
select status, * from lontano_gse.dbo.mdfe where sequencial = 1478601
select * from mdfeviagem_ordemembarque where seqviagem= 1365713
exec monitoramdfe 89035742
select * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1476380
--delete from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1476380
select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1476380 and codlog = 51
--delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1476380 and codlog = 51
--EXEC GravaEncerramentoMDFe 23052264, 10001, 'CG','Encerramento Manual'

-------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 382833 and CodUF = 'MG'

select * from ConhecimentosTransporte where NumConhecto in(382826) and CodUF = 'MG'
 --delete  from Lontano_GSe.dbo.cte where Sequencial in (530000154273)

exec Grava_CTe 530000154273
exec VerificaCTe 530000154307  -- 114 : SVC-SP desabilitada pela SEFAZ de Origem.

select Status,tpImp,* from Lontano_GSe.dbo.cte where Sequencial in (530000154307)
  --update  Lontano_GSe.dbo.cte set Status = 0 where Sequencial in (530000154307)
 select Status, tpEmis,UF, * from Lontano_GSe.dbo.CTe WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
  --update Lontano_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
  exec VerificaCTe 80000083810 
  --update Lontano_GSe.dbo.CTe set status = 2 WHERE Sequencial = 470000016902
exec monitoramdfe 23052315
--UPDATE LONTANO_GSe.dbo.mdfe set Status = 0 where Sequencial = 1479060

select * from ConhecimentosTransporte where NumConhecto = 677156 and CodUF = 'MT'

exec VerificaCTe 80000083810

select * from ConhecimentosTransporte where NumConhecto = 486419 and CodUF = 'MT'

exec VerificaCTe 820000009622

exec MonitoraMDFe 82012209 -- qah1832
exec MonitoraMDFe 41057428

select * from ConhecimentosTransporte where NumConhecto = 586517    and CodUF = 'GO'

exec VerificaCTe 510000029643
select Status,* from LONTANO_GSe.dbo.CTe where Sequencial = 510000029643
--delete from LONTANO_GSe.dbo.CTe_LOG where id in (21213541,21213540,21213537,21213242,21213241,21213229,21213133,21213132,21213131,21213118,21213117,21213116,21213041,21213040,21213039,21213033,21213032,21213031,21213013,21213012,21212989,21212985,21212984,21212969) and Sequencial = 510000029643
--delete from LONTANO_GSe.dbo.CTe_LOG where id in( 21213784,21213783,21213780,21213764,21213763,21213760,21213712,21213711,21213708,21213671,21213670,21213667) and Sequencial = 510000029643
--update Lontano_GSe.dbo.CTe set status = 1 WHERE Sequencial = 940000057625

 select Status, tpEmis,UF, * from Lontano_GSe.dbo.MDFe WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
 exec MonitoraMDFe 3177850

 select * from ConhecimentosTransporte where NumConhecto = 382866     and CodUF = 'MG'
--delete from LONTANO_GSe.dbo.CTe_LOG where id in( 21215509,21215508,21215467,21215466,21215455,21215448,21215379,21215376,21215372,21215364,21215363,21215360,21215340,21215339,21215320,21215319,21215239,21215228) and Sequencial = 940000057619
exec VerificaCTe 170000020962
--exec Grava_CTe 940000057619
--delete from LONTANO_GSe.dbo.CTe_LOG where id in(21215866,21215865,21215820,21215819,21215511,21215510,21215469,21215468,21215456,21215449,21215341,21215322,21215321,21215254,21215246 )and sequencial =940000057625 

 select Status, tpEmis,UF, * from Lontano_GSe.dbo.CTe WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)
  --update Lontano_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-05 00:00:01' AND Status NOT IN (1, 5, 9)