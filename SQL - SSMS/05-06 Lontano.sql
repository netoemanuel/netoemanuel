use LONTANO
select Status,* from LONTANO_GSe.dbo.cte where Sequencial = 520000039428
SELECT QuantidadeSaida,QuantidadeChegada,* from ConhecimentosTransporte where NumConhecto in (708180,708181,708182) AND CodUF = 'MT' AND SerieConhecto = '0'  
--UPDATE ConhecimentosTransporte SET QuantidadeSaida = QuantidadeChegada  where NumConhecto in (708180,708181,708182) AND CodUF = 'MT' AND SerieConhecto = '0'

SELECT TarifaFreteEmpresa,ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto in (708180,708181,708182) AND CodUF = 'MT' AND SerieConhecto = '0'  
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = ValorTotalFrete  where NumConhecto in (708180,708181,708182) AND CodUF = 'MT' AND SerieConhecto = '0' 


--SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 205488 
--SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 1934709
--exec VerificaCTe 910000047637
--exec Grava_CTe 910000047637
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 530000165604

--select distinct 
--		-- rotas.codrota, rotas.DistanciaGoogleMaps,
--	(isnull(ori2.NomeCidade,ori.NomeCidade)+','+isnull(ori2.CodUF,ori.CodUF)), (isnull(dest2.NomeCidade,dest.NomeCidade)+','+isnull(dest2.CodUF,dest.CodUF))
--	, (isnull(rotas.KmAsfalto,0)+isnull(rotas.KmTerra,0)) KMROTA, rotas.DistanciaGoogleMaps, rotas.DuracaoGoogleMaps, rotas.DataConsultaGoogleMaps
--	, 'EXEC AtualizaRotasGoogleMaps ''' + isnull(ori2.NomeCidade,ori.NomeCidade)+','+isnull(ori2.CodUF,ori.CodUF) + ''', ''' + (isnull(dest2.NomeCidade,dest.NomeCidade)+','+isnull(dest2.CodUF,dest.CodUF)) + '''' AS SQL1 --, @forcaApi=1' AS SQL1
--from ConhecimentosTerceiros ctrc
--join FretesTerceiros ft on ft.CodFreteTerceiro = ctrc.CodFreteTerceiro
--join rotas on rotas.codrota = ft.codrota
--join cidades ori on ori.CodCidade = rotas.CodCidadeOrigem
--left join cidades ori2 on ori2.CodCidade = ori.CodCidade_Subor
--join cidades dest on dest.CodCidade = rotas.CodCidadeDestino
--left join cidades dest2 on dest2.CodCidade = dest.CodCidade_Subor
--where ctrc.DataEmbarque >= '2024-01-01'
--	and (isnull(ori2.NomeCidade,ori.NomeCidade)+','+isnull(ori2.CodUF,ori.CodUF)) <> (isnull(dest2.NomeCidade,dest.NomeCidade)+','+isnull(dest2.CodUF,dest.CodUF))
--	and rotas.dataconsultagooglemaps is null
--order by (isnull(ori2.NomeCidade,ori.NomeCidade)+','+isnull(ori2.CodUF,ori.CodUF)), (isnull(dest2.NomeCidade,dest.NomeCidade)+','+isnull(dest2.CodUF,dest.CodUF))


--SQL1
--EXEC AtualizaRotasGoogleMaps 'Douradina,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Feliz Natal,MT', 'Sao Francisco do Sul,SC'
--EXEC AtualizaRotasGoogleMaps 'Icaraima,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Iguatemi,MS', 'Rolandia,PR'
--EXEC AtualizaRotasGoogleMaps 'Imbituba,SC', 'Campo Grande,MS'
--EXEC AtualizaRotasGoogleMaps 'Imbituba,SC', 'Cuiaba,MT'
--EXEC AtualizaRotasGoogleMaps 'Imbituba,SC', 'Dourados,MS'
--EXEC AtualizaRotasGoogleMaps 'Imbituba,SC', 'Rio Branco do Sul,PR'
--EXEC AtualizaRotasGoogleMaps 'Ipiranga do Norte,MT', 'Uberaba,MG'
--EXEC AtualizaRotasGoogleMaps 'Itaituba,PA', 'Miritituba (Itaituba),PA'
--EXEC AtualizaRotasGoogleMaps 'Itanhanga,MT', 'Itaituba,PA'
--EXEC AtualizaRotasGoogleMaps 'Itanhanga,MT', 'Rondonopolis,MT'
--EXEC AtualizaRotasGoogleMaps 'Ivatuba,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Jandaia do Sul,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Japura,PR', 'Cianorte,PR'
--EXEC AtualizaRotasGoogleMaps 'Laranjeiras do Sul,PR', 'Sao Francisco do Sul,SC'
--EXEC AtualizaRotasGoogleMaps 'Lucas do Rio Verde,MT', 'Uberlandia,MG'
--EXEC AtualizaRotasGoogleMaps 'Luis Eduardo Magalhaes,BA', 'Uberlandia,MG'
--EXEC AtualizaRotasGoogleMaps 'Mandaguaçu,PR', 'Balsas,MA'
--EXEC AtualizaRotasGoogleMaps 'Maringa,PR', 'Assai,PR'
--EXEC AtualizaRotasGoogleMaps 'Maringa,PR', 'Cambe,PR'
--EXEC AtualizaRotasGoogleMaps 'Maringa,PR', 'Japura,PR'
--EXEC AtualizaRotasGoogleMaps 'Maringa,PR', 'Nova Andradina,MS'
--EXEC AtualizaRotasGoogleMaps 'Nova Maringa,MT', 'Rondonopolis,MT'
--EXEC AtualizaRotasGoogleMaps 'Nova Mutum,MT', 'Uberaba,MG'
--EXEC AtualizaRotasGoogleMaps 'Nova Ubirata,MT', 'Rio Verde,GO'
--EXEC AtualizaRotasGoogleMaps 'Novo Mundo,MT', 'Itaituba,PA'
--EXEC AtualizaRotasGoogleMaps 'Novo Mundo,MT', 'Rondonopolis,MT'
--EXEC AtualizaRotasGoogleMaps 'Novo Progresso,PA', 'Itaituba,PA'
--EXEC AtualizaRotasGoogleMaps 'Paiçandu,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Paraiso das Águas,MS', 'Rochedo,MS'
--EXEC AtualizaRotasGoogleMaps 'Paranagua,PR', 'Araguari,MG'
--EXEC AtualizaRotasGoogleMaps 'Paranagua,PR', 'Bandeirantes,MS'
--EXEC AtualizaRotasGoogleMaps 'Paranagua,PR', 'Bandeirantes,MS'
--EXEC AtualizaRotasGoogleMaps 'Paranagua,PR', 'Comodoro,MT'
--EXEC AtualizaRotasGoogleMaps 'Paranapoema,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Paranatinga,MT', 'Paranagua,PR'
--EXEC AtualizaRotasGoogleMaps 'Pitangueiras,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Ponta Grossa,PR', 'Rolandia,PR'
--EXEC AtualizaRotasGoogleMaps 'Primeiro de Maio,PR', 'Jaguapita,PR'
--EXEC AtualizaRotasGoogleMaps 'Rondonopolis,MT', 'Bandeirantes,MS'
--EXEC AtualizaRotasGoogleMaps 'Rondonopolis,MT', 'Bandeirantes,MS'
--EXEC AtualizaRotasGoogleMaps 'Ruropolis,PA', 'Novo Progresso,PA'
--EXEC AtualizaRotasGoogleMaps 'Santa Isabel do Ivai,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Santa Rita do Trivelato,MT', 'São Simao,GO'
--EXEC AtualizaRotasGoogleMaps 'Santarem,PA', 'Sinop,MT'
--EXEC AtualizaRotasGoogleMaps 'Sao Francisco do Sul,SC', 'Rondonopolis,MT'
--EXEC AtualizaRotasGoogleMaps 'Sapezal,MT', 'Guaruja,SP'
--EXEC AtualizaRotasGoogleMaps 'Sapezal,MT', 'Sorriso,MT'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Itaituba,PA'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Itaituba,PA'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Paranagua,PR'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Paranagua,PR'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Rolandia,PR'
--EXEC AtualizaRotasGoogleMaps 'Sorriso,MT', 'Santos,SP'
--EXEC AtualizaRotasGoogleMaps 'Tapira,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Tapurah,MT', 'Santos,SP'
--EXEC AtualizaRotasGoogleMaps 'Terra Boa,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Tuneiras do Oeste,PR', 'Maringa,PR'
--EXEC AtualizaRotasGoogleMaps 'Uberaba,MG', 'Bandeirantes,MS'