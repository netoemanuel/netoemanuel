--Repassado ao Emanuel dia 27/08/2024

--exec Grava_NFSe não está Gravando
--Verificar na tabela se esta gravado!
select * from NFSe_ConhecimentosTransporte where Sequencial = 450000026850

--######################################################################################################################################################
--para automatizar a SQL em um futuro breve
--IF (SELECT COUNT(*) 
--FROM NFSe_ConhecimentosTransporte NFSeGS
--INNER JOIN ConhecimentosTransporte CR ON CR.Sequencial = NFSeGS.Sequencial
--WHERE NFSeGS.Sequencial = 530000153775 AND NFSeGS.Sequencial NOT IN (SELECT CodGS FROM LONTANO_GSe.dbo.NFSe_DSF WHERE Status IN (0,1,7))) > 0 
--BEGIN
--	select 'grava ok'
--end
--######################################################################################################################################################

--caso não esteja roda a SQL abaixo se retornar valor fazer o INSERT na tabela NFSe_ConhecimentosTransporte com esses valores
--Depois de feito o Insert fazer o (EXEC Grava_NFSe 000000000000) novamente
SELECT ctrc.Sequencial,  
         ('Mercadoria: ' + RTRIM(Prod.DescNaturezaCarga) + ' - NF: ' + LONTANO.dbo.NotaFiscalCTRC(ctrc.sequencial) + ' - Peso: ' + CONVERT(VARCHAR(12),ctrc.quantidadesaida) + ' - Valor: R$ ' + CONVERT(VARCHAR(16),ctrc.valornf) + ' - Placa: ' + v.PlacaVeiculo + ' - Alíq.ISS: ' + CONVERT(VARCHAR(6),ctrc.AliquotaICMSFrete) + ' - Tarifa: R$ ' + CONVERT(VARCHAR(12),ctrc.TarifaFreteEmpresa) + ' - Motorista: ' + m.nomemotorista COLLATE database_default + '. ' + ISNULL(dbo.TiraCaracteres(oe.Observacoes),''))  
         + ' - Remetente: ' + rem.RazaoSocial + ' CNPJ/CPF: ' + rem.CNPJ_CPF + ' - Destinatário: ' + dest.RazaoSocial + ' CNPJ/CPF: ' + dest.CNPJ_CPF + ' - Pedido: ' + ISNULL(ped.NumeroPedidoCliente,'') AS DiscriminacaoServicos, 
         2 AS CodTipoReceita1, 'Serviço de Transporte' AS DescServico1, 1 AS QuantServico1, ctrc.ValorTotalFrete AS ValorUnitServico1, cf.CNAE AS CodigoCNAE,  
         CASE WHEN ctrc.ValorICMSFrete > 0 THEN CASE WHEN ISNULL(CidIni.CodCidade_Subor,CidIni.CodCidade) <> 39217 THEN 'E' ELSE 'T' END ELSE 'C' END AS Tributacao, 
         ISNULL(CidIni.CodCidade_Subor,CidIni.CodCidade) AS CodCidadePrestacao FROM ConhecimentosTransporte ctrc 
     LEFT OUTER JOIN OrdemEmbarque oe ON oe.NumOrdemEmbarque = ctrc.CodOrdemEmbarque 
     INNER JOIN Clientes cliPag ON cliPag.CodCliente = ctrc.CodClientePagto 
     INNER JOIN Clientes_Complemento cliComp ON cliComp.CodCliente = ctrc.CodClientePagto 
     INNER JOIN LONTANO_GSe.dbo.Cidades_e cidIbge ON cidIbge.CodCidade = cliPag.CodCidade 
     LEFT JOIN LONTANO_GSe.dbo.UnidadesFederacao_e ufIbgePag ON cidIbge.CodUFIBGE = ufIbgePag.CodIBGE 
     LEFT OUTER JOIN FiliaisAgencias Fil1 ON Fil1.CodFilial = ctrc.CodFilialEmitente 
     LEFT OUTER JOIN FiliaisAgencias Fil ON Fil.CNPJ = Fil1.CNPJ AND (Fil.TipoFilial = 'Filial com CNPJ' OR Fil.TipoFilial = 'Matriz') 
     LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e cidIbge2 ON cidIbge2.CodCidade = Fil.CodCidade 
     INNER JOIN Cidades cid ON cidIbge2.CodCidade = cid.CodCidade INNER JOIN LONTANO_GSe.dbo.Cidades_e cidemi ON cidemi.CodCidade = Fil1.CodCidade 
     INNER JOIN NaturezaCarga Prod ON Prod.CodNaturezaCarga = ctrc.CodNaturezaCarga 
     INNER JOIN Veiculos v ON v.codveiculo = ctrc.CodVeiculo INNER JOIN Motoristas m ON m.codmotorista = ctrc.CodMotorista 
     INNER JOIN Rotas Rota ON Rota.CodRota = ctrc.CodRota INNER JOIN Cidades CidIni ON CidIni.CodCidade = Rota.CodCidadeOrigem 
     INNER JOIN LONTANO_GSe.dbo.Cidades_e CidIniE ON CidIniE.CodCidade = ISNULL(CidIni.CodCidade_Subor,CidIni.CodCidade) 
     INNER JOIN Clientes rem ON rem.CodCliente = ctrc.CodClienteEmitente INNER JOIN Clientes dest ON dest.CodCliente = ctrc.CodClienteDestinatario 
     INNER JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete 
     INNER JOIN CNAE_Filiais cf ON cf.CodFilial = fil.CodFilial 
     WHERE CTRC.Sequencial = 450000026850


