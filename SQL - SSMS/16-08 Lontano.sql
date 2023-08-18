use LONTANO


--blk
--kill 583
--wtf 583
--SELECT COUNT(*) AS Registros FROM OcorrenciasAuditoria WHERE (CodPontoAuditoria = 36) AND (CodChave1 = '2546025') AND (SituacaoOcorrencia = 'Pendente')

EXEC ValidaImagemCTe 'UBL', 1000454
EXEC ValidaImagemCTe 'CG', 58000019
EXEC ValidaImagemCTe 'UBL', 73000442

select * from Clientes_Complemento where codclientematriz = 1000454
select * from clientes where CodCliente = 73000442
select * from Clientes_Complemento where codclientematriz = 1000454
select top(50) CodFilialCriacao, CodUsuarioCriacao, CodClientePagto,  * from ConhecimentosTransporte where CodFilialEmitente = 'UBL'  order by DataEmissao desc

select ObrigaImagemCTePagtoSaldo, * from ParametrosGerais where CodFilial = 'UBL'
select ObrigaImagemCTePagtoSaldo, * from ParametrosGerais_log where CodFilial = 'UBL'


SELECT CASE WHEN PAR.ObrigaImagemCTePagtoSaldo = 'S' AND CliPar.IndObrigaImagemComprovantes = 'S' THEN 'S' ELSE 'N' END AS Validar
FROM ParametrosGerais PAR
LEFT JOIN Clientes_Complemento CliComp ON CodCliente = 1001299
LEFT JOIN Clientes_ParametrosFaturamento CliPar ON CliPar.CodCliente = CliComp.CodClienteMatriz
WHERE PAR.CodFilial = 'UBL'


	select   * from ConhecimentosTransporte_log where NumConhecto = 682928

