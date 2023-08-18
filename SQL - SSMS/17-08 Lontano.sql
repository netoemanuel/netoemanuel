use LONTANO


select * from Usuarios where NomeUsuario like '%Klark%'

select Situacao,* from OrdemEmbarque where NumOrdemEmbarque = 91052222

--update OrdemEmbarque set Situacao = 1 where NumOrdemEmbarque = 91052222
SELECT COUNT(*) AS Registros FROM Clientes_Complemento WHERE CodClienteMatriz = 1016013


SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 1504752)
SELECT * FROM Lontano_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 1504752)

select * from Cidades where NomeCidade like '%Mojuí%dos%Campos%'
SELECT * FROM Lontano_GSe.dbo.Cidades_e WHERE (CodMunicipioIBGE = 1504752)
--insert into Rodomaior_GSe.dbo.Cidades_e values (1504752, 'Mojuí dos Campos', 15, null, 12563,'CG', GETDATE(), null,null,null)

select * from Cidades where CodCidade = 77917
select * from Usuarios where CodUsuario = 20035

SELECT COUNT(*) AS Registros FROM PedidosFrete P INNER JOIN Clientes_Complemento C ON C.CodCliente = P.CodClientePagamento WHERE (P.CodPedidoFrete = 91007879) AND (C.CodClienteMatriz = 1016013) 