use LONTANO

EXEC VerificaCTe 310000099147
EXEC VerificaCTe 10000024637

SELECT * from Usuarios where NomeUsuario LIKE 'Klark%'

select * from ConhecimentosTransporte WHERE NumConhecto = 705420 and CodUF = 'MT'
select * from ConhecimentosTransporte WHERE NumConhecto = 708180 and CodUF = 'MT'
SELECT * from ConhecimentosComplementados where 20000152471 IN (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--insert into ConhecimentosComplementados (SeqConhecimentoComplementar,SeqConhecimentoComplementado,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,IndComplementoPeso)
--SELECT 20000152471,20000152045,11792,'CG','2024-04-04 00:00:00',null,null,null,null

select * from ConhecimentosTransporte WHERE NumConhecto = 705413 and CodUF = 'MT'
select * from ConhecimentosTransporte WHERE NumConhecto = 708181 and CodUF = 'MT'
SELECT * from ConhecimentosComplementados where 20000152472 IN (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--insert into ConhecimentosComplementados (SeqConhecimentoComplementar,SeqConhecimentoComplementado,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,IndComplementoPeso)
--SELECT 20000152472,20000152043,11792,'CG','2024-04-04 00:00:00',null,null,null,null

select * from ConhecimentosTransporte WHERE NumConhecto = 705417 and CodUF = 'MT'
select * from ConhecimentosTransporte WHERE NumConhecto = 708182 and CodUF = 'MT'
SELECT * from ConhecimentosComplementados where 20000152473 IN (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--insert into ConhecimentosComplementados (SeqConhecimentoComplementar,SeqConhecimentoComplementado,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,IndComplementoPeso)
--SELECT 20000152473,20000152044,11792,'CG','2024-04-04 00:00:00',null,null,null,null


select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1203802 

--SELECT Sequencial, CodUF, NumConhecto, DataEmissao, ValorIRRFMotorista, ValorRetidoINSS, ValorRetidoSestSenat, ValorAdiantamento, Outros, Pedagio, QuantidadeSaida, 
--QuantidadeChegada, TotalFreteMotorista, DiferencaFreteAgregado, ValorICMSFrete, IndPagtoDiferenca, UnidadeFrete, SituacaoConhecto, Veiculos.CodVeiculo, ValorQuebraDescontado,
--ValorNF, ConhecimentosTransporte.CodRota, ConhecimentosTransporte.ResponsavelValePedagio, Desconto, TipoConhecimento
--FROM ConhecimentosTransporte
--LEFT JOIN ComplementoConhecimento ON Sequencial = NumSeqConhecto
--INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo
--WHERE (NumConhecto = 620330) AND (SituacaoConhecto <> 'Cancelado') AND ISNULL(IndPagtoDiferenca, '') <> 'Paga' AND ISNULL(IndPagtoDiferenca, '') <> 'Paga Saldo'
--AND DiferencaFreteAgregado IS NOT NULL AND Sequencial NOT IN (SELECT NumSeqConhecto FROM ConhecimentosRelacaoFretes WHERE CodTipoPagamento = 3) 
--AND (ISNULL(ConhecimentosTransporte.TipoConhecimento, '') <> 'Substituto Contábil')


--SELECT Sequencial, CodUF, NumConhecto, DataEmissao, ValorIRRFMotorista, ValorRetidoINSS, ValorRetidoSestSenat, ValorAdiantamento, Outros, Pedagio,  QuantidadeSaida, QuantidadeChegada, TotalFreteMotorista, DiferencaFreteAgregado, ValorICMSFrete, IndPagtoDiferenca, UnidadeFrete, SituacaoConhecto, Veiculos.CodVeiculo, ValorQuebraDescontado, Desconto, ISNULL(BaseCalculoICMS,0) AS BaseCalculoICMS, ISNULL(AliquotaICMSFrete,0) AS AliquotaICMSFrete FROM ConhecimentosTransporte LEFT JOIN ComplementoConhecimento ON Sequencial = NumSeqConhecto INNER JOIN Veiculos ON Veiculos.CodVeiculo = ConhecimentosTransporte.CodVeiculo WHERE (NumConhecto = 620330) AND (CodUF = 'GO') AND (SituacaoConhecto <> 'Cancelado') AND ISNULL(IndPagtoDiferenca,'') <> 'Paga' and ISNULL(IndPagtoDiferenca,'') <> 'Paga Saldo' and DiferencaFreteAgregado IS NOT NULL AND Sequencial NOT IN (SELECT NumSeqConhecto FROM ConhecimentosRelacaoFretes WHERE CodTipoPagamento = 3) AND (ISNULL(ConhecimentosTransporte.TipoConhecimento, '') <> 'Substituto Contábil'


select IndPagtoDiferenca, * from ConhecimentosTransporte where NumConhecto in (620330,620331,620333)  and CodUF = 'GO' AND SerieConhecto = '0' -- Paga
--UPDATE ConhecimentosTransporte SET IndPagtoDiferenca = 'A Pagar'  where NumConhecto in (620330,620331,620333)  and CodUF = 'GO' AND SerieConhecto = '0'

select ValorPago, ValorConferido,* from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1203802 
--UPDATE ConhecimentosRelacaoFretes set ValorConferido =  ValorPago where CodRelacaoFrete = 1203802 

--ValorPago	ValorConferido
--48.91	294.60
--48.76	293.88
--48.76	294.00
--338.10 338.10


--TESTE PENDENCIA
select  ValorDiferenca,* from RelacaoFretes where CodRelacaoFrete = 1203802 
SELECT * FROM RelacaoFretes WHERE (CodRelacaoFrete = 1203802) --26685  --1009347

select SituacaoPedidoCompra,ValorTotalPedido,* from PedidoCompras where CodFornecedor = 1096325-- and SituacaoPedidoCompra
--UPDATE PedidoCompras set SituacaoPedidoCompra = 'Atendimento Total' where CodFornecedor = 1096325

--SELECT CODU  FROM PedidoCompras WHERE (CodPedidoCompra

SELECT * FROM PedidoCompras WHERE (CodPedidoCompra = 26685) --AND (DataPedido >= '06/15/2000') AND (CodUsuarioAprovacao IS NULL) AND (CodUsuarioAprovacaoCoord IS NULL)
--UPDATE  PedidoCompras SET ValorTotalPedido = 45000 WHERE (CodPedidoCompra = 26685)
--UPDATE  PedidoCompras SET CodAprovGerente = 12653 WHERE (CodPedidoCompra = 26685)

	--ALTER TABLE AutorizacaoPagtoMotorista ALTER COLUMN CodMotorista decimal  NULL;