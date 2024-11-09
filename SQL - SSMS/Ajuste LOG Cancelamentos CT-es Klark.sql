select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 730000136179
EXEC VerificaCTe 730000136179

select Status,* from LONTANO_GSe.dbo.Eventos_CTe where  CodUsuarioCriacao = 14102 and Status = 0
--DELETE from LONTANO_GSe.dbo.Eventos_CTe where DataCriacao > '2024-10-17 11:04:17.140' and CodUsuarioCriacao = 14102

EXEC VerificaCTe 
EXEC VerificaCTe 730000136429
select Status,* from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 730000136429 and Sequencial = 148271
--DELETE from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 730000136429 and Sequencial = 148271


SELECT DISTINCT ConhecimentosTransporte.Sequencial
--,ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
FROM ConhecimentosTransporte 
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
JOIN LONTANO_GSe.DBO.CTe_LOG CT ON CT.Sequencial = ConhecimentosTransporte.Sequencial
WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481 AND ConhecimentosTransporte.SituacaoConhecto = 'Cancelado' AND CT.cStat = 636
ORDER BY ConhecimentosTransporte.Sequencial

SELECT * from ConhecimentosTransporte where NumConhecto IN (136034) AND CodUF = 'SP'

EXEC VerificaCTe 730000136423

--DELETE from LONTANO_GSe.dbo.CTe_LOG where Sequencial in (730000136423) and ID > 23049048

SELECT Status,* from LONTANO_GSe.dbo.cte where Sequencial = 730000136198
select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 730000136388
--UPDATE LONTANO_GSe.dbo.CTe_LOG set status = 5 where   Sequencial = 730000136199 AND cStat = 636

--insert into LONTANO_GSe.dbo.CTe_LOG values (730000136391,32, 'RETORNO ENVIO EVENTO  CANCELAMENTO','2024-10-17 11:10:04.557',5,null,
--'<?xml version="1.0" encoding="utf-16"?>
--<retEventoCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="4.00" xmlns="http://www.portalfiscal.inf.br/cte">
--	<infEvento>
--		<tpAmb>1</tpAmb>
--		<verAplic>PR-v4.1.6</verAplic>
--		<cOrgao>41</cOrgao>
--		<cStat>135</cStat>
--		<xMotivo>Evento registrado e vinculado a CT-e</xMotivo>
--		<chCTe>41241011455829000790570000002151721002151726</chCTe>
--		<tpEvento>110111</tpEvento>
--		<xEvento>Cancelamento</xEvento>
--		<nSeqEvento>1</nSeqEvento>
--		<dhRegEvento>2024-10-17T12:10:04-03:00</dhRegEvento>
--		<nProt>141240169259477</nProt>
--	</infEvento>
--</retEventoCTe>'

--,'4.00',41,1,'PR-v4.1.6',135,'Evento registrado e vinculado a CT-e',NULL,NULL,NULL,141240169259477,NULL,NULL,'Cancelamento','SOLICITACAO DE KLARK PARA CANCELAMENTO',NULL,NULL,14,110111,'Cancelamento',1,'2024-10-17 11:10:04.000')