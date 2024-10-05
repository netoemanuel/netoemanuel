use rodomaior

select mvoe.NumOrdemEmbarque, mdfe.Sequencial, mdfe.dhEmi, mdfe.[Status]
from rodomaior_GSe.dbo.mdfe mdfe 
join MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga
where mdfe.status = 1 
	and mdfe.sequencial not in (select Sequencial from rodomaior_GSe.dbo.MDFe_LOG where codLog = 22 and cstat = 100)
	and mdfe.sequencial not in (select Sequencial from rodomaior_GSe.dbo.MDFe_LOG where codLog = 32 and cstat = 100)

exec MonitoraMDFe 70002616
--Anota !

EXEC MonitoraMDFe 20012210
select Status, * from rodomaior_GSe.dbo.MDFe where Sequencial = 626726 
--UPDATE rodomaior_GSe.dbo.MDFe_LOG SET nRec = '935240055164226', nProt = '935240055164226' where Sequencial = 626726 and ID = 6999287 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE rodomaior_GSe.dbo.MDFe SET Status = 0 where Sequencial in(627873)
--UPDATE rodomaior_GSe.dbo.MDFe_log SET Status = 2, cstat = 204 where Sequencial = 626726  and ID = 6999287 


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'go' AND CTRC.Numconhecto = 122163                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 25122700 
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 77002911 
--update OrdemEmbarque set RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 77002911 
---voltar os dados:
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4417812013348815, RotaSemParar = 'UNAI MG X UBERLANDIA MG', ValorPedagioSemParar = 266.40  where  NumOrdemEmbarque = 30060345 

--RotaSemParar	ValorPedagioSemParar
--CABECEIRAS/GO - SEMENTES TRES PINHEIROS  X ALTO GARÇAS/MT	89.60


SELECT * FROM RODOMAIOR_GSe.dbo.tblLog_operacao WHERE DS_Descricao = 'Teste Verificação MDF-e'


SELECT TarifaFreteEmpresa, ValorTotalFrete, * FROM ConhecimentosTransporte where NumConhecto = 1420 and CodUF = 'PR' AND SerieConhecto = 'NE'  -- 18.7500 / 375.00
--UPDATE ConhecimentosTransporte SET TarifaFreteEmpresa = 15.00, ValorTotalFrete = 300.00 where NumConhecto = 1420 and CodUF = 'PR' AND SerieConhecto = 'NE'

exec MASTER.dbo.ProcuraObjetos 'LONTANO', 'LONTANO', 'VALIDA_CTE_DESPESA'


SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte ORDER by DataCriacao desc

SELECT CTRC.CodUF, CTRC.NumConhecto,* FROM ConhecimentosTransporte CTRC 
INNER JOIN ConhecimentosRelacaoFretes CRF ON CRF.NumSeqConhecto = CTRC.Sequencial
WHERE NumSeqConhecto <> 20000037498 AND NumFormularioCF = 533139

SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte where NumConhecto IN( 204477,193256) and CodUF = 'MS'
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte_log where NumConhecto IN( 204477,193256) and CodUF = 'MS' order by DataLog desc
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte where NumFormulario =  533139
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte_log where NumFormulario =  533139 ORDER BY DataLog desc



SELECT *, (SELECT TOP 1 NumeroNF FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = Temp.SeqConhecto) AS 'NF' 
FROM Temp_BaixasMultiplasCRec Temp WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 15:11:20') ORDER BY Situacao


SELECT CodTipoDesconto,* from ContasReceber where CodContasReceber = 1202079
--UPDATE ContasReceber SET CodTipoDesconto = null where CodContasReceber = 1202079
SELECT CodTipoDesconto,* from ContasReceber_log where CodContasReceber = 1202079

SELECT *, (SELECT TOP 1 NumeroNF FROM NotasFiscaisConhecimento WHERE SequencialConhecimento = Temp.SeqConhecto) AS 'NF' FROM Temp_BaixasMultiplasCRec Temp WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 15:17:44') ORDER BY Situacao

