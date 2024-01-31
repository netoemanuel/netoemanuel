exec VerificaCTe 240000057217

exec VerificaCTe 980000027922



SELECT
		 DiarioBordoRelatorio.Data, DiarioBordoRelatorio.HoraInicial, DiarioBordoRelatorio.HoraFinal, DiarioBordoRelatorio.Jornada, DiarioBordoRelatorio.Intervalo,
		 DiarioBordoRelatorio.Espera, DiarioBordoRelatorio.Descanso, DiarioBordoRelatorio.Tempo, DiarioBordoRelatorio.CodMotorista, DiarioBordoRelatorio.Dia, DiarioBordoRelatorio.MesAno
FROM  
		 LONTANO.dbo.DiarioBordoRelatorio DiarioBordoRelatorio
WHERE 
		DiarioBordoRelatorio.CodMotorista = 1106216 AND DiarioBordoRelatorio.MesAno = '12/2023'
ORDER BY  
		DiarioBordoRelatorio.Dia

--DiarioBordoRelatorio.CodMotorista = 1106216 AND DiarioBordoRelatorio.MesAno = '12/2023'
--EXEC ResumoDiarioBordo 1106216 , '12/2023', '12/20/2023 00:00:00', '12/20/2023 00:00:00' -- Primeira
--EXEC ResumoDiarioBordo 1106216 , '12/2023', '11/21/2023 00:00:00' , '12/20/2023 00:00:00' --  Segunda
-- RESUMO:



 SELECT 
		DiarioBordoResumos.Tipo, DiarioBordoResumos.Total, DiarioBordoResumos.CodMotorista, DiarioBordoResumos.MesAno, DiarioBordoResumos.Dia, DiarioBordoResumos.Data
FROM   
		LONTANO.dbo.DiarioBordoResumos DiarioBordoResumos
WHERE 
		DiarioBordoResumos.Data='1/12/2023' AND DiarioBordoResumos.CodMotorista=1106216 AND DiarioBordoResumos.MesAno='12/2023' AND DiarioBordoResumos.Dia=1


SELECT  DiarioBordo.CodMotorista, DiarioBordo.Dia, DiarioBordo.MesAno, 'Espera' AS Tipo, -(480 -SUM(ISNULL(DATEDIFF(mi,HoraInicial,HoraFinal),0))) As Total 
From DiarioBordo 
inner join DiarioBordoResumos  on DiarioBordoResumos.CodMotorista = DiarioBordo.CodMotorista
WHERE (DiarioBordo.Tipo = 'J') and DiarioBordoResumos.Data='1/12/2023' AND DiarioBordoResumos.CodMotorista=1106216 AND DiarioBordoResumos.MesAno='12/2023' AND DiarioBordoResumos.Dia=1
GROUP BY  DiarioBordo.Dia,DiarioBordo.CodMotorista, DiarioBordo.MesAno, DiarioBordo.Tipo 


SELECT DISTINCT (Tipo) from DiarioBordo