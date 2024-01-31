use LONTANO


select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1587344
select * from ConhecimentosTransporte where NumConhecto = 611698 and CodUF = 'GO'



select * from Veiculos where CodVeiculo = 332087
select DataAlteracao, CodUsuarioAlteracao, * from ConjuntosVeiculo where CodVeiculo = 332087


select * from Veiculos where CodVeiculo = 3054



select Propriedade,* from Veiculos where CodTipoVeiculo in (4,5,6, 11, 12) and Propriedade = 'Próprio'

SELECT Colaboradores.CodColaborador, Colaboradores.NomeColaborador, Motoristas_Veiculos.CodMotorista, NomeMotorista, Motoristas_Veiculos.DataCadastro 
FROM Motoristas_Veiculos 
INNER JOIN Motoristas on Motoristas.CodMotorista = Motoristas_Veiculos.CodMotorista 
INNER JOIN Colaboradores ON Colaboradores.CodColaborador = Motoristas_Veiculos.CodColaborador
WHERE CodVeiculo = 3042 
ORDER BY Motoristas_Veiculos.DataCadastro DESC

	
select * from Colaboradores where CodColaborador = 10049

SELECT * FROM Motoristas_Veiculos where CodVeiculo = 3042
SELECT * FROM Motoristas_Veiculos where CodVeiculo = 3054
delete FROM Motoristas_Veiculos where CodVeiculo = 3054

INSERT INTO Motoristas_Veiculos VALUES(1000039, 3054, '01/12/2024 00:00:00', NULL, 14102, 'CG', '01/12/2024 12:32:28', NULL, NULL, NULL,14102)
