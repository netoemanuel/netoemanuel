SELECT Sequencial, ctrc.CodFreteTerceiro, ctrc.SerieConhecto + '-' + CONVERT(VARCHAR(15),ctrc.NumConhecto) as CTRC, ctrc.NumConhecto, ctrc.DataEmbarque, QuantSaida, QuantChegada, CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE NULL END as ValorAdto, CASE ccr.TipoValor WHEN 'S' THEN (isnull(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE NULL END as ValorSaldo, CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE NULL END as ValorPedagio, CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE NULL END as ValorEstadia, (CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE 0 END + CASE ccr.TipoValor WHEN 'S' THEN (isnull(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE 0 END + CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE 0 END + CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE 0 END) as Total
, CASE WHEN ISNULL(Recebimentos.ValorRecebido,0) = 0 THEN 0 ELSE ROUND(((ISNULL(Recebimentos.ValorRecebido,0) / cr.ValorReceber) * (CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE 0 END + CASE ccr.TipoValor WHEN 'S' THEN (isnull(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE 0 END + CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE 0 END + CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE 0 END)),2) END As ValorRecebido , ( (CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE 0 END + CASE ccr.TipoValor WHEN 'S' THEN (isnull(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE 0 END + CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE 0 END + CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE 0 END) - CASE WHEN ISNULL(Recebimentos.ValorRecebido,0) = 0 THEN 0 ELSE ROUND(((ISNULL(Recebimentos.ValorRecebido,0) / cr.ValorReceber) * (CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE 0 END + CASE ccr.TipoValor WHEN 'S' THEN (isnull
(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE 0 END + CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE 0 END + CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE 0 END)),2) END ) AS SaldoReceber
From ConhecimentosTerceiros_ContasReceber ccr JOIN ContasReceber cr ON cr.CodContasReceber = ccr.CodContasReceber
JOIN ConhecimentosTerceiros ctrc on ctrc.Sequencial = ccr.SeqConhecto 
JOIN FretesTerceiros ON FretesTerceiros.CodFreteTerceiro = ctrc.CodFreteTerceiro LEFT JOIN (SELECT REC.CodContasReceber, MAX(DataRecebimento) AS DataRecebimento , SUM(REC.TotalRecebido + ISNULL(REC.Desconto,0) - ISNULL(REC.JurosRecebido,0) - ISNULL(REC.MultaRecebida,0)) AS ValorRecebido , SUM(ISNULL(REC.Desconto,0)) AS Desconto , SUM(ISNULL(REC.JurosRecebido,0)) AS Juros , SUM(ISNULL(REC.MultaRecebida,0)) AS Multa 
FROM ContasRecebidas REC GROUP BY REC.CodContasReceber) Recebimentos ON Recebimentos.CodContasReceber = Ccr.CodContasReceber
WHERE ccr.CodContasReceber = 1575854 AND ISNULL((CASE ccr.TipoValor WHEN 'A' THEN ValorAdto ELSE 0 END + CASE ccr.TipoValor WHEN 'S' THEN (isnull(valorsaldo,0)+isnull(valordifagregado,(isnull(TarifaDifAgregado, 0) * (isnull(QuantChegada, QuantSaida)/1000)))) ELSE 0 END + CASE ccr.TipoValor WHEN 'P' THEN ValorPedagio ELSE 0 END + CASE ccr.TipoValor WHEN 'E' THEN isnull(ValorEstadia,0) ELSE 0 END),0) > 0 ORDER BY ctrc.NumConhecto

SELECT ValorReceber,Saldo,  * from ContasReceber where CodContasReceber = 1575854  -- 86179.87 7449.04
--UPDATE ContasReceber set ValorReceber = 91863.48, Saldo = 13132.65 where CodContasReceber = 1575854
SELECT ValorReceber,Saldo,  * from ContasReceber_log where CodContasReceber = 1575854 ORDER by DataLog desc
--91863,48
--13132,65
SELECT * from ConhecimentosTerceiros_ContasReceber where CodContasReceber = 1575854
SELECT * from ConhecimentosTerceiros_ContasReceber_Log where CodContasReceber = 1575854
--insert INTO ConhecimentosTerceiros_ContasReceber VALUES (1086447,1500,'2024-03-15 00:00:00','UN','20062','S',1575854,11958,'CG','2024-03-18 16:46:22.000',NULL,NULL,NULL,NULL,81567)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodFilial,Patrimonio.CodCentroCusto,Patrimonio.Sequencial, Patrimonio.NomeItem, Patrimonio.CodModelo, Patrimonio.CodMarca, Patrimonio.SeqClassificacao, Patrimonio.CodProduto, Patrimonio.NumPlaqIdentInicio, Patrimonio.NumPlaqIdentFim, Patrimonio.DataAquisicao, Patrimonio.CodSetorFilial, Patrimonio.CodColaborador, DescClassificacao, Descricao, (CASE WHEN FotoPatrimonio IS NOT NULL THEN 'X' ELSE NULL END) AS Foto 
FROM Patrimonio 
INNER JOIN ClassificacaoPatrimonio on ClassificacaoPatrimonio.Sequencial = Patrimonio.SeqClassificacao 
INNER JOIN MarcasPatrimonio ON MarcasPatrimonio.CodMarcaPatrimonio = Patrimonio.CodMarca 
INNER JOIN ModelosPatrimonio ON ModelosPatrimonio.CodMarcaPatrimonio = Patrimonio.CodMarca AND ModelosPatrimonio.CodModeloPatrimonio = Patrimonio.CodModelo 
INNER JOIN ComboBox_Apoio on Codigo = SituacaoPatrimonio and NomeComboBox = 'cboSituacaoPatrimonio' ORDER BY Patrimonio.Sequencial
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT SituacaoConhecto,* from ConhecimentosTransporte where SituacaoConhecto LIKE 'Norm%'
SELECT SituacaoConhecto,TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 1992017 and CodUF = 'MT' and SerieConhecto  = '1' --Substituído
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * from ConhecimentosTransporte where NumConhecto = 736193 and CodUF = 'MT'
exec VerificaCTe 180000007199
EXEC MonitoraMDFe 18008082
select Status,* FROM LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 180000007199
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET Status = 0 where Sequencial_CTe = 180000007199
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from OrdemEmbarque where NumOrdemEmbarque = 37005339
--UPDATE  OrdemEmbarque set CIOT = '' where NumOrdemEmbarque = 37005339
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT  IndPagtoSaldo, * from ConhecimentosTerceiros where  NumConhecto = '20062'
--UPDATE  ConhecimentosTerceiros set IndPagtoSaldo = 'S' where  NumConhecto = '20062'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * from Motoristas where CodMotorista = 95000955
select CodMotorista,* from ConhecimentosTerceiros where NumConhecto IN ('465244','464874','465104','466002') AND TipoDocumento = 'CT-e'
--UPDATE ConhecimentosTerceiros set CodMotorista =95000955  where NumConhecto IN ('465244','464874','465104','466002') AND TipoDocumento = 'CT-e' -- 1106254

SELECT * from Motoristas where CodMotorista = 1106254
select CodMotorista,* from ConhecimentosTerceiros where NumConhecto IN ('463931','464161','3251','464784','465209','465381') AND TipoDocumento = 'CT-e'
--UPDATE ConhecimentosTerceiros set CodMotorista =1106254  where NumConhecto IN ('463931','464161','3251','464784','465209','465381') AND TipoDocumento = 'CT-e' -- 1106126
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from LONTANO_GSe.dbo.tblLog_operacao order by DT_Hs desc 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM FaturasRepom WHERE DataEmissao BETWEEN ' 10/01/2024 00:00:00' AND '10/30/2024 23:59:29' -- Faturas ja pagas -- nao conta 
--GS2000_Business.Forms
--GetFinancialReportByStatus
--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, txtDataInicial.Text & " 00:00:00", txtDataFinal.Text & " 23:59:29"
--192.168.0.3   LONTANO       Lontano_GSe   11657         CG            01/10/2024 00:00:00         30/10/2024 23:59:29
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto = 3344 and CodUF = 'PR' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Faturado', TipoConhecimento = 'Complementado' where NumConhecto = 3344 and CodUF = 'PR' and SerieConhecto = 'NE'
select * from ConhecimentosTransporte where NumConhecto = 3488 and CodUF = 'PR' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte set  TipoConhecimento = 'Complemento' where NumConhecto = 3488 and CodUF = 'PR' and SerieConhecto = 'NE'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC MonitoraMDFe 64079419
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1739302
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240026530600', nProt = '941240026530600' where Sequencial = 1739302 and ID = 25420955 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1739302
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
--'(09/10/2024 - Jhonny D) Se for iriom não deixar chamar a carta frete.
--If NumReg("OrdemEmbarque WHERE (NumOrdemEmbarque = " & CDbl(txtCodOrdemEmbarque.Text) & ") AND (CIOT = 'IRIOM')") = 0 Then
SELECT COUNT(*) AS Registros FROM OrdemEmbarque WHERE (NumOrdemEmbarque = 26038322) AND (CIOT = 'IRIOM')
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT PisPasep,* FROM Fornecedores WHERE (CodFornecedor = 74000526)  --129.48291.38-2
--UPDATE Fornecedores set PisPasep = '272.17007.47-5' WHERE (CodFornecedor = 74000526) 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CT.NumFormulario, 
       CT.ModeloDocumento,
       COUNT(*) AS QtdConhecimentos, 
       STRING_AGG(CAST(CT.Sequencial AS NVARCHAR(MAX)), ', ') AS Sequenciais,
       MAX(CT.DataCriacao) AS DataCriacao
FROM ConhecimentosTransporte CT
WHERE CT.NumFormulario <> 0
GROUP BY CT.NumFormulario, CT.ModeloDocumento
HAVING COUNT(*) > 1
ORDER BY DataCriacao DESC;