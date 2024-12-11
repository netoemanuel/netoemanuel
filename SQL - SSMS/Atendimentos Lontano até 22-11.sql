--exec MonitoraMDFe 42026908
--select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1752953 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1752953
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240030265393', nProt = '941240030265393' where Sequencial = 1752953 and ID = 25480657 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1752953 and ID = 25480657 



SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
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
WHERE ConhecimentosTransporte.DataEmissao BETWEEN '09/21/2024 00:00:00' AND '11/20/2024 23:59:29' AND ConhecimentosTransporte.SituacaoConhecto = 'Complemento' AND Veiculos.Propriedade = 'Próprio' ORDER BY ConhecimentosTransporte.Sequencial



SELECT * from NotasFiscaisContasPagar where CodContasPagar = 1987143



 ;WITH Embarques (Tipo, Sequencial, CodFreteTerceiro, CodVeiculo, DataEmissao, UF_Serie, NumConhecto, CodCliente, CodRota, QuantidadeSaida, LocalOrigem, LocalDestino, ChaveCTe)
 AS (     SELECT TOP (1) 'Próprio', ctrc.Sequencial, NULL AS CodFreteTerceiro, ctrc.CodVeiculo, ctrc.DataEmissao, ctrc.CodUF, ctrc.NumConhecto, ctrc.CodClientePagto, ctrc.CodRota, ctrc.QuantidadeSaida, null, null, cte.ID  
 FROM ConhecimentosTransporte ctrc   
 LEFT JOIN LONTANO_GSe.dbo.CTe cte ON cte.Sequencial = ctrc.Sequencial  
 WHERE ctrc.CodVeiculo = 3756   
 AND ctrc.SituacaoConhecto NOT IN ('Cancelado','Substituto')   
 AND ctrc.TipoConhecimento <> 'Substituto'   
 ORDER BY ctrc.DataEmissao DESC    
 
 UNION    
 
 SELECT TOP(1) 'Terceiro', cter.Sequencial, fre.CodFreteTerceiro, cter.CodVeiculo, cter.DataEmbarque, cter.SerieConhecto COLLATE Latin1_General_CI_AI, cter.NumConhecto, fre.CodCliente, fre.CodRota, cter.QuantSaida, fre.LocalOrigem, fre.LocalDestino, null   
 FROM ConhecimentosTerceiros cter     
 JOIN FretesTerceiros fre ON fre.CodFreteTerceiro = cter.CodFreteTerceiro    
 WHERE cter.CodVeiculo = 3756  
 ORDER BY cter.DataEmbarque DESC ) SELECT TOP(1) ctrc.Sequencial     , ctrc.CodFreteTerceiro     , loc.datachamada as lblMostraDados_0     , CASE WHEN loc.PeriodoChamada = 'M' Then 'Manhã'             WHEN loc.periodochamada = 'T' then 'Tarde'             WHEN loc.periodochamada = 'N' then 'Noite'        End as lblMostraDados_1     , loc.HoraChamada as lblMostraDados_2     , loc.CodCidadeAtual as lblMostraDados_3     , loc.CodCidadeDestino as lblMostraDados_4     , loc.Situacao as lblMostraDados_5     , loc.IndicadorCarga as lblMostraDados_6     , ('Conhecimento: ' + CTRC.UF_Serie + '-' + CONVERT(VARCHAR(12), CTRC.NumConhecto)          + '   Emissão: ' + FORMAT(CTRC.DataEmissao, 'dd/MM/yy', 'pt-br')          + '   Qtde Saída: ' + Format(CTRC.QuantidadeSaida, 'N', 'pt-br')          + CASE WHEN ISNULL(docto.Sequencial, 0) > 0 THEN '   Imagem Doctos.: ' + CASE WHEN Aprovadas > 0 THEN (CONVERT(VARCHAR, Aprovadas) + ' apro
vada(s) ') ELSE '' END         + CASE WHEN Reprovadas > 0 THEN (CONVERT(VARCHAR, Reprovadas) + ' reprovada(s) ') ELSE '' END + CASE WHEN EmAnalise > 0 THEN (CONVERT(VARCHAR, EmAnalise) + ' em análise') ELSE '' END Else '' END)         AS lblMostraDados_7      , ('Rota: ' + CASE WHEN ISNULL(ctrc.CodRota, 0) = 0 THEN (ISNULL(ctrc.LocalOrigem, '') + ' -> ' + ISNULL(ctrc.LocalDestino, '')) COLLATE Latin1_General_CI_AS ELSE Rotas.DescricaoRota END) As lblMostraDados_8      , CASE WHEN ISNULL(MDFe.[Status], 0) = 9 THEN 'MDF-e Encerrado em: ' + Format(Enc.DataCriacao, 'dd/MM/yy', 'pt-br') + ' por ' + uEnc.NomeUsuario + ' (filial ' + enc.CodFilialCriacao COLLATE Latin1_General_CI_AS + ')' ELSE '' END As lblEncerramentoMDFe_9      , CASE WHEN Tipo = 'Próprio'             THEN CASE WHEN (MDFe.Sequencial IS NULL OR MDFe.[Status] = 1) THEN (LEFT(cli.NomeCliente, 20) + '  -  ' + LEFT(cid.NomeCidade, 15) + '  -  ' + Cid.CodUF) ELSE '' END            ELSE (LEFT(cli.NomeCliente, 20) + '  -  ' + LEFT(cid.NomeCidade, 15) + ' 
 -  ' + Cid.CodUF)        END As lblMostraClienteCidadeUF 
 FROM Embarques ctrc 
 JOIN Rotas ON Rotas.CodRota = ctrc.CodRota
 JOIN Clientes cli ON cli.CodCliente = ctrc.CodCliente 
 JOIN Cidades cid ON cid.CodCidade = cli.CodCidade 
 LEFT JOIN LONTANO_GSe.dbo.infCTe_MDFe ON infCTe_MDFe.chCTe = ctrc.ChaveCTe 
 LEFT JOIN LONTANO_GSe.dbo.MDFe ON MDFe. Sequencial = infCTe_MDFe.Sequencial 
 LEFT JOIN MDFeViagem_OrdemEmbarque MOE ON MOE.SeqViagem = MDFe.CodManifestoCarga
 LEFT OUTER JOIN LONTANO_GSe.dbo.Eventos_MDFe Enc ON Enc.Sequencial_MDFe = MDFe.Sequencial AND Enc.tpEvento = 110112 AND Enc.Status = 9 
 LEFT OUTER JOIN Usuarios uEnc ON uEnc.CodUsuario = Enc.CodUsuarioCriacao 
 LEFT JOIN (SELECT Sequencial, SUM(CASE WHEN AprovacaoImagem = 'Aprovada' THEN 1 ELSE 0 END) AS Aprovadas  , SUM(CASE WHEN AprovacaoImagem = 'Reprovada' THEN 1 ELSE 0 END) AS Reprovadas  , SUM(CASE WHEN AprovacaoImagem = 'Em Análise' THEN 1 ELSE 0 END) AS EmAnalise From ImagensCTe          
   GROUP BY Sequencial) docto ON docto.Sequencial = ctrc.Sequencial  
   Left Join LocalizacaoFrota loc on loc.CodVeiculo = ctrc.CodVeiculo  and loc.DataChamada = (Select Max(DataChamada) as datachamada from LocalizacaoFrota where LocalizacaoFrota.CodVeiculo = ctrc.CodVeiculo) ORDER BY DataEmissao DESC




EXEC ConfereAjuste3Reais '2024-10-01', '2024-11-30 23:59', 'CONFERE'
EXEC ConfereAjuste3Reais '2024-10-01', '2024-11-30 23:59', 'AJUSTA'

SELECT * from NotasFiscaisContasPagar_Log where CodContasPagar = 1985875 
select * from ContasPagar where CodContasPagar = 1985875  --818.07
select * from ContasPagar_log where CodContasPagar = 1985875  order BY DataLog desc--818.07 

--UPDATE ContasPagar SET Saldo = 1083.07 where CodContasPagar = 1985875
--UPDATE ContasPagar SET ValorDocumento = Saldo, ValorPagar = Saldo where CodContasPagar = 1985875


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 539937                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 646429   and CodUF = 'go'

EXEC VerificaCTe 30000163000


SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 14988   and CodUF = 'RO'
select NumeroCartao, * from OrdemEmbarque WHERE NumOrdemEmbarque = 55041467
--UPDATE  OrdemEmbarque SET NumeroCartao = NULL WHERE NumOrdemEmbarque = 55041467  --751734625