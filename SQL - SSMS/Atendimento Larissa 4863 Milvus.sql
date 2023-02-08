SELECT * FROM Usuarios WHERE NomeUsuario like 'Larissa%' -- 13006
select ID, Status, * from lontano_nfe.dbo.nfe WHERE codvenda IN (100000589, 100000591) ORDER BY DataCriacao DESC -- WHERE cnf = 00000489
select Status, * from lontano_nfe.dbo.nfe WHERE nNF = 489
SELECT * FROM lontano_gse.dbo.Eventos_Nfe  WHERE ChaveNfe = '51221111455829000286550010000004891000005912'
SELECT  * FROM Vendas WHERE CodVenda = 100000591 
EXEC VerificaNFe 100000591
EXEC GravaNFe 100000591
SELECT * FROM TipoOperacao WHERE (CodTipoOperacao = 5) AND (EmissaoNota = 'S')