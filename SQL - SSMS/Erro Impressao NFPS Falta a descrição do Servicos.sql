--Falta a descrição do Serviços Erro Impressão NFPS
--CHAMA A FUNÇÃO
SELECT c.Sequencial, c.CodUF, c.NumConhecto FROM LONTANO_GSe.dbo.NFSe n INNER JOIN LONTANO.dbo.ConhecimentosTransporte c ON c.Sequencial = n.Sequencial WHERE N.Ativo = 1 AND n.NumeroNfse IS NOT NULL AND N.SituacaoProtocolo = 4 AND n.Sequencial IN (240000056083)

--SQL NO RPT
SELECT Clientes.RazaoSocial, Clientes.CNPJ_CPF, Clientes.Endereco, Clientes.Bairro, Clientes.CEP, Cidades.NomeCidade, Cidades.CodUF, Clientes_Complemento.Email, Clientes_Complemento.InscMunicipal, Clientes.InscEstadual, ConhecimentosTransporte.BaseCalculoICMS, ConhecimentosTransporte.ValorTotalFrete, NFSe.CodigoVerificacao, ConhecimentosTransporte.ValorICMSFrete, ConhecimentosTransporte.NumConhecto, NFSe.ValorLiquidoNF, NFSe.CidadeTributacao, NFSe.DataEmissaoNfse, NFSe.RPS, Clientes_Complemento.IndRetencaoISS, 
	NFSe.Discriminacao
 FROM   (LONTANO.dbo.Clientes_Complemento Clientes_Complemento
 INNER JOIN ((LONTANO.dbo.NFSe NFSe INNER JOIN LONTANO.dbo.ConhecimentosTransporte ConhecimentosTransporte ON NFSe.Sequencial=ConhecimentosTransporte.Sequencial) 
 INNER JOIN LONTANO.dbo.Clientes Clientes ON ConhecimentosTransporte.CodClientePagto=Clientes.CodCliente) ON Clientes_Complemento.CodCliente=Clientes.CodCliente) 
 INNER JOIN LONTANO.dbo.Cidades Cidades ON Clientes.CodCidade=Cidades.CodCidade
 where 
 NFSe.Sequencial = 240000056083

 --SQL DA VIEW
 SELECT DISTINCT 
        NFSe.Sequencial, NFSe.DataEmissaoNfse, NFSe.CodigoVerificacao, NFSe.Discriminacao, NFSe.NumeroNfse, CASE ISNULL(cliComp.IndRetencaoISS, 'N') WHEN 'N' THEN 0.00 ELSE ISNULL(ct.ValorICMSFrete, 0) 
        END AS ValorIssRetido, ct.ValorTotalFrete - CASE WHEN ISNULL(cliComp.IndRetencaoISS, 'N') = 'N' THEN 0.00 ELSE isnull(ct.ValorICMSFrete, 0) END AS ValorLiquidoNF, ISNULL(CidIni2.NomeCidade, CidIni.NomeCidade) 
        + '-' + ISNULL(CidIni2.CodUF, CidIni.CodUF) AS CidadeTributacao, CASE WHEN DATEPART(day, dataemissaonfse) >= 15 THEN ('15/' + RIGHT('0' + CONVERT(varchar(2), CASE WHEN DATEPART(MONTH, dataemissaonfse) 
        = 12 THEN '01' ELSE DATEPART(MONTH, dataemissaonfse) + 1 END), 2) + '/' + CONVERT(varchar(4), CASE WHEN DATEPART(MONTH, dataemissaonfse) = 12 THEN DATEPART(YEAR, dataemissaonfse) 
        + 1 ELSE DATEPART(YEAR, dataemissaonfse) END)) ELSE ('15/' + RIGHT('0' + CONVERT(varchar(2), DATEPART(MONTH, dataemissaonfse)), 2) + '/' + CONVERT(varchar(4), CASE WHEN DATEPART(MONTH, dataemissaonfse) 
        = 12 THEN DATEPART(YEAR, dataemissaonfse) + 1 ELSE DATEPART(YEAR, dataemissaonfse) END)) END AS VencimentoISS, 
        CASE WHEN NFSe.CodMunicipioIbge = '5218805' THEN NFSe.SequencialRPS ELSE NFSe.NumeroLote END AS RPS, '2' AS SerieRPS, CONVERT(VARCHAR(8), NFSe.DataSituacaoProtocolo, 3) AS DataRPS, 
        CASE WHEN toma.CNPJ_CPF IN ('92.660.604/0118-93', '92.660.604/0164-29') AND ct.CodClienteEmitente = ct.CodClienteDestinatario AND 
        ct.CodClienteDestinatario = ct.CodClientePagto THEN '11.04 - Armazenamento, depósito, carga, descarga, arrumação e guarda de bens de qualquer espécie.' ELSE '16.02 - Outros serviços de transporte de natureza municipal.' END
        AS Servico
