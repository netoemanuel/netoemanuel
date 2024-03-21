use rodomaior


SELECT  Clientes.RazaoSocial AS Emitente, Clientes1.RazaoSocial AS Destinatario, OE.ValorTotal ,
ComplementoConhecimento.ToleranciaQuebra,ComplementoConhecimento.TipoToleranciaQuebra, ComplementoConhecimento.ToleranciaEstadia,Rotas.DescricaoRota AS Rota
FROM ConhecimentosTransporte 
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
INNER Join Clientes ON ConhecimentosTransporte.CodClienteEmitente = Clientes.CodCliente
Inner Join Clientes Clientes1 ON ConhecimentosTransporte.CodClienteDestinatario = Clientes1.CodCliente
JOIN OrdemEmbarque OE ON ConhecimentosTransporte.CodOrdemEmbarque = OE.NumOrdemEmbarque 
LEFT OUTER JOIN ComplementoConhecimento ON NumSeqConhecto = Sequencial
WHERE Sequencial = 910000001413


select TOP(100)* from Motoristas where SituacaoMotorista = 'Ativo' order by DataCriacao asc
select * from Motoristas_Veiculos where CodMotorista = 1000026 -- veiculo 13

select top (100) TipoDespesa,* from GerenciamentoRisco order by DataCriacao desc

select top (100) TipoDespesa,* from OrdemEmbarque order by DataCriacao desc



RP	1017