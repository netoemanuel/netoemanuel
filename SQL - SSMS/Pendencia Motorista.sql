use LONTANO


SELECT Motoristas_Veiculos.CodColaborador,Motoristas_Veiculos.CodMotorista, NomeMotorista, Motoristas_Veiculos.DataCadastro
FROM Motoristas_Veiculos 
INNER JOIN Colaboradores ON Colaboradores.CodColaborador = Motoristas_Veiculos.CodColaborador
INNER JOIN Motoristas on Motoristas_Veiculos.CodMotorista = Motoristas.CodMotorista

WHERE CodVeiculo = 999528 ORDER BY Motoristas_Veiculos.DataCadastro DESC



select * from Motoristas_Veiculos where CodVeiculo = 3054
select * from Motoristas_Veiculos where CodVeiculo = 999528

SELECT Motoristas_Veiculos.CodColaborador, 
Colaboradores.NomeColaborador, 
Motoristas_Veiculos.CodMotorista, NomeMotorista, Motoristas_Veiculos.DataCadastro 
FROM Motoristas_Veiculos 
INNER JOIN Motoristas on Motoristas_Veiculos.CodMotorista = Motoristas.CodMotorista 
LEFT JOIN Colaboradores ON Colaboradores.CodColaborador = Motoristas_Veiculos.CodColaborador 
WHERE 
CodVeiculo = 999528 
ORDER BY 
	Motoristas_Veiculos.DataCadastro DESC


	select SituacaoColaborador, CodColaborador,* from Colaboradores

	SELECT COUNT(*) AS Registros FROM Colaboradores WHERE (CodColaborador = 10004 AND SituacaoColaborador <> 'A')  
