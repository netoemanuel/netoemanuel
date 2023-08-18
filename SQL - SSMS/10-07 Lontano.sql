use lontano


exec VerificaCTe 530000154169
exec Grava_CTe 530000154169
select tpCTe,* from LONTANO_GSe.dbo.cte where Sequencial = 530000154169
--delete from LONTANO_GSe.dbo.cte where Sequencial = 530000154169


--------------------------------------------------------------------------------------------------------

select * from Lontano_gse.DBO.DistribuicaoDFe where SchemaXML = 'procNFe_v4.00.xsd' AND dhResp >= getdate()-100 order by dhResp desc
SELECT top(1000) * FROM Lontano_gse.dbo.DownloadDFe_Chave d where Situacao <> 'Processado' and (erro not like '%217-%' and erro not like '%640-%')  order by DataCriacao desc

SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC


-- Atendimentos à usuário(a): Bianca Mayara com e-mail direcionado a GS com Assunto: "ERRO- IMPORTAR NF".
-- CAP 2191445
--31230704224679000315550010000269021074222882
--CAP 2191400
--51230733337122008020550030001771491310769223
--CAP 2191468
--51230703128979001229550010000095321005867222
--CAP 2191526
--51230703128979001229550010000095671005867228

select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1479439