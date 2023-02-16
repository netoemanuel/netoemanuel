 SELECT DISTINCT 
		 ConhecimentosTransporte . CodUF ,  ConhecimentosTransporte . NumConhecto ,  Rotas . DescricaoRota , 
		  Clientes . RazaoSocial ,  ConhecimentosTransporte . CodClientePagto ,  ConhecimentosTransporte . CodNaturezaCarga , 
		  NaturezaCarga . DescNaturezaCarga ,  ConhecimentosTransporte . CodRota ,  Veiculos . PlacaVeiculo ,  ConhecimentosTransporte . SituacaoConhecto ,
		  ConhecimentosTransporte . Sequencial ,  Cidades2 . NomeCidade ,  Cidades2 . CodUF ,  ConhecimentosTransporte . IndFaturaComplemento ,  Clientes . CodTipoCliente ,
		  Temp_RelConhectosNaoFaturados . DataTroca ,  Temp_RelConhectosNaoFaturados . CodRelacaoFrete ,  Temp_RelConhectosNaoFaturados . Fornecedor ,  Clientes1 . RazaoSocial ,
		 Clientes_Complemento . CodClienteMatriz ,  ComplementoConhecimento . DataPagtoSaldo ,  HistoricoConhecimento . SeqConhecto ,  ConhecimentosTransporte . DataEmissao , 
		 Temp_RelConhectosNaoFaturados . DataPagamento ,  RelacaoFretes . CodSituacao ,  Temp_RelConhectosNaoFaturados . Valor 
 FROM  
		(((((((((( LONTANO . dbo . ConhecimentosTransporte   ConhecimentosTransporte  
		INNER JOIN  LONTANO . dbo . Rotas   Rotas  ON  ConhecimentosTransporte . CodRota = Rotas . CodRota ) 
		INNER JOIN  LONTANO . dbo . Clientes   Clientes  ON  ConhecimentosTransporte . CodClientePagto = Clientes . CodCliente ) 
		INNER JOIN  LONTANO . dbo . NaturezaCarga   NaturezaCarga  ON  ConhecimentosTransporte . CodNaturezaCarga = NaturezaCarga . CodNaturezaCarga ) 
		INNER JOIN  LONTANO . dbo . Veiculos   Veiculos  ON  ConhecimentosTransporte . CodVeiculo = Veiculos . CodVeiculo ) 
		LEFT OUTER JOIN  LONTANO . dbo . Temp_RelConhectosNaoFaturados   Temp_RelConhectosNaoFaturados  ON  ConhecimentosTransporte . Sequencial = Temp_RelConhectosNaoFaturados . NumSeqConhecto )
		LEFT OUTER JOIN  LONTANO . dbo . HistoricoConhecimento   HistoricoConhecimento  ON  ConhecimentosTransporte . Sequencial = HistoricoConhecimento . SeqConhecto ) 
		LEFT OUTER JOIN  LONTANO . dbo . ComplementoConhecimento   ComplementoConhecimento  ON  ConhecimentosTransporte . Sequencial = ComplementoConhecimento . NumSeqConhecto )
		LEFT OUTER JOIN  LONTANO . dbo . RelacaoFretes   RelacaoFretes  ON  Temp_RelConhectosNaoFaturados . CodRelacaoFrete = RelacaoFretes . CodRelacaoFrete ) 
		INNER JOIN  LONTANO . dbo . Cidades   Cidades2  ON  Clientes . CodCidade = Cidades2 . CodCidade ) 
		INNER JOIN  LONTANO . dbo . Clientes_Complemento   Clientes_Complemento  ON  Clientes . CodCliente = Clientes_Complemento . CodCliente ) 
		INNER JOIN  LONTANO . dbo . Clientes   Clientes1  ON  Clientes_Complemento . CodClienteMatriz = Clientes1 . CodCliente 
 WHERE 
		 ConhecimentosTransporte . SituacaoConhecto ='Emitido' 
		 AND  Clientes . CodTipoCliente <>4
		 AND  Temp_RelConhectosNaoFaturados . Valor <>0



		 SELECT ConhecimentosTransporte.NumConhecto, TarifaFreteEmpresa, QuantidadeSaida, ConhecimentosTransporte.UnidadeFrete, ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.ValorTotalFrete 
		 FROM ConhecimentosTransporte 
		 INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo 
		 INNER JOIN Clientes ON Clientes.CodCliente = ConhecimentosTransporte.CodClientePagto
		 INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = CodClientePagto 
		 INNER JOIN Rotas ON Rotas.CodRota = ConhecimentosTransporte.CodRota 
		 INNER JOIN Cidades ON Cidades.CodCidade = Rotas.CodCidadeOrigem 
		 INNER JOIN PedidosFrete ON PedidosFrete.CodPedidoFrete = ConhecimentosTransporte.CodPedidoFrete
		 INNER JOIN Cidades Cidades1 ON Cidades1.CodCidade = Rotas.CodCidadeDestino WHERE (SituacaoConhecto = 'Emitido') AND (ISNULL(IndFaturaComplemento, 'S') = 'S') 
		 AND ConhecimentosTransporte.DataEmissao
		 BETWEEN '01/01/2023 00:00:00' AND '03/07/2023 23:59:29' 
		 and ConhecimentosTransporte.CodFilialComissao = 'UBS'
		 AND (ISNULL(ConhecimentosTransporte.TipoConhecimento, '') <> 'Substituto Contábil')
		 AND (ConhecimentosTransporte.ModeloDocumento = 'CT-e')


