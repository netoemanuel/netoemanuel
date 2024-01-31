SELECT 
   isnull(Rot.UF_Origem,Ori.CodUF) as UF_Origem
,  isnull(Rot.Cidade_Origem,RotOrig.NomeMunicipioIBGE) as Cidade_Origem
,  isnull(Rot.CodigoIBGE_Origem,RotOrig.CodMunicipioIBGE) as CodigoIBGE_Origem
,  isnull(Rot.UF_Destino,Dest.CodUF) as UF_Destino
,  isnull(Rot.Cidade_Destino,RotDest.NomeMunicipioIBGE) as Cidade_Destino
,  isnull(Rot.CodigoIBGE_Destino,RotDest.CodMunicipioIBGE) as CodigoIBGE_Destino
,  Rotas.DescricaoRota, OE.NumOrdemEmbarque 
FROM
	OrdemEmbarque OE  
	INNER JOIN Veiculos V ON V.CodVeiculo = OE.CodVeiculo 
	INNER JOIN PedidosFrete PED ON PED.CodPedidoFrete = OE.CodPedidoFrete 
	INNER JOIN Rotas ON Rotas.CodRota = PED.CodRota  
	INNER JOIN Cidades Ori ON Ori.CodCidade = Rotas.CodCidadeOrigem 
	INNER JOIN Cidades Dest ON Dest.CodCidade = Rotas.CodCidadeDestino 
	LEFT OUTER JOIN Rotas_Repom Rot ON Rot.CodCidadeOrigem = isnull(Ori.CodCidade_Subor,Ori.CodCidade) and Rot.CodCidadeDestino = isnull(Dest.CodCidade_Subor,Dest.CodCidade) 
	LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e RotOrig ON RotOrig.CodCidade = isnull(Ori.CodCidade_Subor,Ori.CodCidade) 
	LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e RotDest ON RotDest.CodCidade = isnull(Dest.CodCidade_Subor,Dest.CodCidade)  
WHERE
	OE.NumOrdemEmbarque = 66020305

