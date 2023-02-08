use LONTANO
select * from Motoristas where CodMotorista = 2006536 -- Raimundo Aparecido da Silva
select * from Veiculos where CodVeiculo =  72623
select * from Motoristas_Veiculos where CodVeiculo =  72623
select * from Motoristas_Veiculos where CodMotorista = 2006536 and DataCriacao  = '2023-01-05 07:59:02.00'
--delete from Motoristas_Veiculos where CodMotorista = 2006536 and DataCriacao  = '2023-01-05 07:59:02.00'


--CodMotorista	CodVeiculo	DataCadastro		Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao			CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--	2006536		72623		2023-01-05 00:00:00		NULL		14162					RO		2023-01-05 07:59:02.000			NULL				NULL			NULL



	