select * from Veiculos where PlacaVeiculo = 'AXN-6764'
select * from ConjuntosVeiculo where CodVeiculo = 392101
select * from Motoristas where CPF = '083.737.769-23'

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

select top (50) ChavePIX,* from Fornecedores order by DataCriacao desc
SELECT ChavePIX, * FROM Fornecedores WHERE (CodFornecedor = 4003075)

--update Fornecedores set ChavePIX = '004.850.281-23' WHERE (CodFornecedor = 4003075)


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 195182 and CodUF = 'MS'

exec VerificaCTe 70000017649

--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 70000017649