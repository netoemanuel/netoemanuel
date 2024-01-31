select RF.CodRelacaoFrete, * from Fornecedores 
inner join RelacaoFretes RF on RF.CodFornecedor = Fornecedores.CodFornecedor
where Fornecedores.CodClassifFornec = '1.01' and RF.CodSituacao = 1

SELECT COUNT(*) AS Registros FROM Fornecedores WHERE (CodFornecedor = 1001691) AND (CodClassifFornec = '1.01')

SELECT * FROM Fornecedores WHERE  (CodClassifFornec = '1.01')


select * from RelacaoFretes where CodRelacaoFrete =  5005589

select * from ContasPagar where CodContasPagar = 5005589 -- 99.80
--UPDATE ContasPagar set saldo = 0.00 where CodContasPagar = 5005589


select * from Programas where CodPrograma like '%repom%'

select * from Programas where CodPrograma like '%importar%'


select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)


exec MonitoraMDFe 35023096
exec MonitoraMDFe 66023515
exec MonitoraMDFe 22025206

select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe in (536885,536796)

--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe in (536086)

exec MonitoraMDFe 65003896
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial in (537172)

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 102561                              
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC



