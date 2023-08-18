use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 491956 and CodUF = 'MS'

exec VerificaCTe 580000016654 -- MS-491956  -- 9086176227

--delete from LONTANO_GSe.dbo.cte where Sequencial = 580000016654

--exec Grava_CTe 580000016654

select * from ConhecimentosTransporte where NumConhecto = 491955 and CodUF = 'MS'

exec VerificaCTe 580000016653 -- MS-491955  -- 9086176227

--delete from LONTANO_GSe.dbo.cte where Sequencial = 580000016653

--exec Grava_CTe 580000016653
--------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 681845 and CodUF = 'MT'

exec VerificaCTe 10000022579 

select tpCTe, tpImp, tpEmis,* from LONTANO_GSe.dbo.cte where Sequencial = 10000022579



blk

KILL 412