use RODOMAIOR

select * from RODOMAIOR_GSe.dbo.nfe where ID Like '%51231114796754000295550100001632211852563847'
select * from RODOMAIOR_NFe.dbo.nfe where ID Like'%51231114796754000295550100001632211852563847'
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select top (1000)* from RODOMAIOR_GSe.dbo.tblLog_operacao order by DT_Hs desc
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
exec MonitoraMDFe 49006200
select EixosSemParar,* from OrdemEmbarque_log where NumOrdemEmbarque = 49006200
select EixosSemParar,* from OrdemEmbarque where NumOrdemEmbarque = 49006200
--UPDATE OrdemEmbarque set EixosSemParar = 9 where NumOrdemEmbarque = 49006200
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select Gerado, * from MovimentacaoBancaria where CodMovBancaria = 1522444
--UPDATE MovimentacaoBancaria set Gerado = 'N'where CodMovBancaria = 1522444
select Gerado, * from MovimentacaoBancaria where CodMovBancaria = 1522445
--UPDATE MovimentacaoBancaria set Gerado = 'N'where CodMovBancaria = 1522445
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select  * from ConhecimentosTransporte where NumConhecto = 81004  and CodUF = 'PR'

exec VerificaCTe 410000027464

select * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 410000027464
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set xJust = 'MANIFESTO INCORRETO.' where Sequencial_CTe = 410000027464
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 410000027464

exec MonitoraMDFe 79003999
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 546728

