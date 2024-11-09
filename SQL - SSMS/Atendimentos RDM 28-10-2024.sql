use RODOMAIOR

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 1698                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

--blk
--kill 582
--GS2000_Business.ServiceEFrete
--ret2 = imp2.CancelarCIOT
--?(rsCT!CodOrdemEmbarque), CStr(rsCT!CIOT), CStr(rsCT!Sequencial), CStr(rsCT!NumConhecto), rsCT!SerieConhecto, sMotivoCanc, frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, frmPrincipal.CodUsuario, frmPrincipal.CodFilial, GS2000_Business.ETipoAmbiente_Producao
-- 41032409     1660219360716054            410000032535  1698          NE            Solicitação Joilson chamado e-mail        192.168.0.228\RDMSTD        RODOMAIOR     Rodomaior_GSe  12451        CG             1 


select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto IN (160792, 161496, 167762) AND CodUF = 'MS' and SerieConhecto = '0'
--UPDATE  ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where NumConhecto IN (160792, 161496, 167762) AND CodUF = 'MS' and SerieConhecto = '0'  --Emitido
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto IN (67526) AND CodUF = 'PR' and SerieConhecto = '0'
--UPDATE  ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where NumConhecto IN (67526) AND CodUF = 'PR' and SerieConhecto = '0'  --Emitido

select ValorAdiantamento,* from ConhecimentosTransporte where NumConhecto IN (198960, 198993) AND CodUF = 'MS' and SerieConhecto = '0' --
select ValorAdiantamento,* from ConhecimentosTransporte where NumConhecto IN (81023) AND CodUF = 'MG' and SerieConhecto = '0' 
select ValorAdiantamento,* from ConhecimentosTransporte where NumConhecto IN (84871) AND CodUF = 'PR' and SerieConhecto = '0' 
select * FROM ConhecimentosRelacaoFretes_log where NumSeqConhecto = 190000013606


SELECT * from Motoristas_Veiculos where CodMotorista = 7001432
select * from Veiculos where CodVeiculo = 263012

--Declare @NovoValorAdiantamento as numeric = 0.00	
--UPDATE ConhecimentosTransporte SET ValorAdiantamento = @NovoValorAdiantamento WHERE Sequencial IN (
SELECT     CT.Sequencial
FROM     ConhecimentosRelacaoFretes CRF
JOIN     ConhecimentosTransporte CT ON CRF.NumSeqConhecto = CT.Sequencial
JOIN     OrdemEmbarque OE ON OE.NumOrdemEmbarque = CT.CodOrdemEmbarque
WHERE      OE.CIOT = 'REPOM'    AND CRF.CodTipoPagamento IN (2)     AND ValorAdiantamento > 0     AND DataEmissao > '2024-02-20 00:00:00'
AND CT.Sequencial NOT IN (        SELECT NumSeqConhecto         FROM ConhecimentosRelacaoFretes         WHERE CodTipoPagamento = 1))
ORDER BY     crf.DataCriacao 


--SELECT 
--    CT.ValorAdiantamento, CT.NumConhecto, CT.CodUF, *
--FROM 
--    ConhecimentosRelacaoFretes CRF
--JOIN 
--    ConhecimentosTransporte CT ON CRF.NumSeqConhecto = CT.Sequencial
--JOIN 
--    OrdemEmbarque OE ON OE.NumOrdemEmbarque = CT.CodOrdemEmbarque
--WHERE  
--    OE.CIOT = 'REPOM' 
--   AND CRF.CodTipoPagamento IN (2) 
--    AND ValorAdiantamento > 0 
--    AND DataEmissao > '2024-02-20 00:00:00'
--    AND CT.Sequencial NOT IN (
--        SELECT NumSeqConhecto 
--        FROM ConhecimentosRelacaoFretes 
--        WHERE CodTipoPagamento = 1
--    )
--ORDER BY 
--    crf.DataCriacao


SELECT * from CaramuruControle where ID = '6001903446'
select ValorAdiantamento,* from ConhecimentosTransporte where Sequencial =  340000028772
EXEC VerificaCTe 340000028772
EXEC MonitoraMDFe 34027436
SELECT * from NotasFiscaisConhecimento where ChaveAcessoNFe = '41241090810706000373550010013582151598308409'