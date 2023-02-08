SELECT * FROM ComboBox_ComprasEstoque WHERE NomeComboBox like '%Produto%'

select DISTINCT TipoProduto from Produtos

select TipoProduto, * from Produtos where CodProduto = 1481
--update Produtos set TipoProduto = 'Armazenagem' where CodProduto = 1473

select * from PermissoesAcesso where CodUsuario = (Select CodUsuario from Usuarios WHERE NomeUsuario like '%Emanuel%' ) and CodPrograma = 'ManutencaoProdutosArmazenagem' 
----INSERT into PermissoesAcesso VALUES (10137,'ManutencaoProdutosArmazenagem' ,'S','S','S','S','S','S',10125,'COP',GETDATE(),NULL, NULL, NULL,null)
----DELETE from PermissoesAcesso where CodUsuario = (Select CodUsuario from Usuarios WHERE NomeUsuario like '%Emanuel%' ) and CodPrograma = 'ManutencaoProdutosArmazenagem'