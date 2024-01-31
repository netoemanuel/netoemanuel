USE RODOMAIOR

SELECT 'CTe COM PROBLEMA' as PROBLEMA, CTe.status, no_retorno, DS_Retorno, CTe.Sequencial, UF, nCT, dhEmi 
FROM RODOMAIOR_GSe.dbo.CTe CTe
JOIN RODOMAIOR_GSe.dbo.CTe_LOG ult on ult.Sequencial = CTe.Sequencial AND ult.ID = (SELECT MAX(u.ID) FROM RODOMAIOR_GSe.dbo.CTe_LOG u WHERE u.Sequencial = CTe.Sequencial)
where CTe.status not in (1,5) AND isnull(ult.cStat,0) <> 735

select * from ConhecimentosTransporte where NumConhecto = 185529 and CodUF = 'MS'
SELECT tpCTe, * FROM RODOMAIOR_GSe.DBO.CTe WHERE  Sequencial IN (220000019771,740000004187,220000019772,10000023819,220000019773)
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 2 where Sequencial IN  (220000019771,740000004187,220000019772,10000023819,220000019773)

exec VerificaCTe 220000019771
SELECT * FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019771)--220000019773) 
--delete FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019771) and ID > 6233770 

exec VerificaCTe 740000004187
SELECT * FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (740000004187)
--delete FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (740000004187) and ID > 6232849 

exec VerificaCTe 220000019772
SELECT * FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019772)
--delete FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019772) and ID > 6233776 

exec VerificaCTe 10000023819
SELECT * FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (10000023819)
--delete FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (10000023819) and ID > 6309256 

exec VerificaCTe 220000019773
SELECT * FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019773)
--delete FROM RODOMAIOR_GSe.DBO.CTe_LOG WHERE  Sequencial IN  (220000019773) and ID > 6233782 



SELECT tpCTe, Status,* FROM RODOMAIOR_GSe.DBO.CTe WHERE  Sequencial IN (740000004187,220000019773,220000019772,220000019771,10000023819,10000023820,10000023822) 

--blk
--wtf 459
--kill 459
--select * from PontosAuditoria where CodPontoAuditoria = 10

select CodVeiculo,  * from ConhecimentosTransporte where NumConhecto = 185556  and CodUF = 'MS'
--Natigo
select * from Veiculos where CodVeiculo = 316407
select * from ConjuntosVeiculo where CodVeiculo = 316407


--Novo
select * from Veiculos where CodVeiculo = 88902
select * from ConjuntosVeiculo where CodVeiculo = 88902

--insert into ConjuntosVeiculo (CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select 88902,	1,	154936,	154937,	NULL,	NULL,	12451,	'CG',  getdate(),	Null,	null,	NULL,null


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


exec MonitoraMDFe 4036908
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 518577

select * from RODOMAIOR_GSe.dbo.ParcelasPagamentoFrete_MDFe where Sequencial =  518577

--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (518575,518574,518571)