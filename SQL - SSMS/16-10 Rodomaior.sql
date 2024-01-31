use RODOMAIOR

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) AS Registros FROM Rodomaior_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 1504752)
SELECT * FROM Rodomaior_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 1504752)

select * from Cidades where NomeCidade like '%Balneário Rincão%'
SELECT * FROM Rodomaior_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 4220000)
select * from Cidades where CodCidade = 138678
--UPDATE Cidades set CEP_Inicial = '88220-000' where CodCidade = 138678
select * from Cidades where CodCidade = 77917
select * from Usuarios where CodUsuario = 20035
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from Veiculos where PlacaVeiculo = 'NWA4D11'
select * from Veiculos where CodVeiculo = 130523
select * from ConjuntosVeiculo where CodVeiculo = 130523  -- 131818 / 131819 Novos
--original 
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--130523	1	130524	130525	NULL	NULL	12442	TPG	2023-10-07 17:09:38.000	NULL	NULL	NULL	NULL
--update ConjuntosVeiculo set CodVeiculoAdicional1 =131818, CodVeiculoAdicional2 = 131819 where CodVeiculo = 130523

exec MonitoraMDFe 31013581
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 532554
--------------------------------------------------------------------------------------------------------------------------------------------------------------------


select * from FiliaisAgencias where CodFilial = 'RBP'
