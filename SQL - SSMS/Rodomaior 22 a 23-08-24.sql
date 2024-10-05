use RODOMAIOR


EXEC MonitoraMDFe 4044065

--update RODOMAIOR_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 717706


select CPF,* from Motoristas where CodMotorista = 1078265 -- 720.896.870-53
select CPF,* from Motoristas_log where CodMotorista = 1078265 order by DataLog desc-- 720.896.870-53
--UPDATE Motoristas SET CPF =  '575.736.620-68' where CodMotorista = 1078265


SELECT * from CaramuruControle where ID = '6001880719'

SELECT * FROM PedidosFrete where CodControleCaramuru = '6001880719'


EXEC AutorizacaoCaramuru 31005209

SELECT * from ConhecimentosTransporte where NumConhecto = 1367 and CodUF = 'PR' and SerieConhecto = 'NE'
--UPDATE ConhecimentosTransporte SET DataEmissao = '2024-06-25 00:00:00' where Sequencial =  10000026543  -- 2024-06-25 00:00:00

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 1367                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT QuantidadeSaida,TarifaFreteEmpresa,ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 24161 and CodUF = 'MG' and SerieConhecto = 'NE'  -- 25574.000	/ 21.0526	/ 538.40
--UPDATE ConhecimentosTransporte set QuantidadeSaida =  31850.000,TarifaFreteEmpresa = 22.1604 , ValorTotalFrete = 705.81 where NumConhecto = 24161 and CodUF = 'MG' and SerieConhecto = 'NE'


select * from PermissoesAcesso where CodUsuario = 12877 AND CodPrograma = 'AlteraCIOT_CTRCcomCIOT'
SELECT * from OrdemEmbarque where NumOrdemEmbarque = 93003152
SELECT CIOT,* from OrdemEmbarque_log where NumOrdemEmbarque = 93003152 ORDER by DataLog desc


SELECT ChaveAcessoNFe,* from NotasFiscaisConhecimento where ChaveAcessoNFe IN ('35240828501213000620550010000001371459915355','35240828501213000620550010000001381898274793')

SELECT * from NotasFiscaisConhecimento where SequencialConhecimento IN (310000016199,310000016289) ORDER BY Sequencial
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240828501213000620550010000001371459915355' where SequencialConhecimento IN (310000016199) AND Sequencial = 2
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240828501213000620550010000001381898274793' where SequencialConhecimento IN (310000016199) AND Sequencial = 1

--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240828501213000620550010000001371459915355' where SequencialConhecimento IN (310000016289) AND Sequencial = 2
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240828501213000620550010000001381898274793' where SequencialConhecimento IN (310000016289) AND Sequencial = 1
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = null where SequencialConhecimento IN (310000016199)

--310000016199 / 310000016199 -- 35240828501213000620550010000001371459915355 / 35240828501213000620550010000001381898274793

--310000016289 /  310000016289 -- 35240828501213000620550010000001371459915355 / 35240828501213000620550010000001381898274793

SELECT NumFormulario ,* from ConhecimentosTransporte where NumConhecto = 9037 and CodUF = 'GO' and SerieConhecto = 'E' -- 582019
--UPDATE ConhecimentosTransporte set NumFormulario = 0 where NumConhecto = 9037 and CodUF = 'GO' and SerieConhecto = 'E'

--MS-205650
	SELECT NumFormulario ,* from ConhecimentosTransporte where NumConhecto = 205654 and CodUF = 'MS' 

exec VerificaCTe 60000046268

--DELETE from RODOMAIOR_GSe.dbo.cte where Sequencial = 60000046268

EXEC Grava_CTe 60000046268

