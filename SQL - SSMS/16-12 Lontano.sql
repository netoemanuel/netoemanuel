use LONTANO
select * from ConhecimentosTransporte where NumConhecto  = 16592  and CodUF = 'PA'
exec VerificaCTe 890000030413
--exec Grava_CTe 890000030413

select * from OrdemEmbarque where NumOrdemEmbarque = 11020034
select CIOT, NumFormulario,* from ConhecimentosTransporte where NumConhecto  = 698115   and CodUF = 'MT'
select CIOT,QtdeConhectosEmitir,* from OrdemEmbarque_log where NumOrdemEmbarque = 11020034 order by DataLog desc
select CIOT, NumFormulario,* from ConhecimentosTransporte_log where NumConhecto  = 698115   and CodUF = 'MT'

SELECT 
	ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC',
	O.DataCriacao,
	APF.Descricao,
	O.NumSeq,
	O.SeqConsulta,
	O.DescricaoOcorrencia,
	O.tipoOcorrencia,
	O.Erro,
	O.CodAdmPagtoFrete

	--CTRC.CodOrdemEmbarque, CTRC.Sequencial,  CTRC.CIOT, O.* 
FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
INNER JOIN AdmPagamentoFrete APF ON APF.CodAdmFrete = O.CodAdmPagtoFrete
WHERE 
CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto in (698115)
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC


exec VerificaCTe 110000018833
select * from PermissoesAcesso where CodUsuario = 12786
select * from PermissoesAcesso where CodUsuario = 14102

exec VerificaCTe 370000003540
Select PisPasep,* From Fornecedores 
INNER JOIN ComboBox_ComprasEstoque ON Fornecedores.CodTipoFornecedor = ComboBox_ComprasEstoque.Codigo
AND ComboBox_ComprasEstoque.NomeComboBox = 'cboTipoFornecedor' 
WHERE (Fornecedores.CodFornecedor = 1000096) 
AND (Fornecedores.SituacaoFornecedor = 'A') AND (Fornecedores.ClassifFiscal = 'Física')
select * from Fornecedores where CodFornecedor = 1000096
select PisPasep,IndDesabilitaCriticaPIS,* from Fornecedores_log where CodFornecedor = 1000096 order by DataLog desc
select * from OrdemEmbarque_log where CodMotorista = 1000039 and AcaoLog = 'I'

select  * from OrdemEmbarque where NumOrdemEmbarque = 16024465

select FotoMotorista,* from Motoristas where CodMotorista = 1000039
select FotoMotorista,* from Motoristas_log where CodMotorista = 1000039

select  CodMotorista,CodFornecedor,* from OrdemEmbarque where NumOrdemEmbarque = 16024466
--UPDATE OrdemEmbarque set  CodMotorista = 1000039, CodFornecedor = 1000096 where NumOrdemEmbarque = 16024466

select CodFornecedor,* from ConhecimentosTransporte where NumConhecto = 99000356 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set CodMotorista = 1000039, CodFornecedor = 1000096  where Sequencial = 160000022569
