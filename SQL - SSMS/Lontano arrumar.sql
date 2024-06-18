SELECT * from LONTANO_GSe.dbo.MDFe where Sequencial = 1664968


SELECT top (200)* FROM LONTANO_GSe.dbo.tblLog_operacao order by DT_Hs desc

SELECT * from ConhecimentosTransporte where NumConhecto = 628492 and CodUF = 'GO'
exec VerificaCTe 520000039648
--exec Grava_CTe 520000039648

--DELETE from LONTANO_GSe.dbo.CTe where Sequencial = 520000039648


SELECT * from ConhecimentosTransporte where NumConhecto = 524653 and CodUF = 'MS'

exec VerificaCTe 520000039656


--exec Grava_CTe 520000039656

--DELETE from LONTANO_GSe.dbo.CTe where Sequencial = 520000039656


SELECT * from RequisicaoProdutos where CodRequisicao = 2600753

SELECT * from ItensRequisicaoProdutos where CodRequisicao = 2600753
--UPDATE ItensRequisicaoProdutos set CodProduto = 117102 where CodRequisicao = 2600753 -- 16616

SELECT * from ConhecimentosTransporte where NumConhecto = 716530 and CodUF = 'MT'
EXEC VerificaCTe 500000006706