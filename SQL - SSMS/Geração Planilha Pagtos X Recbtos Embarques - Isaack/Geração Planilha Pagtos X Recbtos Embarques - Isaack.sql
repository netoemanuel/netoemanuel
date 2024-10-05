
--> PLANILHA DE PAGTOS X RECBTOS PARA ISAACK:

declare @ini datetime = '2023-07-01 00:00:00',
		@fim datetime = '2023-12-31 23:59:29'

select  --top(100)
		CodUF AS 'UF', NumConhecto AS 'CTRC'   --, DataEmissao
	  , format(DataEmissao,'dd/MM/yyyy','pt-br') AS 'Emissão'
	  , Situacao AS 'Situação', Tipo AS 'Tipo', CodFilialEmitente AS 'Fil. Emit', CodFilialComissao AS 'Fil. Com', CodRegiao AS 'Cód. Reg', Regiao AS 'Região'
	  , ValorReceberPrevisto AS 'Frete Empresa', ValorPagarPrevisto AS 'Frete Motorista'
	  
	  , CASE WHEN ValorAdtoPago > 0 THEN format(DataPagtoAdto,'dd/MM/yyyy','pt-br') ELSE '' END AS 'Data Pagto Adto'
	  , FORMAT(ValorAdtoPago,'N2','pt-br') AS 'Valor Adto Pago'
	  , CASE WHEN ValorSaldoPago > 0 THEN FORMAT(DataPagtoSaldo,'dd/MM/yyyy','pt-br') ELSE '' END AS 'Data Pagto Saldo'
	  , FORMAT (ValorSaldoPago,'N2','pt-br') AS 'Valor Saldo Pago'

	  , format(DataRecebimento	,'dd/MM/yyyy','pt-br') AS 'Data Recbto', ValorRecebidoFrete AS 'Valor Recebido'

	  , CASE WHEN ValorAdtoPago > 0 THEN DATEDIFF(day,DataPagtoAdto,GETDATE()) ELSE 0 END AS 'Dias Pagto Adto X Recbto'
	  , CASE WHEN ValorSaldoPago > 0 THEN  DATEDIFF(day,DataPagtoSaldo,GETDATE()) ELSE 0 END AS 'Dias Pagto Adto X Recbto'
from RealizadoCTRC_Analitico_ODAIR 
where dataemissao < @ini
	AND Situacao IN ('Emitido','Faturado')
	AND FretePagoReal > '0,00'
	AND ValorRecebidoFrete = '0,00' 
	AND DataRecebimento IS NULL
UNION
select  --top(100)
		CodUF AS 'UF', NumConhecto AS 'CTRC'  --, DataEmissao
	  , format(DataEmissao,'dd/MM/yyyy','pt-br') AS 'Emissão'
	  , Situacao AS 'Situação', Tipo AS 'Tipo', CodFilialEmitente AS 'Fil. Emit', CodFilialComissao AS 'Fil. Com', CodRegiao AS 'Cód. Reg', Regiao AS 'Região'
	  , ValorReceberPrevisto AS 'Frete Empresa', ValorPagarPrevisto AS 'Frete Motorista'

	  , CASE WHEN ValorAdtoPago > 0 THEN format(DataPagtoAdto,'dd/MM/yyyy','pt-br') ELSE '' END AS 'Data Pagto Adto'
	  , FORMAT(ValorAdtoPago,'N2','pt-br') AS 'Valor Adto Pago'
	  , CASE WHEN ValorSaldoPago > 0 THEN FORMAT(DataPagtoSaldo,'dd/MM/yyyy','pt-br') ELSE '' END AS 'Data Pagto Saldo'
	  , FORMAT (ValorSaldoPago,'N2','pt-br') AS 'Valor Saldo Pago'

	  , format(DataRecebimento,'dd/MM/yyyy','pt-br') AS 'Data Recbto', ValorRecebidoFrete AS 'Valor Recebido'

	  , CASE WHEN ValorAdtoPago > 0 THEN DATEDIFF(day,DataPagtoAdto,ISNULL(DataRecebimento,GETDATE())) ELSE 0 END AS 'Dias Pagto Adto X Recbto'
	  , CASE WHEN ValorSaldoPago > 0 THEN DATEDIFF(day,DataPagtoSaldo,ISNULL(DataRecebimento,GETDATE())) ELSE 0 END AS 'Dias Pagto Adto X Recbto'
from RealizadoCTRC_Analitico_ODAIR 
where dataemissao between @ini and @fim
	AND Situacao IN ('Emitido','Faturado')
	AND FretePagoReal > '0,00'
	AND (DataRecebimento IS NULL OR (DataRecebimento IS NOT NULL AND ValorRecebidoFrete > '0,00'))
order by [Emissão]
