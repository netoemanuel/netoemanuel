?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!NumOrdemEmbarque, rsDadosPedagio!UF_Origem, rsDadosPedagio!Cidade_Origem, rsDadosPedagio!CodigoIBGE_Origem, rsDadosPedagio!UF_Destino, rsDadosPedagio!Cidade_Destino, rsDadosPedagio!CodigoIBGE_Destino, rsDadosPedagio!DescricaoRota
192.168.0.228\RDMSTD				RODOMAIOR			Rodomaior_GSe					12451									CG             1003844							MG						 Uberaba						3170107								  MG						 Uberaba					 3111804				Uberaba/MG -> Tres Lagoas/MS


exec EmiteContrato 660000019240

SELECT 
		isnull(Rot.UF_Origem,Ori.CodUF) as UF_Origem, 
		isnull(Rot.Cidade_Origem,RotOrig.NomeMunicipioIBGE) as Cidade_Origem, 
		isnull(Rot.CodigoIBGE_Origem,RotOrig.CodMunicipioIBGE) as CodigoIBGE_Origem, 
		isnull(Rot.UF_Destino,Dest.CodUF) as UF_Destino, 
		isnull(Rot.Cidade_Destino,RotDest.NomeMunicipioIBGE) as Cidade_Destino,  
		isnull(Rot.CodigoIBGE_Destino,RotDest.CodMunicipioIBGE) as CodigoIBGE_Destino,  Rotas.DescricaoRota, OE.NumOrdemEmbarque  
FROM 
		OrdemEmbarque OE  
		INNER JOIN Veiculos V ON V.CodVeiculo = OE.CodVeiculo 
		INNER JOIN PedidosFrete PED ON PED.CodPedidoFrete = OE.CodPedidoFrete
		INNER JOIN Rotas ON Rotas.CodRota = PED.CodRota 
		INNER JOIN Cidades Ori ON Ori.CodCidade = Rotas.CodCidadeOrigem 
		INNER JOIN Cidades Dest ON Dest.CodCidade = Rotas.CodCidadeDestino 
		LEFT OUTER JOIN Rotas_Repom Rot ON Rot.CodCidadeOrigem = isnull(Ori.CodCidade_Subor,Ori.CodCidade) 
		and Rot.CodCidadeDestino = isnull(Dest.CodCidade_Subor,Dest.CodCidade)  
		LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e RotOrig ON RotOrig.CodCidade = isnull(Ori.CodCidade_Subor,Ori.CodCidade) 
		LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e RotDest ON RotDest.CodCidade = isnull(Dest.CodCidade_Subor,Dest.CodCidade) 
WHERE 
		OE.NumOrdemEmbarque = 66020305

---------------------------------------------------------------------------------------------------------------------------------------------
		exec MonitoraMDFe 51010367 -- RWF4g48  -- 51230911595217000299580040000306721005549679
--------------------------------------------------------------------------------------------------------------------------------------

select * from ChequesEmitidos where NumeroCheque = 318505
select * from ChequesEmitidos_Log where NumeroCheque = 318505
select * from RelacaoFretes where CodRelacaoFrete = 53000620
select * from RelacaoFretes_Log where CodRelacaoFrete = 53000620
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 53000620
select * from PermissoesAcesso where CodUsuario = 12737 and CodPrograma like '%Relacao%'-- LiberacaoRelacaoFretes

select * from Temp_RegistroAcessoProgramas where CodUsuario = 12737  order by DataAcesso desc-- and DataAcesso BETWEEN '2023-09-05 09:10:36.000' and '2023-09-05 09:20:36.000'