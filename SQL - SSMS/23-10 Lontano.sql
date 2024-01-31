use LONTANO


exec VerificaCTe 280000176298

--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 280000176298


select * from ConhecimentosTransporte where NumConhecto = 691405 and CodUF = 'MT'

exec VerificaCTe 20000148753


-----------------------------------------------------------------------------------------------------------------------------------------------------------

--select ValorMovimento, * from MovimentacaoBancaria where CodMovBancaria = 25075536 -- 1977.51
--UPDATE MovimentacaoBancaria set ValorMovimento = 1868.28  where CodMovBancaria = 25075536

select ValorMovimento, * from MovimentacaoBancaria where CodMovBancaria = 1546217 -- 3248431.93
--UPDATE MovimentacaoBancaria set ValorMovimento = 2955965.63 where CodMovBancaria = 1546217

--select ValorMovimento, * from MovimentacaoBancaria where CodMovBancaria = 1555198 -- 4238381.66
--UPDATE MovimentacaoBancaria set ValorMovimento = 4238651.73  where CodMovBancaria = 1555198

select ValorMovimento, * from MovimentacaoBancaria where CodMovBancaria = 28210854 -- 2021.38
--UPDATE MovimentacaoBancaria set ValorMovimento = 1694.98  where CodMovBancaria = 28210854

-----------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 691036 and CodUF = 'MT'


select * from Veiculos where CodVeiculo = 575608
select * from ConjuntosVeiculo where CodVeiculo = 575608


select * from Veiculos where CodVeiculo = 32917
select * from ConjuntosVeiculo where CodVeiculo = 32917
-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where CodVeiculo = 66076
select * from ConjuntosVeiculo where CodVeiculo = 66076
-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 502646  and CodUF = 'MS'

exec VerificaCTe 640000058776

select CIOT,*  from OrdemEmbarque where NumOrdemEmbarque = 25113242 -- 0
--update OrdemEmbarque set CIOT = 'REPOM' where NumOrdemEmbarque = 25113242

-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 691322  and CodUF = 'MT'

EXEC MonitoraMDFe 12039404

--DELETE FROM LONTANO_GSe.DBO.MDFe WHERE Sequencial IN (1553577,1553575,1553574)

-----------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 191470  and CodUF = 'PR'

select * from Veiculos where CodVeiculo = 475320
select * from ConjuntosVeiculo where CodVeiculo = 475320
--insert into ConjuntosVeiculo (CodVeiculo,	CodTipoConjunto,	CodVeiculoAdicional1,	CodVeiculoAdicional2,	CodVeiculoAdicional3,	ComprimentoConjunto,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,	CodFilialAlteracao,	DataAlteracao,	CodTipoVeicConj,	Eixos)
--select 475320,	1,	279102,279103,	NULL,	NULL,	14102,	'CG',	getdate(),	NULL,	NULL,	NULL,	1,	NULL
select * from Veiculos where PlacaVeiculo in ('AWQ2B33', 'AWQ2B34' )

EXEC MonitoraMDFe  91054401
-----------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 191649  and CodUF = 'PR'
exec VerificaCTe 640000058828
--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 640000058828

select * from ConhecimentosTransporte where NumConhecto = 691497 and CodUF = 'MT'
exec VerificaCTe 20000148770

select * from ConhecimentosTransporte where NumConhecto = 502747 and CodUF = 'MS'
exec VerificaCTe 330000019173
--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 330000019173


--DECLARE @qtd AS DECIMAL(8,0)
--SELECT @qtd = count(*) FROM CTe where Status = 5 and Sequencial IN (SELECT Sequencial from LONTANO.dbo.ConhecimentosTransporte where SituacaoConhecto <> 'Cancelado')
--select @qtd

--DECLARE @tableHTML NVARCHAR(MAX) ;
--	--Declara variável e seta quantidade de registros
--	DECLARE @qtd AS DECIMAL(8,0)
--	DECLARE @ult AS DATETIME
--SELECT @qtd = COUNT(*), @ult = MAX(case when (UF in ('MT','MS')) then DATEADD(hh,-1,Ult.dhLog) ELSE Ult.dhLog END) 
--	FROM CTe WITH (NOLOCK) 
--	INNER JOIN CTe_LOG Ult WITH (NOLOCK) ON Ult.Sequencial = CTe.Sequencial AND Ult.ID = (SELECT MAX(UltLog.ID) FROM CTe_LOG UltLog WITH (NOLOCK) WHERE UltLog.Sequencial = CTe.Sequencial)
--	WHERE ((DATEDIFF(ss,cte.datacriacao,getdate()) >= 300 AND ISNULL(CTe.Status,0) <> 1 AND ISNULL(CTe.Status,0) <> 5) 
--		OR (CTe.DataCriacao >= (GETDATE()-(5.0000000000000/1440)) AND ISNULL(CTe.Status,0) IN (1,5) AND (DATEDIFF(ss,Ult.dhLog,case when (UF in ('MT','MS')) then Ult.dhLog else DATEADD(hh,-1,Ult.dhLog) end) >= 300)) )  ;

--		select @qtd

--exec MASTER.dbo.ProcuraObjetos 'LONTANO_GSe', 'send', 'Tudo'

--select * from LONTANO_GSe.dbo.Eventos_MDFe where Status = 0
-----------------------------------------------------------------------------------------------------------------------------------------------------------

--select ValorAdiantamento,* from ConhecimentosTransporte where NumConhecto = 12828  and CodUF = 'MS'
 --UPDATE ConhecimentosTransporte set ValorAdiantamento = null where Sequencial = 730000132399

-----------------------------------------------------------------------------------------------------------------------------------------------------------
 select ValorNF, SeguroAverbado, * from ConhecimentosTransporte where NumConhecto = 602629 and CodUF = 'GO' 
 --UPDATE  ConhecimentosTransporte set ValorNF = 115150.98, SeguroAverbado = 57.57 where Sequencial = 740000013555

 -----------------------------------------------------------------------------------------------------------------------------------------------------------

 blk

SELECT DataAquisicao,* FROM Veiculos WHERE CodVeiculo = 3806