SELECT *, (SELECT TOP 1 NumeroNF FROM NotasFiscaisConhecimento
WHERE SequencialConhecimento = Temp.SeqConhecto) AS 'NF' 
FROM Temp_BaixasMultiplasCRec Temp WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 15:51:46') ORDER BY Situacao

SELECT * FROM Temp_BaixasMultiplasCRec where CodContasReceber = 1202079 AND (CodUsuario = 12950)
--DELETE FROM Temp_BaixasMultiplasCRec where CodContasReceber = 1202079
--UPDATE Temp_BaixasMultiplasCRec set ValorReceber = TotalRecebido where CodContasReceber = 1202079 AND (CodUsuario = 12451)

SELECT *, (SELECT TOP 1 NumeroNF FROM NotasFiscaisConhecimento
WHERE SequencialConhecimento = Temp.SeqConhecto) AS 'NF' 
FROM Temp_BaixasMultiplasCRec Temp WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 16:10:33') ORDER BY Situacao


SELECT cbo.Descricao, Temp.ValorDesconto, Temp.CodTipoDesconto 
FROM Temp_DescBaixasMultiplasCTRC Temp 
INNER JOIN ComboBox_Financeiro cbo ON cbo.Codigo = temp.CodTipoDesconto AND cbo.NomeComboBox = 'cboTipoDesconto' 
WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 16:30:11') AND (Temp.Sequencial = 70000017621)

SELECT SeqConhecto, CodContasReceber 
FROM Temp_BaixasMultiplasCRec WHERE (CodFilial = 'CG') AND (CodUsuario = 12451) AND (DataCriacao = '08/14/2024 16:33:07') ORDER BY SeqConhecto

SELECT ValorICMSRetido, PercDescontoSeguro, ISNULL(CT.ValorTotalFrete, 0) AS ValorTotalFrete, 
CASE WHEN ISNULL(CT.ValorICMSRetido, 0) = 0 THEN 
CASE WHEN C.CreditoICMS = 'S' THEN ValorTotalFrete * (12.00/100)
ELSE ValorTotalFrete * (9.6/100) END ELSE NULL END - ISNULL((SELECT SUM(Desconto)

FROM ConhecimentosContasReceber_Recebidos crec
WHERE crec.NumSeqConhecto = ct.Sequencial),0) AS ValorICMSRetido, CASE WHEN ISNULL(PercDescontoSeguro, 0) > 0 THEN CT.ValorNF * (PercDescontoSeguro/100) ELSE NULL END AS ValorSeguro
FROM ConhecimentosTransporte CT 
INNER JOIN Clientes_Complemento C ON CT.CodClientePagto = C.CodCliente WHERE (CT.Sequencial = 70000017621)

select * from ConhecimentosContasReceber_Recebidos where NumSeqConhecto = 70000017621

SELECT 
CASE 
	WHEN ISNULL(c.PercDescontoSeguro, 0) > 0 THEN 
		CT.ValorNF * (PercDescontoSeguro/100) ELSE NULL END AS ValorSeguro
FROM ConhecimentosTransporte CT 
INNER JOIN Clientes_Complemento C ON CT.CodClientePagto = C.CodCliente WHERE (CT.Sequencial = 70000017621)

select  PercDescontoSeguro, * from Clientes_Complemento where CodCliente = 1000446
--UPDATE Clientes_Complemento SET CreditoICMS = 'S' where CodCliente = 1000446

EXEC MonitoraMDFe 51016490



SELECT CTRC.CodUF, CTRC.NumConhecto,CodRelacaoFrete,* FROM ConhecimentosTransporte CTRC 
INNER JOIN ConhecimentosRelacaoFretes CRF ON CRF.NumSeqConhecto = CTRC.Sequencial
WHERE NumSeqConhecto <> 20000037498 AND NumFormularioCF = 533139

SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte where NumConhecto IN( 204477,193256) and CodUF = 'MS'
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte_log where NumConhecto IN( 204477,193256) and CodUF = 'MS' order by DataLog desc
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte where NumFormulario IN (  533139,548892)
SELECT  TOP(50) ModeloDocumento,SerieConhecto,NumFormulario,CIOT,* from conhecimentostransporte_log where NumFormulario IN (  533139,548892) ORDER BY DataLog desc


