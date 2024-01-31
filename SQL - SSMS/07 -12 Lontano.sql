({Veiculos.Propriedade} = 'Próprio' OR {Veiculos.Propriedade} = 'Agregado' OR {Veiculos.Propriedade} = 'Terceiro')
AND {Temp_RelConhectosNaoFaturados.CodFilial} = 'CG'
AND {Temp_RelConhectosNaoFaturados.CodUsuario} = 14102 
AND {Temp_RelConhectosNaoFaturados.DataCriacao} = #12/07/2023 09:31:50# AND {ConhecimentosTransporte.DataEmissao} >= #11/01/2023 00:00:00# 
AND {ConhecimentosTransporte.DataEmissao} <= #11/16/2023 23:59:29# AND {ConhecimentosTransporte.CodRota} = 89401
AND {ConhecimentosTransporte.SituacaoConhecto} <> 'Faturado' 
AND ({ConhecimentosTransporte.TipoConhecimento} <> 'Substituto Contábil')


SELECT ConhecimentosTransporte.NumConhecto, TarifaFreteEmpresa, QuantidadeSaida, ConhecimentosTransporte.UnidadeFrete, ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.ValorTotalFrete
FROM ConhecimentosTransporte 
INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo
INNER JOIN Clientes ON Clientes.CodCliente = ConhecimentosTransporte.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = CodClientePagto 
INNER JOIN Rotas ON Rotas.CodRota = ConhecimentosTransporte.CodRota
INNER JOIN Cidades ON Cidades.CodCidade = Rotas.CodCidadeOrigem 
INNER JOIN PedidosFrete ON PedidosFrete.CodPedidoFrete = ConhecimentosTransporte.CodPedidoFrete 
INNER JOIN Cidades Cidades1 ON Cidades1.CodCidade = Rotas.CodCidadeDestino
WHERE (SituacaoConhecto = 'Emitido')
AND (ISNULL(IndFaturaComplemento, 'S') = 'S') 
AND ConhecimentosTransporte.DataEmissao
BETWEEN '11/01/2023 00:00:00' AND '11/16/2023 23:59:29'
AND ConhecimentosTransporte.CodRota = 89401 
AND (ISNULL(ConhecimentosTransporte.TipoConhecimento, '') <> 'Substituto Contábil')

SELECT RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, RelacaoFretes.DataEntradaRelacao, Fornecedores.Nome, Fornecedores.DDD, Fornecedores.Fone1, Fornecedores.CodTipoFornecedor, filreg.NumCol AS CodRegiao FROM ConhecimentosRelacaoFretes INNER JOIN RelacaoFretes ON RelacaoFretes.CodRelacaoFrete =  ConhecimentosRelacaoFretes.CodRelacaoFrete INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor LEFT OUTER JOIN FiliaisParamDespRecFilial filreg ON filreg.CodFilial = Fornecedores.CodFilial WHERE CodTipoPagamento = 2 AND NumSeqConhecto = 430000007053


SELECT TipoConhecimento ,* FROM ConhecimentosTransporte where Sequencial = 470000017749
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Complemento' where Sequencial = 470000017749 -- Complemento


SELECT TipoConhecimento ,SituacaoConhecto,* FROM ConhecimentosTransporte where Sequencial = 430000006600-- and SerieConhecto = 'NE'
--UPDATE  ConhecimentosTransporte SET SituacaoConhecto = 'Substituído' where Sequencial = 430000006600 -- Substituído



SELECT Tipo, Sequencial, Filial, TipoCTe, UF, NumConhecto, DataEmissao, Cliente, Funcionario, Valor, Status, CodStatus, DataHoraAutorizacao, TempoEspera, Ambiente, TipoCTe, Servidor 
FROM Lontano_GSe.dbo.ConsultaCTeNova 
WHERE (DataEmissao BETWEEN '12/07/2023 00:00:00' AND '12/07/2023 23:59:29') 
AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) ORDER BY DataEmissao DESC

exec Grava_CTe 410000051219
exec Grava_CTe 30000156719

--exec Grava_CTe 730000133371
--exec Grava_CTe 730000133372
--exec Grava_CTe 730000133373
--exec Grava_CTe 730000133374
--exec Grava_CTe 730000133375
--exec Grava_CTe 730000133376
--exec Grava_CTe 730000133377
--exec Grava_CTe 730000133378
--exec Grava_CTe 730000133379
--exec Grava_CTe 730000133380
--exec Grava_CTe 730000133381
--exec Grava_CTe 730000133382
--exec Grava_CTe 730000133383
--exec Grava_CTe 310000095620
--exec Grava_CTe 310000095619
--exec Grava_CTe 310000095618
--exec Grava_CTe 310000095617
--exec Grava_CTe 730000133349
--exec Grava_CTe 730000133350
--exec Grava_CTe 730000133351
--exec Grava_CTe 730000133352
--exec Grava_CTe 730000133353
--exec Grava_CTe 730000133354
--exec Grava_CTe 730000133355
--exec Grava_CTe 730000133356
--exec Grava_CTe 730000133357
--exec Grava_CTe 730000133358
--exec Grava_CTe 730000133359
--exec Grava_CTe 730000133360
--exec Grava_CTe 730000133361
--exec Grava_CTe 730000133362
--exec Grava_CTe 730000133363
--exec Grava_CTe 730000133364
--exec Grava_CTe 730000133365
--exec Grava_CTe 730000133366
--exec Grava_CTe 730000133367
--exec Grava_CTe 730000133368
--exec Grava_CTe 730000133369
--exec Grava_CTe 730000133370

exec Grava_CTe 730000133383
exec Grava_CTe 310000095620
exec Grava_CTe 310000095619
exec Grava_CTe 310000095618
exec Grava_CTe 310000095617
