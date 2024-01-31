use RODOMAIOR

select * from ConhecimentosTransporte where NumConhecto = 3994 and CodUF = 'SC'
exec VerificaCTe 650000003974

 SELECT CTe_Dacte.NumConhecto, CTe_Dacte.CIOT, CTe_Dacte.DataEmissao, CTe_Dacte.Cidade_Emitente, CTe_Dacte.UF_Emitente, CTe_Dacte.ContratoTipBank, CTe_Dacte.NotasFiscais, CTe_Dacte.PesoBruto, CTe_Dacte.ValorProduto, CTe_Dacte.Produto, CTe_Dacte.TipoToleranciaFarelo, CTe_Dacte.TipoToleranciaQuebra, CTe_Dacte.Tipo, CTe_Dacte.ToleranciaQuebra, CTe_Dacte.TarifaFreteMotorista, CTe_Dacte.InfAdicionais, CTe_Dacte.InfAdicionais2, CTe_Dacte.Operacao, CTe_Dacte.ObservacoesCTe, CTe_Dacte.NomeMotorista, CTe_Dacte.EnderecoProprietario, CTe_Dacte.Proprietario, CTe_Dacte.CPF_Motorista, CTe_Dacte.CidadeProprietario, CTe_Dacte.CNPJProprietario, CTe_Dacte.UFProprietario, CTe_Dacte.Fone_Motorista, CTe_Dacte.RNTRC_Cavalo, CTe_Dacte.RNTRC_Reb1, CTe_Dacte.RNTRC_Reb2, CTe_Dacte.RNTRC_Reb3, CTe_Dacte.MarcaReb3, CTe_Dacte.MarcaReb2, CTe_Dacte.MarcaReb1, CTe_Dacte.MarcaCavalo, CTe_Dacte.CidadeReb3, CTe_Dacte.CidadeReb2, CTe_Dacte.CidadeReb1, CTe_Dacte.CidadeCavalo, CTe_Dacte.UFReb3, CTe_Dacte.UFReb2, CTe_Dacte.UFReb1, CTe_Dacte.UFCavalo, CTe_Dacte.PlacaReb3, CTe_Dacte.PlacaReb2, CTe_Dacte.PlacaReb1, CTe_Dacte.PlacaCavalo, CTe_Dacte.Destino, CTe_Dacte.Origem, CTe_Dacte.DescDesconto, CTe_Dacte.Desconto, CTe_Dacte.Extenso_Adiantamento, CTe_Dacte.ValorAdiantamento, CTe_Dacte.ValorRetidoSestSenat, CTe_Dacte.Extenso_ValorRetidoSestSenat, CTe_Dacte.Extenso_ValorRetidoINSS, CTe_Dacte.ValorRetidoINSS, CTe_Dacte.ValorIRRFMotorista, CTe_Dacte.Extenso_ValorIRRFMotorista, CTe_Dacte.Extenso_ValorSeguro, CTe_Dacte.ValorSeguro, CTe_Dacte.Extenso_CreditoTarifas, CTe_Dacte.CreditoTarifas
 FROM   RODOMAIOR.dbo.CTe_Dacte CTe_Dacte
where CTe_Dacte.Sequencial = 650000003974

select * from Veiculos where CodVeiculo = 700 -- 700
select * from ConjuntosVeiculo where CodVeiculo = 700
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--700	2	9529	9531	9530	NULL	12207	CG	2021-09-02 09:35:15.000	NULL	NULL	NULL	NULL
--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 186, CodVeiculoAdicional2 =219 , CodVeiculoAdicional3 =339  where CodVeiculo = 700

--antigo
select * from Veiculos where CodVeiculo = 914
select * from ConjuntosVeiculo where CodVeiculo = 914

select * from ConhecimentosTransporte where NumConhecto = 183471 and CodUF = 'SP'
select TempoEstadiaACobrar,* from ComplementoConhecimento where NumSeqConhecto = 170000013293