--ENC: REPOM - Faturamento de Taxa(s) 04932-RODOMAIOR TRANSPORTES LTDA., vencimento: 25/11/2024

SELECT * FROM RelacaoFretes where CodRelacaoFrete = 1106641
SELECT * FROM ContasPagar WHERE CodContasPagar = 1436866
select * from Fatura_Repom


select * from CaramuruControle where ID = '6001908610'

--Numeração Formulário Carta Frete
select NumFormulario, * from ConhecimentosTransporte where NumConhecto = 24122 and CodUF = 'MG' and SerieConhecto = 'NE'  -- 1682674
--UPDATE ConhecimentosTransporte set NumFormulario = 0 where NumConhecto = 24122 and CodUF = 'MG' and SerieConhecto = 'NE'



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 24537                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select NumFormulario, * from ConhecimentosTransporte where NumConhecto = 24530 and CodUF = 'MG' and SerieConhecto = 'NE' 
select NumFormulario, * from ConhecimentosTransporte_log where NumConhecto = 24530 and CodUF = 'MG' and SerieConhecto = 'NE' 



select TarifaFreteEmpresa,ValorTotalFrete, * from ConhecimentosTransporte where NumConhecto = 1713 and CodUF = 'PR' and SerieConhecto = 'NE'  -- 1058.5100 / 24599.77
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 10.5851,ValorTotalFrete =  246.00  where NumConhecto = 1713 and CodUF = 'PR' and SerieConhecto = 'NE'