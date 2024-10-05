SELECT COUNT(*) AS 'CTE' --264707 CT-es
--ctrc.Sequencial, NF.ChaveAcessoNFe AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status 
from ConhecimentosTransporte ctrc 
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
where nf.DataEmissaoNF BETWEEN '2021-01-01' AND '2023-12-31 23:59:29' 
	--and ctrc.ModeloDocumento = 'CT-e'
	and ctrc.SerieConhecto = '0' 
	and isnull(ped.IndExportacao,'') = 'S'
	and ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
	and ctrc.TipoConhecimento = 'Normal' 



select COUNT(*) AS 'NF'
 --Nf.NumeroNF AS 'NomeArquivo', NF.ChaveAcessoNFe
 
from ConhecimentosTransporte CT 

JOIN NotasFiscaisConhecimento NF ON CT.Sequencial = nf.SequencialConhecimento
 
JOIN Rotas on rotas.CodRota = CT.CodRota

JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor

JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = CT.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = CT.CodPedidoFrete

JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto

JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto

JOIN LONTANO_GSe.dbo.NFe NFe ON NFe.ID = NF.ChaveAcessoNFe

where CT.DataEmissao BETWEEN '2021-01-01' AND '2023-12-31 23:59:29'

and CT.SerieConhecto = '0' 

and isnull(ped.IndExportacao,'') = 'S'

and CT.SituacaoConhecto NOT IN ('Cancelado','Substituído') 

and CT.TipoConhecimento = 'Normal' --245517


--SELECT * FROM Usuarios where CodUsuario =  15091
--select * from ConhecimentosTransporte where NumConhecto = 210458 and CodUF = 'PR'
--EXEC VerificaCTe 470000019126
----exec Grava_CTe 470000019126
--SELECT * from Rotas where CodRota = 111000
--SELECT * from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Poxoréu%'
--SELECT * from LONTANO_GSe.dbo.Cidades_e where CodMunicipioIBGE IN (4101200,5107008)
--SELECT * FROM Cidades where CodCidade = 171102
--SELECT * from LONTANO_GSe.dbo.Cidades_e where CodUsuarioCriacao = 12458
--SELECT * from LONTANO_GSe.dbo.Cidades_e where CodCidade IN (189772,171102)
--select * from LONTANO_GSe.dbo.CTe where Sequencial = 470000019126
--SELECT * from 

--UPDATE Rotas SET CodCidadeOrigem = 189772, CodCidadeDestino = 169060  where CodRota = 111000
--UPDATE Rotas SET CodCidadeOrigem = 189772, CodCidadeDestino = 171102  where CodRota = 111000

SELECT COUNT (*)
from ConhecimentosTransporte CT
join NotasFiscaisConhecimento NFC ON SequencialConhecimento = CT.Sequencial
WHERE ChaveAcessoNFe IS NULL and CT.DataEmissao BETWEEN '2021-01-01' AND '2023-12-31 23:59:29' and SerieConhecto = '0'
