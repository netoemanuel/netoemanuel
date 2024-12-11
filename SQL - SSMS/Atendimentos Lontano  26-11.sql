SELECT 
	Sequencial,
	CodMotorista, 
    MesAno, 
    DataInicial, 
    CONVERT(SMALLDATETIME, DATEDIFF(DAY, 0, DataFinal)) AS DataFinal, 
    CodVeiculo, 
    Dia, 
    Jornada, 
    Descanso, 
    Refeicao, 
    Espera, 
    ISNULL(NaoIdentificado, '00:00') AS NaoIdentificado, 
    SeqJornadaOmnilink, 
    ISNULL(Tipo, 'N') AS Tipo, 
    ISNULL(IndConferencia, 'N') AS IndConferencia, 
    DescFeriado AS DiaSemana, 
    DiarioBordoSintetico.Observacoes, 
    DiarioBordoSintetico.CodUsuarioCriacao, 
    DiarioBordoSintetico.CodFilialCriacao, 
    DiarioBordoSintetico.DataCriacao, 
    DiarioBordoSintetico.CodUsuarioAlteracao, 
    DiarioBordoSintetico.CodFilialAlteracao, 
    DiarioBordoSintetico.DataAlteracao, 
    CASE 
        WHEN LEFT(RIGHT('0' + CAST(TotalJornada / 60 AS VARCHAR(3)), 3), 1) = '0' 
        THEN RIGHT('0' + CAST(TotalJornada / 60 AS VARCHAR(2)), 2) 
        ELSE RIGHT('0' + CAST(TotalJornada / 60 AS VARCHAR(3)), 3) 
    END + ':' + RIGHT('0' + CAST(TotalJornada % 60 AS VARCHAR(2)), 2) AS Total
FROM (
    SELECT *, 
           (CAST(SUBSTRING(jornada, 0, CHARINDEX(':', jornada)) AS INT) * 60 + CAST(RIGHT(jornada, 2) AS INT) + 
            CAST(SUBSTRING(Descanso, 0, CHARINDEX(':', Descanso)) AS INT) * 60 + CAST(RIGHT(Descanso, 2) AS INT) + 
            CAST(SUBSTRING(Refeicao, 0, CHARINDEX(':', Refeicao)) AS INT) * 60 + CAST(RIGHT(Refeicao, 2) AS INT) + 
            CAST(SUBSTRING(Espera, 0, CHARINDEX(':', Espera)) AS INT) * 60 + CAST(RIGHT(Espera, 2) AS INT)) AS TotalJornada
    FROM DiarioBordoSintetico
) AS DiarioBordoSintetico
LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordoSintetico.Dia
WHERE 
    CodMotorista = 1106460 
    AND MesAno = '11/2024'
ORDER BY 
    Dia


--SELECT *  FROM DiarioBordoSintetico  WHERE     CodMotorista = 1106460     AND MesAno = '11/2024'
--DELETE FROM DiarioBordoSintetico  WHERE     CodMotorista = 1106460     AND MesAno = '11/2024'


SELECT *  FROM DiarioBordoSintetico  WHERE     CodMotorista = 1106460   ORDER BY Dia desc


select * FROM Colaboradores where NomeColaborador LIKE '%Andressa%'

select *  from EspelhoA52OcorrenciasJornada WHERE CPF = '01854239147' and Data_Inicio_Convertido >= '10/21/2024 00:00:00' and Data_Fim_Convertido <= '11/20/2024 23:59:59'




EXEC GravaJornadaA52DiarioBordo 1106460, '10/21/2024 00:00:00', '11/20/2024 23:59:59', 14102, 'CG'