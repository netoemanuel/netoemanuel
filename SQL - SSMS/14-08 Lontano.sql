use LONTANO


select status, * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1501181
select status, * from lontano_gse.dbo.mdfe where sequencial = 1505319
select * from mdfeviagem_ordemembarque where seqviagem= 1390678
exec monitoramdfe 23052954
select * from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1505319
--delete from lontano_gse.dbo.eventos_mdfe where sequencial_mdfe = 1505319
select status, * from lontano_gse.dbo.MDFe_LOG where sequencial = 1505319 and codlog = 51
--delete from lontano_gse.dbo.MDFe_LOG where sequencial = 1505319 and codlog = 51
--EXEC GravaEncerramentoMDFe 23052954, 10001, 'CG','Encerramento Manual'

blk
kill 725


select * from ConhecimentosTransporte where NumConhecto = 682278 and CodUF  = 'MT'


select * from ConhecimentosComplementados where 730000131750 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--730000131750	60000027328	14310	CG	2023-08-10 17:07:41.000	NULL	NULL	NULL	N
--delete from ConhecimentosComplementados where 730000131750 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select * from ConhecimentosTransporte where NumConhecto = 682278 and CodUF  = 'MT' -- 730000131735

--UPDATE ConhecimentosTransporte set NumRelatorioEmbarque = 22008213 where Sequencial = 730000131735 -- 22008213

----------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 493015  and CodUF  = 'GO' 
 SELECT
		CTe_Dacte.ObsCartaFrete,CTe_Dacte.NomeEmitente, CTe_Dacte.CNPJ_Emitente, CTe_Dacte.IE_Emitente, CTe_Dacte.EnderecoEmitente, CTe_Dacte.CEP_Emitente, CTe_Dacte.Cidade_Emitente, CTe_Dacte.UF_Emitente, CTe_Dacte.DataEmissao, 
		CTe_Dacte.PlacaCavalo, CTe_Dacte.MarcaCavalo, CTe_Dacte.CidadeCavalo, CTe_Dacte.UFCavalo, CTe_Dacte.PlacaReb1, CTe_Dacte.MarcaReb1, CTe_Dacte.CidadeReb1, CTe_Dacte.UFReb1, CTe_Dacte.PlacaReb2, CTe_Dacte.MarcaReb2, 
		CTe_Dacte.CidadeReb2, CTe_Dacte.UFReb2, CTe_Dacte.PlacaReb3, CTe_Dacte.MarcaReb3, CTe_Dacte.CidadeReb3, CTe_Dacte.UFReb3, CTe_Dacte.ObservacoesCTe, CTe_Dacte.ValorProduto, CTe_Dacte.PesoBruto, CTe_Dacte.Produto,
		CTe_Dacte.Proprietario, CTe_Dacte.EnderecoProprietario, CTe_Dacte.FoneProprietario, CTe_Dacte.CidadeProprietario, CTe_Dacte.UFProprietario, CTe_Dacte.CNPJProprietario, CTe_Dacte.IEProprietario, CTe_Dacte.Origem,
		CTe_Dacte.Destino, CTe_Dacte.NotasFiscais, CTe_Dacte.ToleranciaQuebra, CTe_Dacte.TarifaFreteMotorista, CTe_Dacte.ValorIRRFMotorista, CTe_Dacte.ValorAdiantamento, CTe_Dacte.Desconto, CTe_Dacte.TipoToleranciaFarelo, 
		CTe_Dacte.TipoToleranciaQuebra, CTe_Dacte.Tipo, CTe_Dacte.NumPedidoTransf, CTe_Dacte.NumPedidoCliente, CTe_Dacte.ValorSeguro, CTe_Dacte.ValorRetidoINSS, CTe_Dacte.ValorRetidoSestSenat, CTe_Dacte.DescDesconto,
		CTe_Dacte.NumConhecto, CTe_Dacte.CIOT, CTe_Dacte.ContratoRepom, CTe_Dacte.Extenso_ValorSeguro, CTe_Dacte.Extenso_Adiantamento, CTe_Dacte.Extenso_ValorRetidoSestSenat, CTe_Dacte.Extenso_ValorRetidoINSS,
		CTe_Dacte.Extenso_ValorIRRFMotorista, CTe_Dacte.DescontoTaxaAdm, CTe_Dacte.Extenso_DescontoTaxaAdm, CTe_Dacte.CreditoTarifas, CTe_Dacte.Extenso_CreditoTarifas, CTe_Dacte.MensagemSaldo, CTe_Dacte.Fone_Emitente,
		CTe_Dacte.TipoCIOT, CTe_Dacte.Obs_eFrete, CTe_Dacte.SubCabecalho, CTe_Dacte.NovaContaBancaria, CTe_Dacte.LabelCIOT, CTe_Dacte.ObsCartaFrete
 FROM   
		LONTANO.dbo.CTe_Dacte CTe_Dacte
WHERE	
		CTe_Dacte.Sequencial = 310000076962

select  * from LONTANO_GSe.dbo.CTe where Sequencial = 310000076962
select ObsConhecto, * from ConhecimentosTransporte where NumConhecto = 57616  and CodUF  = 'GO' 
--'DESCONTAR DO SALDO DE FRETE O VALOR DE R$ 250,00 (DUZENTOS E CINQUENTA REAIS) SE O VEÍCULO CHEGAR  30 MIN DE ANTECIPAÇÃO OU 02 HORAS ATRASADO DO HORÁRIO AGENDADO CONSTANTE NO TICKET DE DESCARGA'

select * from LONTANO.dbo.CartaFrete where Sequencial = 310000076962
select * from LONTANo.dbo.ObsAgendamentoEntrega 
select * from CartaFrete where NumOrdemEmbarque = 31091204
select CodAgendamento, * from OrdemEmbarque where NumOrdemEmbarque = 31091204
--UPDATE   OrdemEmbarque set CodAgendamento = NULL where NumOrdemEmbarque = 31091204
select CodAgendamento, * from OrdemEmbarque_log where NumOrdemEmbarque = 31091204


select top (10) * from PedidosFrete where CodClientePagamento = 1013054 order by DataCriacao asc
select * from ConhecimentosTransporte where CodPedidoFrete = 41000878
select CodAgendamento, * from OrdemEmbarque where NumOrdemEmbarque = 56006343

--'LNC-27/07/2022 -> Ajustes para novo Agendamento da Caramuru, conforme solicitação do Thiago (#2945) alteração laércio codigo

select OE.NumOrdemEmbarque, OE.DataCriacao from PedidosFrete PF 
inner join ConhecimentosTransporte CT on CT.CodPedidoFrete = PF.CodPedidoFrete
inner join OrdemEmbarque OE on OE.NumOrdemEmbarque = CT.CodOrdemEmbarque
inner join Clientes C on C.CodCliente = PF.CodClientePagamento
where C.RazaoSocial like '%CARAMURU%' and OE.CodAgendamento is null and OE.DataCriacao >= '2022-01-01 00:00:00.000' order by OE.DataCriacao desc

----------------------------------------------------------------------------------------------------------------------------------------------------------


select top (10) * from PedidosFrete where CodClientePagamento = 1013054 order by DataCriacao asc
select * from ConhecimentosTransporte where CodPedidoFrete = 41000878
select CodAgendamento, * from OrdemEmbarque where NumOrdemEmbarque = 24073851

