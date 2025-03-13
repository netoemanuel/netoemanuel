select --COUNT(*) 

    --cte.Sequencial,cte.ID 'Chave CTe'
	-- cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status  -- CT-e
    cte.ID 'Chave CTe'
    --, isnull(ped.IndExportacao,'') 'Exp'
    --, ct.SituacaoConhecto 'Situação CTRC'
    --, ct.TipoConhecimento 'Tipo CTRC'
from OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\XMLs Faltantes 2021.xlsx','SELECT * FROM [Não veio XML$A1:P10000]') P 
JOIN LONTANO_GSe.dbo.CTe cte ON P.Chave = cte.ID COLLATE Latin1_General_CI_AS
--JOIN ConhecimentosTransporte CT ON cte.Sequencial = CT.Sequencial
--JOIN NotasFiscaisConhecimento NF ON CT.Sequencial = nf.SequencialConhecimento-- AND nf.Sequencial = 1
--JOIN Rotas on rotas.CodRota = CT.CodRota
--JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
--LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
--JOIN PedidosFrete ped ON ped.CodPedidoFrete = CT.CodPedidoFrete
--JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto
--JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto
--JOIN LONTANO_GSe.dbo.NFe NFe ON NFe.ID = NF.ChaveAcessoNFe
-- JOIN OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\XML Cte faltantes - 2 trimestre 2024.xlsx','SELECT * FROM [Abril$A1:P10000]') P ON P.[Chave CT-e] = cte.ID COLLATE Latin1_General_CI_AS
--where
--CT.DataEmissao BETWEEN '2024-04-01' AND '2024-04-30 23:59:29' 
-- 	and CT.SerieConh	ecto = '0' 


--EXEC VerificaCTe 550000015139  --RO-12767


--SELECT * from LONTANO_GSe.dbo.CTe where ID = '31210212056600000584550040000158651100050126'

select * from ConhecimentosTransporte where NumConhecto = 302267 and CodUF = 'MG'

SELECT * from LONTANO_GSe.dbo.CTe where Sequencial = 530000116647