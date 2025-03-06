select * FROM RelacaoFretes where CodRelacaoFrete = 53012958
--UPDATE  RelacaoFretes set TotalRelacao =  28984.85 where CodRelacaoFrete = 53012958  --29618.85

select * from ContasPagar where CodContasPagar = 71003280  -- -1546.05
--UPDATE ContasPagar set Saldo = 0.00 where CodContasPagar = 71003280 

SELECT (CONVERT(VARCHAR, D.CodTipoDesc) + ' - ' + ComboBox_Financeiro.Descricao) AS Tipo, D.ValorDesconto 
FROM DescontoContasReceber D LEFT OUTER JOIN ComboBox_Financeiro ON D.CodTipoDesc = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboTipoDesconto' WHERE (D.CodContasReceber = 1609952)

select * from DescontoContasReceber WHERE (CodContasReceber = 1609952)
--UPDATE DescontoContasReceber SET ValorDesconto = 4.83 WHERE (CodContasReceber = 1609952) and CodTipoDesc = 1  --3.66
--UPDATE DescontoContasReceber SET ValorDesconto = 37.84 WHERE (CodContasReceber = 1609952) and CodTipoDesc = 5 --39.01


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 58301                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE oe.numordemembarque  = 15025453                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

--REPOM.SimulacaoPedagioRepom

--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!NumOrdemEmbarque, 0, rsDadosPedagio!CodigoIBGE_Origem, rsDadosPedagio!UF_Origem, rsDadosPedagio!CodigoIBGE_Destino, rsDadosPedagio!UF_Destino, rsDadosPedagio!DescricaoRota, rsDadosPedagio!CodRota
--192.168.0.3   LONTANO       Lontano_GSe   14597         STR            15025453      0             1506807      PA             1100130      RO            Santarem/PA - Bertuol -> Machadinho D Oeste/RO - Arnerico Barbosa Rodrigues          116627 


--EXEC {0} @numOrdemEmbarque, @codUsuario, @codFilial, @descricaoOcorrencia, @erro, @valido, @conteudoXml, @tipoOcorrencia, @ciot, @seqCtrc, @numSeq, @codAdmPagtoFrete{1} ", tipo == "I" ? "pr_inserirOcorrenciaCartaFrete" : "pr_cancelaCiotCartaFrete", tipo == "I" ? ", @codViagemPamcard" : string.Empty), db.ConvertParametros(parametros)
