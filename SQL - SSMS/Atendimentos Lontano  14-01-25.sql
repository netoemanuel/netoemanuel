select * from Motoristas where CodMotorista = 1106486
select * from Motoristas_Veiculos where CodMotorista = 1106486 ORDER BY DataCadastro desc
select * from Motoristas_Veiculos where CodMotorista = 1106486 and DataCadastro = '2024-12-28 00:00:00'
--delete from Motoristas_Veiculos where CodMotorista = 1106486 and DataCadastro = '2024-12-28 00:00:00'
--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1106486	3554	2024-12-28 00:00:00	NULL	12425	RO	2024-12-28 15:10:49.000	NULL	NULL	NULL	NULL


SELECT * from Motoristas where CodMotorista = 1105002
select * from Veiculos where CodVeiculo = 7215
SELECT * from Motoristas_Veiculos where CodVeiculo = 7215 ORDER BY DataCriacao desc
SELECT * from Motoristas_Veiculos where CodVeiculo = 7215 and CodMotorista = 1105002 AND Observacoes ='Inserido Automaticamente'  
--DELETE from Motoristas_Veiculos where CodVeiculo = 7215 and CodMotorista = 1105002 AND Observacoes ='Inserido Automaticamente'
--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1105002	7215	2025-01-06 00:00:00	Inserido Automaticamente	10477	CG	2025-01-06 13:32:29.793	NULL	NULL	NULL	NULL


SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000173882
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000119
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 115024
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 115023
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 115023
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 115023


SELECT * from Motoristas where CodMotorista = 1105002
select * from Veiculos where CodVeiculo = 925
SELECT * from Motoristas_Veiculos where CodVeiculo = 925 ORDER BY DataCriacao desc
--SELECT * from Motoristas_Veiculos where CodVeiculo = 925 and CodMotorista = 1105002 AND Observacoes ='Inserido Automaticamente'  and DataCriacao ='2025-01-06 13:38:43.183'
--DELETE from Motoristas_Veiculos where CodVeiculo = 925 and CodMotorista = 1105002 AND Observacoes ='Inserido Automaticamente'  and DataCriacao ='2025-01-06 13:38:43.183'
--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1105002	925	2025-01-06 00:00:00	Inserido Automaticamente	10477	CG	2025-01-06 13:38:43.183	NULL	NULL	NULL	NULL