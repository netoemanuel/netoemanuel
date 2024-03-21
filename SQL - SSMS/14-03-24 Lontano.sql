select * from ConhecimentosTransporte where NumConhecto = 705843  and CodUF = 'MT'
exec VerificaCTe 190000037790

SELECT COUNT(*) AS Registros FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24081954 AND IndNaoCriticarCaramuru = 'S' 
SELECT IndNaoCriticarCaramuru, *  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24081954 AND IndNaoCriticarCaramuru = 'S' 
SELECT (ISNULL(VALORFRETE, 0) + ISNULL(COMPLEMFRETE, 0)) AS ValorFrete, ISNULL(VALORPEDAGIO, 0) AS ValorPedagio, ISNULL(TOMADOR_CGC, '') AS Tomador_CGC, ISNULL(REMETENTE_CGC, '') AS RemetenteCNPJ,
ISNULL(DESTINATARIO_CGC, '') AS DestinatarioCNPJ, ISNULL(EXPEDIDOR_CGC, '') AS ExpedidorCNPJ, ISNULL(RECEBEDOR_CGC, '') AS RecebedorCNPJ, RECEBEDOR_UF, ISNULL(UFOrigem, '') AS UFOrigem, ISNULL(UFDestino, '') AS UFDestino,
ISNULL(PLACA1, '') AS PLACA1, ISNULL(PLACA2, '') AS PLACA2, ISNULL(PLACA3, '') AS PLACA3, ISNULL(PLACA4, '') AS PLACA4 FROM CaramuruControle WHERE (ID = '6001820177')
select CodControleCaramuru, * from PedidosFrete where CodPedidoFrete = 24003501
--UPDATE  PedidosFrete set CodControleCaramuru = null  where CodPedidoFrete = 24003501
select *  FROM CaramuruControle WHERE (ID = '6001820177')
select *  FROM CaramuruControle WHERE (ID = '6001820429')
select * from ConhecimentosTransporte where NumConhecto = 515794  and CodUF = 'MS'
select ValorAdiantamento,TarifaFreteMotorista, * from ConhecimentosTransporte_log where NumConhecto = 515794  and CodUF = 'MS'


select * from MovimentacaoBancaria where CodMovBancaria = 1571761
--UPDATE MovimentacaoBancaria set CodContaBancaria = 31 where CodMovBancaria = 1571761