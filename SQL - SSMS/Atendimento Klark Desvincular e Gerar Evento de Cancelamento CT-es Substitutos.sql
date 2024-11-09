----CONSULTA TABELA CONHECIMENTOS
--SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte 
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481 ORDER BY ConhecimentosTransporte.DataEmissao




-- UPDATE PARA VOLTAR A SITUAÇÃO DO CT-E DE ORIGEM 

--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Emitido', TipoConhecimento = 'Normal' where Sequencial IN (
--select SeqConhecimentoComplementado FROM ConhecimentosComplementados where SeqConhecimentoComplementar IN(
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
----,ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
--WHERE ConhecimentosTransporte.DataEmissao
--BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481))



--DELETE PARA DESVINCULAR 
--DELETE FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementar IN (
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
--FROM ConhecimentosTransporte
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
--WHERE ConhecimentosTransporte.DataEmissao
--BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481)



--GERAR EVENTO DE CANCELAMENTO EM LOTE (PARA RODAR EM LOTE (VARIOS CTES) PRECISA DESABILitar a trigger  IMPEDE_DUPLICIDADE_EVENTOS (TABELA EVENTOS_CTE) E RODAR APENAS 1 VEZ A SQL DE INSERT!!!)

--INSERT INTO LONTANO_GSe.dbo.Eventos_CTe (Sequencial_CTe, versao, Id, cOrgao, tpAmb, CNPJ, chCTe, dhEvento, tpEvento, nSeqEvento, versaoEvento, Status, xJust, xEvento, nProt, CodUsuarioCriacao, CodFilialCriacao, DataCriacao) 
--select CTe.Sequencial, '2.00', 'ID110111'+CTe.ID+right('0'+convert(varchar(2),ISNULL((SELECT COUNT(*) FROM LONTANO_GSe.dbo.Eventos_CTe WHERE Sequencial_CTe = CTe.Sequencial AND tpEvento = '110111'),0)+1),2), 
--CTe.cUF, CTe.tpAmb, CTe.CNPJ, CTe.ID, DATEADD(HH, ISNULL(emit.Fuso, 0), GETDATE()), '110111', ISNULL((SELECT COUNT(*) FROM LONTANO_GSe.dbo.Eventos_CTe WHERE Sequencial_CTe = CTe.Sequencial AND tpEvento = '110111'),0)+1, 
        
        
--'3.00', 0, LONTANO_GSe.dbo.TiraCaracteres('Solicitação de Klark para cancelamento') as xJust, 'Cancelamento' as xEvento, CTe.NO_Protocolo, 14102, 'CG', GETDATE()
        
--From LONTANO_GSe.dbo.CTe CTe INNER JOIN  LONTANO_GSe.dbo.tblEmitentes emit on emit.NO_CNPJ = CTe.CNPJ
--Where CTe.Sequencial  in (
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
----,ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte 
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481 AND ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado')





--MELHORAR SQL ANTES DE RODAR, FAZER VALIDÇAÃO CONFORME BOTÃO!!!!
--UPDTAE CONFORME BOTÃO EXCLUIR COMPLEMENTO PARA ZERAR VALORES  

--UPDATE ConhecimentosTransporte set BaseCalculoICMS = 0, ValorICMSFrete = 0,AliquotaICMSFrete = 0 ,ValorICMSFrete = 0 WHERE Sequencial in(
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
--FROM ConhecimentosTransporte 
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo 
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
--INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga 
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/10/2024 23:59:29' AND Clientes_Complemento.CodClienteMatriz = 7000481
--AND ConhecimentosTransporte.BaseCalculoICMS < 0  AND ConhecimentosTransporte.ValorICMSFrete < 0)







