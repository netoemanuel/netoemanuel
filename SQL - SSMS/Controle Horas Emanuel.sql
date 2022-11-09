--    2	 Lontano Transportes Ltda
--    6	 Rodomaior Transportes Ltda
--    7	 Viação Cruzeiro do Sul Ltda
--    8	 Centro Oeste Refrigeração Ltda
--   11	 Eletrônica Concord Ltda.
--   12	 Laércio/TecnoFix - NÃO COBRADAS
--10012	 GS Tecnologia da Informação Ltda
--10013	 Morhena RH

USE CONTROLE

DECLARE @DataInicio as datetime
DECLARE @DataFim as datetime

SET @DataInicio = '2022-07-01 00:00:00'
SET @DataFim = '2022-07-31 23:59:29'

--LONTANO
--EXEC CONTROLE.dbo.EntregaHorarios 28, 2, @DataInicio, @DataFim

--COPAS
--EXEC CONTROLE.dbo.EntregaHorarios 28, 10016, @DataInicio, @DataFim

--RODOMAIOR
--EXEC CONTROLE.dbo.EntregaHorarios 28, 6, @DataInicio, @DataFim

--MADEMAIOR
--EXEC CONTROLE.dbo.EntregaHorarios 28, 10014, @DataInicio, @DataFim

----GS
--EXEC CONTROLE.dbo.EntregaHorarios 28, 10012, @DataInicio, @DataFim

--Morhena 
--EXEC CONTROLE.dbo.EntregaHorarios 28, 10013, @DataInicio, @DataFim

--Centro Oeste
--EXEC CONTROLE.dbo.EntregaHorarios 28, 8, @DataInicio, @DataFim

--Concord
--EXEC CONTROLE.dbo.EntregaHorarios 28, 11, @DataInicio, @DataFim

--Viatur
--EXEC CONTROLE.dbo.EntregaHorarios 28, 10017, @DataInicio, @DataFim

;WITH Horarios(Data, InicioManha, FimManha, InicioTarde, FimTarde)
as
(
	SELECT X.Data, MIN(X.InicioManha) as InicioManha, MAX(X.FimManha) as FimManha , MIN(X.InicioTarde) as InicioTarde, MAX(X.FimTarde) as FimTarde
	FROM 
	(
		select replace(convert(varchar,o.DataInicio,103),'.','-') as Data, 
		CASE WHEN left(convert(varchar,o.DataInicio,108),5) < '13:00' THEN left(convert(varchar,o.DataInicio,108),5) ELSE NULL END as InicioManha,
		CASE WHEN left(convert(varchar,o.DataInicio,108),5) < '13:00' THEN left(convert(varchar,o.DataFim,108),5) ELSE NULL END as FimManha,
		CASE WHEN left(convert(varchar,o.DataInicio,108),5) >= '13:00' THEN left(convert(varchar,o.DataInicio,108),5) ELSE NULL END as InicioTarde,
		CASE WHEN left(convert(varchar,o.DataInicio,108),5) >= '13:00' THEN left(convert(varchar,o.DataFim,108),5) ELSE NULL END as FimTarde			
		from controle.dbo.ctrl_ocorrencia o
		inner JOIN controle.dbo.ctrl_rateio r on r.Id = o.IdRateio
		where o.IdUsuarioCriacao = 28 and o.situacao <> 'Cancelada' and o.DataInicio BETWEEN @DataInicio and @DataFim
	
	) AS X
	GROUP BY X.Data	
)
select *
from Horarios
order BY Data