SELECT * from ConhecimentosTransporte where sequencial = 410000031566
EXEC VerificaCTe 410000031566
SELECT * from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000031566

EXEC VerificaCTe 10000026898

EXEC MonitoraMDFe 41031475
--UPDATE rodomaior_GSe.dbo.MDFe SET Status = 0 where Sequencial in(628535)
delete FROM RODOMAIOR_GSe.dbo.MDFe WHERE Sequencial = 628535

SELECT dhEmi, * from RODOMAIOR_GSe.dbo.NFe where ID IN ('35230548999494000358550010005545141005021541',
'35230548999494000358550010005545151047878626',
'35230650781434000144550010004160831610073207',
'35230650781434000144550010004164681516495700',
'35230650781434000144550010004175061890194100',
'35230650781434000144550010004176621310360100',
'35230650781434000144550010004178011564022202',
'35230650781434000144550010004179821200176401',
'35230650781434000144550010004183091958488001',
'35230650781434000144550010004184581186970004',
'35230650781434000144550010004186461131904107',
'35230650781434000144550010004187891730249001',
'35230650781434000144550010004189631943198506',
'35230750781434000144550010004192091626005401',
'35230750781434000144550010004193081721730400',
'35230750781434000144550010004196271329296207',
'35230750781434000144550010004197881599204608',
'35230750781434000144550010004199211207132008',
'35230750781434000144550010004200321150016400',
'35230750781434000144550010004202051676887100',
'35230750781434000144550010004204591479101008',
'35230750781434000144550010004206511833522906',
'35230750781434000144550010004207971458594800',
'35230750781434000144550010004209281613140301',
'35230750781434000144550010004210951333278808',
'35230750781434000144550010004212461748586400',
'35230750781434000144550010004214561282098003',
'35230750781434000144550010004215871805181301',
'35230750781434000144550010004217441869620806',
'35230748999494000358550010005657681019324387',
'35230750781434000144550010004220341869747300',
'35230850781434000144550010004225441204261409',
'35230850781434000144550010004227491595933009',
'35230850781434000144550010004229031367672105',
'35230850781434000144550010004231001627575103',
'35230850781434000144550010004232671926935009',
'35230850781434000144550010004234081516900000',
'35230850781434000144550010004236011342721807',
'35230850781434000144550010004237881709706505',
'35230850781434000144550010004240911944918004',
'35230850781434000144550010004242541584238500',
'35230850781434000144550010004244591547506103',
'35230850781434000144550010004247831147832706',
'35230850781434000144550010004249321322133800',
'35230850781434000144550010004250831254416800',
'35230850781434000144550010004254131344448201',
'35230850781434000144550010004258031193523507',
'35230948999494000358550010005731791033577249',
'35230950781434000144550010004278271656226506',
'35230950781434000144550010004283181414811006',
'35230950781434000144550010004295541691753509',
'35231050781434000144550010004299391620473703',
'35231050781434000144550010004302691569325700',
'35231050781434000144550010004304021368354801',
'35231050781434000144550010004308731194022705',
'35231050781434000144550010004314771583461906',
'35231050781434000144550010004326771546951909',
'35231150781434000144550010004328401804194000',
'35231150781434000144550010004329561101234003',
'35231150781434000144550010004331181272679603',
'35231150781434000144550010004332681236394200',
'35231150781434000144550010004333601172398801',
'35231150781434000144550010004334411598735900')

select * from RODOMAIOR_GSe.dbo.NFe where ID = '35230748999494000358550010005657681019324387'

SELECT * from ConhecimentosTransporte where NumConhecto IN (60599,60595) and CodUF = 'MT'
EXEC VerificaCTe 810000004652
--UPDATE rodomaior_GSe.dbo.CTE SET Status = 0 where Sequencial in(810000004652,40000042115)
EXEC VerificaCTe 40000042115