--Insert NFSe_ConhecimentosTransporte values (450000026850,'Mercadoria: Milho em Grãos - NF: 100/4506400 - Peso: 32560.000 - Valor: R$ 27676.00 - Placa: HQG4D38 - Alíq.ISS: 5.00 - Tarifa: R$ 36.0000 - Motorista: Vanderlei Dias de Leao. PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA - Remetente: Maria Cristina T Peracchia Nogueira CNPJ/CPF: 511.603.821-15 - Destinatário: Inpasa Agroindustrial Sa CNPJ/CPF: 29.316.596/0006-20 - Pedido: INPASA/027',2,'Serviço de Transporte',1,1172.16,493020100,'E',41297, 12563,'CG', getdate(), null, null,null)

--Chamado #20894
--insert NFSe_ConhecimentosTransporte values (450000026849, 'Mercadoria: Milho em Grãos - NF: 100/7506389 - Peso: 38040.000 - Valor: R$ 32334.00 - Placa: MBH7E44 - Alíq.ISS: 5.00 - Tarifa: R$ 36.0000 - Motorista: Milton Zeni. PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA - Remetente: Maria Cristina T Peracchia Nogueira CNPJ/CPF: 511.603.821-15 - Destinatário: Inpasa Agroindustrial Sa CNPJ/CPF: 29.316.596/0006-20 - Pedido: INPASA/027', 2, 'Serviço de Transporte', 1, 1369.44, 493020100, 'E', 41297, 12563,'CG', getdate(), null, null,null)
--insert NFSe_ConhecimentosTransporte values (450000026848, 'Mercadoria: Milho em Grãos - NF: 100/7506384 - Peso: 48200.000 - Valor: R$ 40970.00 - Placa: HTP3B15 - Alíq.ISS: 5.00 - Tarifa: R$ 36.0000 - Motorista: Antonio Amarilha Ibarra. PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA - Remetente: Marcelo da Costa Nogueira CNPJ/CPF: 322.465.361-20 - Destinatário: Inpasa Agroindustrial Sa CNPJ/CPF: 29.316.596/0006-20 - Pedido: INPASA/026', 2, 'Serviço de Transporte', 1, 1735.20, 493020100, 'E', 41297, 12563,'CG', getdate(), null, null,null)

--Chamado #9392
--insert NFSe_ConhecimentosTransporte values (530000153775, 'Mercadoria: Milho em Grãos - NF: 1/144128 - Peso: 34400.000 - Valor: R$ 47128.00 - Placa: GOA1C98 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Reinaldo Aparecido Miguel. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23', 2, 'Serviço de Transporte', 1, 869.05, '493020300', 'T', 39217, 12563,'CG', getdate(), null, null,null)
--insert NFSe_ConhecimentosTransporte values ( 530000153776,  'Mercadoria: Milho em Grãos - NF: 1/144168 - Peso: 44200.000 - Valor: R$ 60554.00 - Placa: MFS-5851 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Alex Rodrigues Lopes. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23',  2,  'Serviço de Transporte',  1,  1116.63,  '493020300',  'T',  39217,  12563,'CG', getdate(), null, null, null)  
--insert NFSe_ConhecimentosTransporte values ( 530000153778,  'Mercadoria: Milho em Grãos - NF: 1/144184 - Peso: 45480.000 - Valor: R$ 62307.60 - Placa: GWW9B51 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Francelino Simao Neto. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23', 2, 'Serviço de Transporte', 1, 1148.97, '493020300', 'T', 39217, 12563,'CG', getdate(), null, null, null)
--insert NFSe_ConhecimentosTransporte values ( 530000153781,  'Mercadoria: Milho em Grãos - NF: 1/144190 - Peso: 49500.000 - Valor: R$ 67815.00 - Placa: GWI-9368 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Heron Carlos Ferreira. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23',  2,  'Serviço de Transporte',  1,  1250.52,  '493020300',  'T',  39217,  12563,'CG', getdate(), null, null, null)  
--insert NFSe_ConhecimentosTransporte values ( 530000153782,  'Mercadoria: Milho em Grãos - NF: 1/144195 - Peso: 41940.000 - Valor: R$ 57457.80 - Placa: JMB-9763 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Evando Fernandes. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23',  2,  'Serviço de Transporte',  1,  1059.53,  '493020300',  'T',  39217,  12563,'CG', getdate(), null, null, null)
--insert NFSe_ConhecimentosTransporte values ( 530000153786,  'Mercadoria: Milho em Grãos - NF: 1/144198 - Peso: 32180.000 - Valor: R$ 40333.82 - Placa: MAH9C39 - Alíq.ISS: 5.00 - Tarifa: R$ 25.2631 - Motorista: Rogerio Thomazini. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,80 P/TON/HRS COM RETROCESSO DE 12 HS. TN 605654 - Remetente: Yukaer Arm Gerais Ltda CNPJ/CPF: 04.769.904/0004-80 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL301/23',  2,  'Serviço de Transporte',  1,  812.97,  '493020300',  'T',  39217,  12563,'CG', getdate(), null, null, null)
--insert NFSe_ConhecimentosTransporte values ( 530000153787,  'Mercadoria: Soja em Grãos - NF: 1/414938 - Peso: 32560.000 - Valor: R$ 80867.21 - Placa: HIA-5114 - Alíq.ISS: 2.00 - Tarifa: R$ 42.0000 - Motorista: Marcos Antonio de Freitas. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. ESTADIA APOS 24 HORAS PAGAR R 0,60 TON/HS COM RETROCESSO DE 12 HS. - Remetente: Cj Selecta Sa CNPJ/CPF: 00.969.790/0005-41 - Destinatário: Amaggi Exportaçao e Importaçao Ltda CNPJ/CPF: 77.294.254/0012-47 - Pedido: CJ24/23',  2,  'Serviço de Transporte',  1,  1367.52,  '493020300',  'E',  39209,  12563,'CG', getdate(), null, null, null)
 