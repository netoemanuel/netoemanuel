SELECT DISTINCT ContasReceber.CodContasReceber, ContasReceber.DataEmissao, ContasReceber.CodCliente, Clientes.RazaoSocial, ContasReceber.DataVencimento, ContasReceber.Saldo, ContasReceber.ValorReceber, ContasReceber.Situacao, TiposContasReceber.DescTipoContasRec, ContasReceber.NumDocumento 
FROM
		ConhecimentosTransporte
INNER JOIN 
		ConhecimentosContasReceber ON ConhecimentosTransporte.Sequencial = ConhecimentosContasReceber.NumSeqConhecto 
RIGHT OUTER JOIN 
		ContasReceber ON ConhecimentosContasReceber.CodContasReceber = ContasReceber.CodContasReceber
INNER JOIN
		Clientes ON ContasReceber.CodCliente = Clientes.CodCliente 
INNER JOIN 
		TiposContasReceber ON ContasReceber.CodTipoContasRec = TiposContasReceber.CodTipoContasRec
LEFT OUTER JOIN 
		Clientes_Endereco ON Clientes_Endereco.CodCliente = ContasReceber.CodCliente 
AND
		TipoEndereco = 'Cobrança' 
INNER JOIN 
		Clientes_Complemento ON Clientes.CodCliente = Clientes_Complemento.CodCliente
