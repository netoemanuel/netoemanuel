select * from Programas where CodPrograma ='AlterarCAPForaDoPrazo'
select * from Programas where CodPrograma = 'AlterarCRForaDoPrazo'
SELECT * FROM Usuarios where NomeUsuario like '%Emanuel%'
--UPDATE Programas set NomePrograma = 'Alterar CR Fora do Prazo' where CodPrograma = 'AlterarCRForaDoPrazo'
--INSERT INTO Programas VALUES ('AlterarCAPForaDoPrazo','Alterar CAP Fora do Prazo',6,1,'Novo','Acesso Especial','frmContasPagar','Em Produção',10224,NULL,NULL,NULL,10224,'AGD',GETDATE (),NULL,NULL,NULL,NULL,NULL,NULL)
--INSERT INTO Programas VALUES ('AlterarCRForaDoPrazo','Alterar CR Fora do Prazo',6,2,'Novo','Acesso Especial','frmContasReceber','Em Produção',10224,NULL,NULL,NULL,10224,'AGD',GETDATE (),NULL,NULL,NULL,NULL,NULL,NULL)

select * from Programas where CodPrograma = 'AlterarCRForaDoPrazo'
--UPDATE Programas set NomePrograma = 'Alterar CR Fora do Prazo' where CodPrograma = 'AlterarCRForaDoPrazo'

SELECT * from ConhecimentosTransporte where NumConhecto = 651699 and CodUF = 'GO' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET ValorNF = 65087.85 where NumConhecto = 651699 and CodUF = 'GO' and SerieConhecto = '0'

select * from Programas order BY DataCriacao desc



blk