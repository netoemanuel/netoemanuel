SELECT DiarioBordo.*, Feriados.DescFeriado AS DiaSemana 
FROM DiarioBordo 
LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordo.DataCompleta 
WHERE (CodMotorista = 1001490) AND (MesAno = '10/2022') ORDER BY Dia, HoraInicial
SELECT * FROM DiarioBordo WHERE (CodMotorista = 1001490) AND (MesAno = '11/2022') ORDER BY Dia, HoraInicial


--Emanuel (#5087)
select * 
from dbo.DiarioBordoMotorista
where codmotorista = 1001490 and mesano = '11/2022'
order by datacriacao desc, dia, horainicial, horafinal
--update dbo.DiarioBordoMotorista set dia = 30 where sequencial = 5894240