LEFT OUTER JOIN 
		ConhecimentosTerceiros_ContasReceber ON ContasReceber.CodContasReceber = ConhecimentosTerceiros_ContasReceber.CodContasReceber 
 WHERE 
		(Clientes_Complemento.CodClienteMatriz = 1021004)
 AND
		ContasReceber.Situacao = 'Confirmada' 
 ORDER BY 
		ContasReceber.CodContasReceber


		--com cte / chave
	 SELECT DISTINCT  ContasReceber . CodCliente ,  Cidades . NomeCidade ,  Cidades . CodUF ,  Clientes . RazaoSocial ,  Clientes . DDD ,  Clientes . Fone1 ,  Clientes . Fone2 ,  ContasReceber . CodContasReceber ,  ContasReceber . NumDocumento ,  ContasReceber . DataEmissao ,  ContasReceber . DataVencimento ,  ContasReceber . ValorReceber ,  ContasReceber . Saldo ,  ConhecimentosTransporte . CodUF ,  ConhecimentosTransporte . NumConhecto ,  ConhecimentosTransporte . DataEmissao ,  ConhecimentosTransporte . QuantidadeSaida ,  ConhecimentosTransporte . TarifaFreteEmpresa ,  ContasReceber . Situacao ,  Rotas . DescricaoRota ,  ConhecimentosTransporte . CodRota ,  NotasFiscaisConhecimento . NumeroNF ,  Veiculos . PlacaVeiculo ,  ContasRecebidas . DataRecebimento ,  ConhecimentosTransporte . Sequencial ,  ConhecimentosTransporte . QuantidadeChegada ,  ConhecimentosContasReceber . QuantUtilizadaCalculo ,  ConhecimentosTransporte . QuantChegFaturamento ,  ConhecimentosContasReceber . ValorQuebra ,  ContasRecebidas . TotalRecebido ,  ContasRecebidas . CodMovCaixa ,  ConhecimentosContasReceber . Saldo ,  CTe . Chave 
	 FROM   (((((((( RODOMAIOR . dbo . ConhecimentosTransporte   ConhecimentosTransporte 
	 INNER JOIN  RODOMAIOR . dbo . ConhecimentosContasReceber_Saldo   ConhecimentosContasReceber  ON  ConhecimentosTransporte . Sequencial = ConhecimentosContasReceber . NumSeqConhecto ) 
	 INNER JOIN  RODOMAIOR . dbo . NotasFiscaisConhecimento   NotasFiscaisConhecimento  ON  ConhecimentosTransporte . Sequencial = NotasFiscaisConhecimento . SequencialConhecimento ) 
	 LEFT OUTER JOIN  RODOMAIOR . dbo . Veiculos   Veiculos  ON  ConhecimentosTransporte . CodVeiculo = Veiculos . CodVeiculo )
	 INNER JOIN  RODOMAIOR . dbo . Rotas   Rotas  ON  ConhecimentosTransporte . CodRota = Rotas . CodRota )
	 INNER JOIN  RODOMAIOR . dbo . Clientes   Clientes  ON  ConhecimentosTransporte . CodClientePagto = Clientes . CodCliente ) 
	 LEFT OUTER JOIN  RODOMAIOR . dbo . CTe   CTe  ON  ConhecimentosTransporte . Sequencial = CTe . Sequencial ) 
	 INNER JOIN  RODOMAIOR . dbo . ContasReceber   ContasReceber  ON ( ConhecimentosContasReceber . CodContasReceber = ContasReceber . CodContasReceber ) 
	 AND ( Clientes . CodCliente = ContasReceber . CodCliente ))
	 LEFT OUTER JOIN  RODOMAIOR . dbo . ContasRecebidas   ContasRecebidas  ON  ContasReceber . CodContasReceber = ContasRecebidas . CodContasReceber ) 
	 INNER JOIN  RODOMAIOR . dbo . Cidades   Cidades  ON  Clientes . CodCidade = Cidades . CodCidade 
	 ORDER BY  ContasReceber . CodCliente ,  ContasReceber . CodContasReceber 


		--sem cte
 SELECT DISTINCT  ContasReceber . CodCliente ,  Cidades . NomeCidade ,  Cidades . CodUF ,  Clientes . RazaoSocial ,  Clientes . DDD ,  Clientes . Fone1 ,  Clientes . Fone2 ,  ContasReceber . CodContasReceber ,  ContasReceber . NumDocumento ,  ContasReceber . DataEmissao ,  ContasReceber . DataVencimento ,  ContasReceber . ValorReceber ,  ContasReceber . Saldo ,  ConhecimentosTransporte . CodUF ,  ConhecimentosTransporte . NumConhecto ,  ConhecimentosTransporte . DataEmissao ,  ConhecimentosTransporte . QuantidadeSaida ,  ConhecimentosTransporte . TarifaFreteEmpresa ,  ContasReceber . Situacao ,  Rotas . DescricaoRota ,  ConhecimentosTransporte . CodRota ,  NotasFiscaisConhecimento . NumeroNF ,  Veiculos . PlacaVeiculo ,  ContasRecebidas . DataRecebimento ,  ConhecimentosTransporte . Sequencial ,  ConhecimentosTransporte . QuantidadeChegada ,  ConhecimentosContasReceber . QuantUtilizadaCalculo ,  ConhecimentosTransporte . QuantChegFaturamento ,  ConhecimentosContasReceber . ValorQuebra ,  ContasRecebidas . TotalRecebido ,  ContasRecebidas . CodMovCaixa ,  ConhecimentosContasReceber . Saldo 
 FROM   ((((((( RODOMAIOR . dbo . ConhecimentosTransporte   ConhecimentosTransporte  
 INNER JOIN  RODOMAIOR . dbo . ConhecimentosContasReceber_Saldo   ConhecimentosContasReceber  ON  ConhecimentosTransporte . Sequencial = ConhecimentosContasReceber . NumSeqConhecto ) 
 INNER JOIN  RODOMAIOR . dbo . NotasFiscaisConhecimento   NotasFiscaisConhecimento  ON  ConhecimentosTransporte . Sequencial = NotasFiscaisConhecimento . SequencialConhecimento ) 
 LEFT OUTER JOIN  RODOMAIOR . dbo . Veiculos   Veiculos  ON  ConhecimentosTransporte . CodVeiculo = Veiculos . CodVeiculo ) 
 INNER JOIN  RODOMAIOR . dbo . Rotas   Rotas  ON  ConhecimentosTransporte . CodRota = Rotas . CodRota ) 
 INNER JOIN  RODOMAIOR . dbo . Clientes   Clientes  ON  ConhecimentosTransporte . CodClienteEmitente = Clientes . CodCliente )
 INNER JOIN  RODOMAIOR . dbo . ContasReceber   ContasReceber  ON ( ConhecimentosContasReceber . CodContasReceber = ContasReceber . CodContasReceber ) 
 AND ( Clientes . CodCliente = ContasReceber . CodCliente ))
 LEFT OUTER JOIN  RODOMAIOR . dbo . ContasRecebidas   ContasRecebidas  ON  ContasReceber . CodContasReceber = ContasRecebidas . CodContasReceber ) 
 INNER JOIN  RODOMAIOR . dbo . Cidades   Cidades  ON  Clientes . CodCidade = Cidades . CodCidade 
 ORDER BY  ContasReceber . CodCliente ,  ContasReceber . CodContasReceber 

 -- diferença entre os relatorios - fora o campo da chave
 --LEFT OUTER JOIN  RODOMAIOR . dbo . CTe   CTe  ON  ConhecimentosTransporte . Sequencial = CTe . Sequencial ) 



 --RelConhectosFatClieCTe
 --RelConhectosFaturadosCliente

 SELECT DISTINCT  ContasReceber . CodCliente ,  Cidades . NomeCidade ,  Cidades . CodUF ,  Clientes . RazaoSocial ,  Clientes . DDD ,  Clientes . Fone1 ,  Clientes . Fone2 ,  ContasReceber . CodContasReceber ,  ContasReceber . NumDocumento ,  ContasReceber . DataEmissao ,  ContasReceber . DataVencimento ,  ContasReceber . ValorReceber ,  ContasReceber . Saldo ,  ConhecimentosTransporte . CodUF ,  ConhecimentosTransporte . NumConhecto ,  ConhecimentosTransporte . DataEmissao ,  ConhecimentosTransporte . QuantidadeSaida ,  ConhecimentosTransporte . TarifaFreteEmpresa ,  ContasReceber . Situacao ,  Rotas . DescricaoRota ,  ConhecimentosTransporte . CodRota ,  NotasFiscaisConhecimento . NumeroNF ,  Veiculos . PlacaVeiculo ,  ContasRecebidas . DataRecebimento ,  ConhecimentosTransporte . Sequencial ,  ConhecimentosTransporte . QuantidadeChegada ,  ConhecimentosContasReceber . QuantUtilizadaCalculo ,  ConhecimentosTransporte . QuantChegFaturamento ,  ConhecimentosContasReceber . ValorQuebra ,  ContasRecebidas . TotalRecebido ,  ContasRecebidas . CodMovCaixa ,  ConhecimentosContasReceber . Saldo 
 FROM   ((((((( RODOMAIOR . dbo . ConhecimentosTransporte   ConhecimentosTransporte 
 INNER JOIN  RODOMAIOR . dbo . ConhecimentosContasReceber_Saldo   ConhecimentosContasReceber  ON  ConhecimentosTransporte . Sequencial = ConhecimentosContasReceber . NumSeqConhecto ) 
 INNER JOIN  RODOMAIOR . dbo . NotasFiscaisConhecimento   NotasFiscaisConhecimento  ON  ConhecimentosTransporte . Sequencial = NotasFiscaisConhecimento . SequencialConhecimento )
 LEFT OUTER JOIN  RODOMAIOR . dbo . Veiculos   Veiculos  ON  ConhecimentosTransporte . CodVeiculo = Veiculos . CodVeiculo ) 
 INNER JOIN  RODOMAIOR . dbo . Rotas   Rotas  ON  ConhecimentosTransporte . CodRota = Rotas . CodRota ) 
 INNER JOIN  RODOMAIOR . dbo . Clientes   Clientes  ON  ConhecimentosTransporte . CodClienteEmitente = Clientes . CodCliente ) 
 INNER JOIN  RODOMAIOR . dbo . Cidades   Cidades  ON ( Clientes . CodCidade = Cidades . CodCidade ) AND ( Rotas . CodCidadeOrigem = Cidades . CodCidade )) 
 INNER JOIN  RODOMAIOR . dbo . ContasReceber   ContasReceber  ON ( ConhecimentosContasReceber . CodContasReceber = ContasReceber . CodContasReceber )  AND ( Clientes . CodCliente = ContasReceber . CodCliente )) 
 LEFT OUTER JOIN  RODOMAIOR . dbo . ContasRecebidas   ContasRecebidas  ON  ContasReceber . CodContasReceber = ContasRecebidas . CodContasReceber 
 ORDER BY  ContasReceber . CodCliente ,  ContasReceber . CodContasReceber 

 \GS2000\Relatorios\Financeiro\RelConhectosFaturadosCliente.rpt












		