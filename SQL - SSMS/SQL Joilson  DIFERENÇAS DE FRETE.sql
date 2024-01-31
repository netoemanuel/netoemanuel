use RODOMAIOR

Declare @DataInicio as varchar(25) set @DataInicio = '2023-07-01 00:00:00'
Declare @DataFim as varchar(25) set @DataFim = '2023-07-31 23:59:29'

SELECT 
	ConhecimentosTransporte.CodUF as 'UF',
	ConhecimentosTransporte.NumConhecto 'CTRC',
	cO.CodUF as 'UF Origem', 
	cD.CodUF as 'UF Destino',
	ConhecimentosTransporte.CodFilialEmitente as 'Filial Emitente',
	ConhecimentosTransporte.QuantidadeSaida as 'Peso',
	FORMAT ((ConhecimentosTransporte.QuantidadeSaida * ConhecimentosTransporte.DiferencaFreteAgregado)/1000, 'N2','pt-br') as 'Diferença (Valor Total)' ,
	FiliaisAgencias.NomeFilial as 'Nome Filial',
	ConhecimentosTransporte.ResponsavelFreteAgregado as 'Cod. Resp Frete Agregado',
	Colaboradores.NomeColaborador as 'Colaborador',
	FORMAT (ConhecimentosTransporte.TarifaFreteMotorista, 'N2','pt-br' ) AS 'Frete Motorista', 
	FORMAT (ConhecimentosTransporte.TarifaFreteEmpresa  , 'N2','pt-br' ) as 'Frete Empresa', 
	ConhecimentosTransporte.DiferencaFreteAgregado as 'Dif Frete Agregado',
	ConhecimentosTransporte.AliquotaICMSFrete  as 'Aliquota ICMS Frete'
FROM  
	RODOMAIOR.dbo.ConhecimentosTransporte ConhecimentosTransporte
	INNER JOIN RODOMAIOR.dbo.FiliaisAgencias FiliaisAgencias ON ConhecimentosTransporte.CodFilialEmitente=FiliaisAgencias.CodFilial
	INNER JOIN RODOMAIOR.dbo.Colaboradores Colaboradores ON ConhecimentosTransporte.ResponsavelFreteAgregado=Colaboradores.CodColaborador
	INNER JOIN PedidosFrete pf ON ConhecimentosTransporte.CodPedidoFrete = pf.CodPedidoFrete 
	INNER JOIN Rotas r ON pf.CodRota = r.CodRota
	INNER JOIN Cidades cO ON cO.CodCidade = r.CodCidadeOrigem
	INNER JOIN Cidades cD ON cD.CodCidade = r.CodCidadeDestino
WHERE  
	ConhecimentosTransporte.DataDigitacaoFreteAgregado BETWEEN  @DataInicio and @DataFim