use RODOMAIOR

-- Contas a Receber com Atraso.

--SELECT DISTINCT 
--	C.RazaoSocial 'Razão Social'
--	,CR.CodContasReceber 'Num Contas Receber'
--	,CR.DataVencimento 'Data Venc.'
--	,CR.ValorReceber 'Valor'	
--	, DATEDIFF(day,CR.DataVencimento,GETDATE()) AS 'Atraso Vencimento (Dias)' 
--	, CR.VencimentoOriginal 'Venc. Original'
--	,CR.Situacao 'Situação'
--	--,CT.NumConhecto 'CTRC'
--	,CT.DataCriacao 'Data Criação CTRC'
--	,CT.NumConhecto
	
--	,CR. *
--FROM
--	ConhecimentosTransporte CT
--	INNER JOIN clientes C ON C.CodCliente = CT.CodClientePagto
--	INNER JOIN Clientes_Complemento CC ON C.CodCliente = CC.CodClienteMatriz
--	INNER JOIN ContasReceber CR ON CR.CodCliente = CT.CodClientePagto
--WHERE 
--    C.RazaoSocial NOT LIKE '%Cargill%' 
--    --AND C.RazaoSocial NOT LIKE '%LAR%'
--	and CC.CodClienteMatriz NOT IN (1017599, 1015055)
--	and CT.SituacaoConhecto <> 'Cancelado'
--	and CR.CodTipoFatura = 1
--    AND CT.DataCriacao <= GETDATE() - 200
--    AND CR.DataVencimento <= GETDATE() - 30 
--    AND CR.Situacao = 'Confirmada'
--    AND CT.Sequencial 
--	IN (
--        SELECT MIN(Sequencial)  
--        FROM ConhecimentosTransporte
--        GROUP BY CodClientePagto  
--		 )
--ORDER BY
--	CT.DataCriacao DESC
------------------------------------------------------------------------------------------------------------------------------------------------------------

-- versão 1
--Declare @DataInicio as varchar(25) set @DataInicio = '2023-04-01 00:00:00'
--Declare @DataFim as varchar(25) set @DataFim = '2023-10-04 23:59:29'

--SELECT 
--C.RazaoSocial 'Razão Social'
--,CC.CodCliente 'Cod. Cliente'
--,CT.DataEmissao 'Último Embarque'

--FROM Clientes_Complemento CC
--LEFT JOIN	ConhecimentosTransporte CT on CT.CodClientePagto = CC.CodClienteMatriz
--INNER JOIN  clientes C ON C.CodCliente = CT.CodClientePagto
--WHERE 
--    C.RazaoSocial NOT LIKE '%Cargill%' 
--    --AND C.RazaoSocial NOT LIKE '%LAR%'
--	AND CC.CodClienteMatriz NOT IN (1017599, 1015055)
--	AND CT.SituacaoConhecto <> 'Cancelado'
--    AND ct.DataEmissao BETWEEN @DataInicio AND @DataFim 
--    AND CT.Sequencial IN (
--        SELECT MIN(Sequencial)  
--        FROM ConhecimentosTransporte
--        GROUP BY CodClientePagto)
	

SELECT 
C.RazaoSocial 'Razão Social'
,CC.CodCliente 'Cod. Cliente'
,CT.DataEmissao 'Último Embarque'

FROM Clientes_Complemento CC
LEFT JOIN	ConhecimentosTransporte CT on CT.CodClientePagto = CC.CodClienteMatriz
INNER JOIN  clientes C ON C.CodCliente = CT.CodClientePagto
WHERE 
    C.RazaoSocial NOT LIKE '%Cargill%' 
    AND C.RazaoSocial NOT LIKE '%Lar Cooperativa Agroindustrial%'
	AND CC.CodClienteMatriz NOT IN (1017599, 1015055)
	AND CT.SituacaoConhecto <> 'Cancelado'
    AND ct.DataEmissao < GETDATE() -180 --BETWEEN @DataInicio AND @DataFim 
    AND CT.Sequencial IN (
        SELECT MAX(Sequencial)  
        FROM ConhecimentosTransporte
        GROUP BY CodClientePagto)
	AND CC.CodClienteMatriz IN (SELECT MAX(CodCliente)  
        FROM Clientes_Complemento GROUP BY CodClienteMatriz
        )
ORDER BY CT.DataEmissao DESC

----nao pode puxar Cargil ou LAR
----select codclientematriz,* from clientes_complemento where codcliente in ( 1017599, 1015055)
