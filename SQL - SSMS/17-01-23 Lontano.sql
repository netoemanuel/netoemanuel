use LONTANO

select * from ConhecimentosTransporte where NumConhecto in (197084,196888) and CodUF = 'PR'

exec VerificaCTe 540000015086
exec VerificaCTe 420000017990

--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 420000017990

select * from ConhecimentosTransporte where NumConhecto in (16741) and CodUF = 'PA'
exec VerificaCTe 890000030451

select * from ConhecimentosTransporte where NumConhecto in (699297) and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set DataEmissao = GETDATE (), HoraEmissao =GETDATE ()  where  Sequencial = 730000133855
exec VerificaCTe 730000133855
exec Grava_CTe 730000133855

select * from LONTANO_GSe.dbo.cte where Sequencial = 730000133855
--DELETE from LONTANO_GSe.dbo.cte where Sequencial = 730000133855




EXEC Lontano_GSe.dbo.GeraMDFeViagem 53101621, 14102, 'CG'


exec Grava_MDFe 53101621
EXEC  LONTANO_GSe.dbo.GeraMDFeViagem 53101621, 14102, 'CG'

exec MonitoraMDFe 53101621


delete from LONTANO_GSe.dbo.MDFe where Sequencial = 1591592

select * from ConhecimentosTransporte where CodOrdemEmbarque = 53101621

select  vCarga, * from LONTANO_GSe.dbo.cte where Sequencial in (530000160898,530000160899,530000160900,530000160901)
select ValorNF,* from ConhecimentosTransporte where Sequencial in (530000160898,530000160899,530000160900,530000160901)

select vCarga,*  FROM LONTANO_GSe.dbo.infCTe_MDFe where  in (530000160898,530000160899,530000160900,530000160901)
