select ObsCartaFrete, * from LONTANO_GSe.dbo.CTe_Dacte where Cte_dacte.Sequencial = 240000057004 -- DESCONTAR DO SALDO DE FRETE O VALOR DE R$ 250,00 (DUZENTOS E CINQUENTA REAIS) SE O VEÍCULO CHEGAR  30 MIN DE ANTECIPAÇÃO OU 02 HORAS ATRASADO DO HORÁRIO AGENDADO CONSTANTE NO TICKET DE DESCARGA
--update  LONTANO_GSe.dbo.CTe_Dacte set ObsCartaFrete =  where Cte_dacte.Sequencial = 240000057004

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 610153                               
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select * from CartaFrete where Id = 1503182
select * from CartaFrete_Ocorrencia where IdCartaFrete = 1503182
select  * from LONTANO_GSe.dbo.cte where Sequencial = 240000057004
select NumFormulario, ObsConhecto,* from ConhecimentosTransporte where Sequencial = 240000057004
select ObsConhecto, * from ConhecimentosTransporte_Log where Sequencial = 240000057004
SELECT Observacoes,CodAgendamento,* from OrdemEmbarque where NumOrdemEmbarque = 24080238 -- CARAMURU
--UPDATE OrdemEmbarque set CodAgendamento = Null  where NumOrdemEmbarque = 24080238
SELECT Observacoes,CodAgendamento,* from OrdemEmbarque_Log where NumOrdemEmbarque = 24080238 order BY DataLog desc
select Observacoes, * from PedidosFrete where CodPedidoFrete = 24003470
select Observacoes,* from PedidosFrete_log where CodPedidoFrete = 24003470

SELECT Observacoes,CodAgendamento, CodFilialCriacao,* from OrdemEmbarque where NumOrdemEmbarque = 24080238
SELECT Observacoes,CodAgendamento, * from OrdemEmbarque where Situacao = 1 and CodFilialCriacao = 'ITB' order by DataCriacao desc
SELECT ISNULL(P.CodClienteEntrega,0) AS CodClienteEntrega, Cli.CodCidade, CASE WHEN Pag.RazaoSocial LIKE '%Caramuru%' THEN 'CARAMURU' ELSE '' END AS ClientePagamento
FROM PedidosFrete P
INNER JOIN Clientes Cli on Cli.CodCliente = P.CodClienteEntrega 
INNER JOIN Clientes Pag on Pag.CodCliente = P.CodClientePagamento WHERE (P.CodPedidoFrete = 24003437)

select NumFormulario, CodClientePagto,* from ConhecimentosTransporte where NumConhecto  = 508851 and CodUF = 'MS'


 SELECT CTe_Dacte.NomeEmitente, CTe_Dacte.CNPJ_Emitente, CTe_Dacte.IE_Emitente, CTe_Dacte.EnderecoEmitente, CTe_Dacte.CEP_Emitente, CTe_Dacte.Cidade_Emitente, CTe_Dacte.UF_Emitente,
 CTe_Dacte.DataEmissao, CTe_Dacte.PlacaCavalo, CTe_Dacte.MarcaCavalo, CTe_Dacte.CidadeCavalo, CTe_Dacte.UFCavalo, CTe_Dacte.PlacaReb1, CTe_Dacte.MarcaReb1, CTe_Dacte.CidadeReb1, 
 CTe_Dacte.UFReb1, CTe_Dacte.PlacaReb2, CTe_Dacte.MarcaReb2, CTe_Dacte.CidadeReb2, CTe_Dacte.UFReb2, CTe_Dacte.PlacaReb3, CTe_Dacte.MarcaReb3, CTe_Dacte.CidadeReb3, CTe_Dacte.UFReb3, 
 CTe_Dacte.ObservacoesCTe, CTe_Dacte.ValorProduto, CTe_Dacte.PesoBruto, CTe_Dacte.Produto, CTe_Dacte.Proprietario, CTe_Dacte.EnderecoProprietario, CTe_Dacte.FoneProprietario, CTe_Dacte.CidadeProprietario,
 CTe_Dacte.UFProprietario, CTe_Dacte.CNPJProprietario, CTe_Dacte.IEProprietario, CTe_Dacte.Origem, CTe_Dacte.Destino, CTe_Dacte.NotasFiscais, CTe_Dacte.ToleranciaQuebra, CTe_Dacte.TarifaFreteMotorista,
 CTe_Dacte.ValorIRRFMotorista, CTe_Dacte.ValorAdiantamento, CTe_Dacte.Desconto, CTe_Dacte.TipoToleranciaFarelo, CTe_Dacte.TipoToleranciaQuebra, CTe_Dacte.Tipo, CTe_Dacte.NumPedidoTransf, CTe_Dacte.NumPedidoCliente, 
 CTe_Dacte.ValorSeguro, CTe_Dacte.ValorRetidoINSS, CTe_Dacte.ValorRetidoSestSenat, CTe_Dacte.DescDesconto, CTe_Dacte.NumConhecto, CTe_Dacte.CIOT, CTe_Dacte.ContratoRepom, CTe_Dacte.Extenso_ValorSeguro,
 CTe_Dacte.Extenso_Adiantamento, CTe_Dacte.Extenso_ValorRetidoSestSenat, CTe_Dacte.Extenso_ValorRetidoINSS, CTe_Dacte.Extenso_ValorIRRFMotorista, CTe_Dacte.DescontoTaxaAdm, CTe_Dacte.Extenso_DescontoTaxaAdm, 
 CTe_Dacte.CreditoTarifas, CTe_Dacte.Extenso_CreditoTarifas, CTe_Dacte.MensagemSaldo, CTe_Dacte.Fone_Emitente, CTe_Dacte.TipoCIOT, CTe_Dacte.Obs_eFrete, CTe_Dacte.SubCabecalho, CTe_Dacte.NovaContaBancaria, CTe_Dacte.LabelCIOT, CTe_Dacte.ObsCartaFrete
 FROM   LONTANO.dbo.CTe_Dacte CTe_Dacte
 where Cte_dacte.Sequencial = 240000057004 



 SELECT CodAgendamento,* from OrdemEmbarque_log where NumOrdemEmbarque = 24080238  and AcaoLog = 'I'-- CARAMURU
 select * from RelatorioEmbarque where NumRelatorioEmbarque =  24010241
 select * from Veiculos where CodVeiculo =532038
 select * from Motoristas where CodMotorista = 31003896
 select * from PedidosFrete where CodPedidoFrete = 24003466

  SELECT Observacoes,CodAgendamento,* from OrdemEmbarque where NumOrdemEmbarque = 24080238
 SELECT CodPedidoFrete,* from OrdemEmbarque_Log where NumOrdemEmbarque = 24080238 order BY DataLog desc



 select DT_Validade_certificado, * from LONTANO_GSe.dbo.tblEmitentes
 select DT_Validade_certificado,* from LONTANO_NFe.dbo.tblEmitentes 