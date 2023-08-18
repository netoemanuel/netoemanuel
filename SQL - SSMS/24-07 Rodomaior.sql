use rodomaior


exec MonitoraMDFe 18013237

--update RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 495529


SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 76662                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosTransporte where NumConhecto = 98536

--?CodOrdemEmbarque, SeqConhecto, frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, frmPrincipal.CodUsuario, frmPrincipal.CodFilial, AdmFrete, GS2000_Business.ETipoAmbiente_Producao
--41025540       410000025888               192.168.0.228\RDMSTD        RODOMAIOR     Rodomaior_GSe  12451        CG            EFRETE PAGO    1 


exec VerificaCTe  220000018777


------------------------------------------------------------------------------------------------------------------

select DataCriacao, * from RODOMAIOR_GSe.dbo.NFe where nNF = 54380
select DataCriacao, * from RODOMAIOR_GSe.dbo.NFe where nNF = 54381