FROM LONTANO_GSe.dbo.NFSe AS NFSe 
	INNER JOIN dbo.ConhecimentosTransporte AS ct ON ct.Sequencial = NFSe.Sequencial 
	INNER JOIN dbo.Clientes AS toma ON toma.CodCliente = ct.CodClientePagto 
	INNER JOIN
        dbo.Clientes_Complemento AS cliComp ON cliComp.CodCliente = ct.CodClientePagto INNER JOIN
        dbo.FiliaisAgencias AS Fil1 ON Fil1.CodFilial = ct.CodFilialEmitente LEFT OUTER JOIN
        dbo.FiliaisAgencias AS Fil ON Fil.CNPJ = Fil1.CNPJ AND (Fil.TipoFilial = 'Filial com CNPJ' OR
        Fil.TipoFilial = 'Matriz') INNER JOIN
        LONTANO_GSe.dbo.Cidades_e AS cidIbge2 ON cidIbge2.CodCidade = ISNULL(Fil.CodCidade, Fil1.CodCidade) INNER JOIN
        dbo.Cidades AS cid ON cidIbge2.CodCidade = cid.CodCidade INNER JOIN
        LONTANO_GSe.dbo.Cidades_e AS cidemi ON cidemi.CodCidade = Fil1.CodCidade INNER JOIN
        dbo.Rotas AS Rota ON Rota.CodRota = ct.CodRota INNER JOIN
        dbo.Cidades AS CidIni ON CidIni.CodCidade = Rota.CodCidadeOrigem LEFT OUTER JOIN
        dbo.Cidades AS CidIni2 ON CidIni2.CodCidade = CidIni.CodCidade_Subor
WHERE (NFSe.NumeroNfse IS NOT NULL) and NFSe.Sequencial = 240000056083

--OBS DO CONHECIMENTO QUE DEVERIA APARECER NA VIEW
select ObsConhecto, * from ConhecimentosTransporte where Sequencial = 240000056083
select ObsConhecto, * from ConhecimentosTransporte_log where Sequencial = 240000056083

--INCLUSÃO DA DISCRIMINAÇÃO QUE VAI SER CARREGADA NA VIEW W CHAMADO NO RPT
select Discriminacao, * from LONTANO_GSe.dbo.NFSe where Sequencial = 240000056086
--update LONTANO_GSe.dbo.NFSe set Discriminacao = 'Descrição: MERCADORIA: SEMENTE DE GIRASSOL - NF: 1/1383 - PESO: 22990.000 - VALOR: R$ 19422.50 - PLACA: GZV-2823 - ALÍQ.ISS: 3.00 - TARIFA:
--R$ 38.5900 - MOTORISTA: EDUARDO PEREIRA BORGES. - REMETENTE: ITUMBIARA ARMAZENS GERAIS LTDA CNPJ/CPF: 44.714.604/0001-75 -
--DESTINATÁRIO: CARAMURU ALIMENTOS S/A CNPJ/CPF: 00.080.671/0001-00 - PEDIDO: ITB234/23AUT 188594 / PARA PAGAMENTO DO SALDO
--NECESSARIO VIA DO CTE, VIA CONTRATO OU CARTA FRETE E VIA TICKET DE DESCARGA. VERIFICAR SE NAO HA MULTA DE AGENDAMENTO NO
--TICKET DE DESCARGA DA CARAMURU.' where Sequencial = 240000056086
--update LONTANO_GSe.dbo.NFSe set Discriminacao = NULL where Sequencial = 240000056083