--({Veiculos.Propriedade} = 'Próprio' OR {Veiculos.Propriedade} = 'Agregado' OR {Veiculos.Propriedade} = 'Terceiro') AND {Temp_RelConhectosNaoFaturados.CodFilial} = 'CG' AND {Temp_RelConhectosNaoFaturados.CodUsuario} = 13865 AND {Temp_RelConhectosNaoFaturados.DataCriacao} = #02/09/2023 11:43:29# AND {ConhecimentosTransporte.DataEmissao} >= #01/01/2023 00:00:00# AND {ConhecimentosTransporte.DataEmissao} <= #03/07/2023 23:59:29# AND {ConhecimentosTransporte.SituacaoConhecto} <> 'Faturado' AND ({ConhecimentosTransporte.TipoConhecimento} <> 'Substituto Contábil') AND {ConhecimentosTransporte.CodFilialComissao} = 'UBS' AND ({ConhecimentosTransporte.ModeloDocumento} = 'CT-e') AND NOT (({ConhecimentosTransporte.ModeloDocumento} = 'NFS-e' OR {ConhecimentosTransporte.ModeloDocumento} = 'NF Serviço') AND ({ConhecimentosTransporte.TipoConhecimento} = 'Complemento' OR {ConhecimentosTransporte.TipoConhecimento} = 'Substituído'))


--({Veiculos.Propriedade} = 'Próprio' OR {Veiculos.Propriedade} = 'Agregado' OR {Veiculos.Propriedade} = 'Terceiro') AND {Temp_RelConhectosNaoFaturados.CodFilial} = 'CG' AND {Temp_RelConhectosNaoFaturados.CodUsuario} = 13865 AND {Temp_RelConhectosNaoFaturados.DataCriacao} = #02/09/2023 11:43:29# AND {ConhecimentosTransporte.DataEmissao} >= #01/01/2023 00:00:00# AND {ConhecimentosTransporte.DataEmissao} <= #03/07/2023 23:59:29# AND {ConhecimentosTransporte.SituacaoConhecto} <> 'Faturado' AND ({ConhecimentosTransporte.TipoConhecimento} <> 'Substituto Contábil') AND {ConhecimentosTransporte.CodFilialComissao} = 'UBS' AND ({ConhecimentosTransporte.ModeloDocumento} = 'CT-e') AND NOT (({ConhecimentosTransporte.ModeloDocumento} = 'NFS-e' OR {ConhecimentosTransporte.ModeloDocumento} = 'NF Serviço') AND ({ConhecimentosTransporte.TipoConhecimento} = 'Complemento' OR {ConhecimentosTransporte.TipoConhecimento} = 'Substituído'))

select  * from Temp_RelConhectosNaoFaturados

//AND ({Veiculos.Propriedade} = 'Próprio' OR {Veiculos.Propriedade} = 'Agregado' OR {Veiculos.Propriedade} = 'Terceiro') 
//AND {Temp_RelConhectosNaoFaturados.CodFilial} = 'CG' 
//AND {Temp_RelConhectosNaoFaturados.CodUsuario} = 13865 
//AND {Temp_RelConhectosNaoFaturados.DataCriacao} = #02/09/2023 11:43:29# //2023-02-09 11:43:29.000
//AND {ConhecimentosTransporte.DataEmissao} >= #01/01/2022 00:00:00# 
//AND {ConhecimentosTransporte.DataEmissao} <= #03/07/2023 23:59:29# 
//AND {ConhecimentosTransporte.SituacaoConhecto} <> 'Faturado' 
//AND {ConhecimentosTransporte.TipoConhecimento} <> 'Substituto Contábil'
//AND {ConhecimentosTransporte.CodFilialComissao} = 'UBS' 
//AND ({ConhecimentosTransporte.ModeloDocumento} = 'CT-e') 
//AND NOT (({ConhecimentosTransporte.ModeloDocumento} = 'NFS-e' OR {ConhecimentosTransporte.ModeloDocumento} = 'NF Serviço') 
//AND ({ConhecimentosTransporte.TipoConhecimento} = 'Complemento' OR {ConhecimentosTransporte.TipoConhecimento} = 'Substituído'))