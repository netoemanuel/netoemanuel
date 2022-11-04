USE lontano
SELECT *
FROM DiarioBordo 
LEFT OUTER JOIN Feriados ON Feriados.  Data = DiarioBordo.DataCompleta 
WHERE CodMotorista = 44001110 AND MesAno = '2022-05-05'
ORDER BY Dia, HoraInicial

SELECT * FROM  DiarioBordoMotorista where CodMotorista = 44001110 and DataCriacao '2022-06-01' ORDER BY mesano desc

SELECT DiarioBordo.*  FROM DiarioBordo LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordo.DataCompleta WHERE (CodMotorista = 44001110) AND (MesAno = '05/2022') ORDER BY Dia, HoraInicial

SELECT DiarioBordo.*, Feriados.DescFeriado AS DiaSemana
FROM DiarioBordo 
LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordo.DataCompleta
WHERE (CodMotorista = 44001110) AND (MesAno = '06/2022') ORDER BY Dia, HoraInicial
