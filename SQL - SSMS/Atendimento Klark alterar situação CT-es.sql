
SELECT DISTINCT ConhecimentosTransporte.Sequencial, SituacaoConhecto,TipoConhecimento
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
WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/22/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido'
AND Clientes_Complemento.CodClienteMatriz = 2002283 ORDER BY ConhecimentosTransporte.Sequencial

--CTes Substitutos Situação = Emitido / Tipo =  Substituto

--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Substituído', TipoConhecimento = 'Substituído' where Sequencial in (
--select SeqConhecimentoComplementar FROM ConhecimentosComplementados where SeqConhecimentoComplementar IN (SELECT DISTINCT ConhecimentosTransporte.Sequencial
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
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/22/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido'
--AND Clientes_Complemento.CodClienteMatriz = 2002283 ))

--CTes Substitutos Situação = Substituído / Tipo =  Substituído

--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Emitido', TipoConhecimento = 'Substituto' where Sequencial in (
--select SeqConhecimentoComplementado FROM ConhecimentosComplementados where SeqConhecimentoComplementar IN (SELECT DISTINCT ConhecimentosTransporte.Sequencial
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
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/22/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido'
--AND Clientes_Complemento.CodClienteMatriz = 2002283 ))


--select SituacaoConhecto, TipoConhecimento,Sequencial  from ConhecimentosTransporte where Sequencial in (
--select SeqConhecimentoComplementado FROM ConhecimentosComplementados where SeqConhecimentoComplementar IN (SELECT DISTINCT ConhecimentosTransporte.Sequencial
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
--WHERE ConhecimentosTransporte.DataEmissao BETWEEN '10/10/2024 00:00:00' AND '10/22/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Emitido'
--AND Clientes_Complemento.CodClienteMatriz = 2002283 ))
