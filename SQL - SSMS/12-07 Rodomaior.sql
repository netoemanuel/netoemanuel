use RODOMAIOR

select * from ConhecimentosTransporte where NumConhecto = 2725	 and CodUF = 'pa'
select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 970000002922
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 970000002922 -- voltar para 1 

select * from ConhecimentosTransporte where NumConhecto = 2726	 and CodUF = 'pa'
select Status, * from RODOMAIOR_GSe.dbo.cte where Sequencial = 970000002923
--update RODOMAIOR_GSe.dbo.cte set Status = 1 where Sequencial = 970000002923 -- voltar para 1

exec VerificaCTe 690000009290  --O elemento 'http://www.portalfiscal.inf.br/cte:CEP' é inválido - O valor '7580001' é inválido dependendo do tipo de dados 'String' - Falha na restrição Pattern.

select * from ConhecimentosTransporte where NumConhecto = 97507 and CodUF = 'GO'

select * from rodomaior.dbo.CTe where Sequencial = 690000009290
--delete from rodomaior.dbo.CTe where Sequencial = 690000009290

--exec Grava_CTe 690000009290


select * from ConhecimentosTransporte where NumConhecto = 179925 and CodUF = 'MS'

exec VerificaCTe 60000043575

select * from ConhecimentosTransporte where NumConhecto = 179933 and CodUF = 'MS'

exec VerificaCTe 60000043577
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 60000043577
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 60000043577  -- 45059110044
exec Grava_CTe 60000043577
--update RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 60000043577