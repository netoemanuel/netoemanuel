EXEC VerificaCTe 530000171999

EXEC VerificaCTe 530000172006
--UPDATE LONTANO_GSe.dbo.CTe set Status= 0 where Sequencial = 530000172006


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 539406                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT * FROM ComboBox_Apoio WHERE NomeComboBox = 'cboSituacaoPatrimonio' ORDER BY Codigo
--INSERT INTO ComboBox_Apoio VALUES (4, 'cboSituacaoPatrimonio','Excluido')

--UPDATE ComboBox_Apoio SET Descricao = 'Excluído' WHERE Codigo = 4  and NomeComboBox = 'cboSituacaoPatrimonio'

SELECT * from ComboBox_Apoio where Codigo = 4 
SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboEstadoConservacao' AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Ruim' where  NomeComboBox = 'cboEstadoConservacao' AND Codigo = 4 

SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboMotivoBaixa'   AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Sinistro' where  NomeComboBox = 'cboMotivoBaixa' AND Codigo = 4 

SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboPeriodicidadeCompromisso'   AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Quinzenal' where  NomeComboBox = 'cboPeriodicidadeCompromisso' AND Codigo = 4 

SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboSituacaoCompromisso'  AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Descartado' where  NomeComboBox = 'cboSituacaoCompromisso' AND Codigo = 4 

SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboTipoCompromisso' AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Cotação Frete' where  NomeComboBox = 'cboTipoCompromisso' AND Codigo = 4 

SELECT * from ComboBox_Apoio where  NomeComboBox = 'cboTipoOcorrencia' AND Codigo = 4 
--UPDATE ComboBox_Apoio SET Descricao = 'Teste Usuário' where  NomeComboBox = 'cboTipoOcorrencia' AND Codigo = 4 


select SituacaoPatrimonio from Patrimonio where SituacaoPatrimonio = 1

select NumPlaqIdentInicio,NumPlaqIdentFim,* FROM Patrimonio where Sequencial = 1004099
--UPDATE Patrimonio set FotoPatrimonio = NULL where  Sequencial = 1004099


--EXEC ConfereAjuste3Reais '2024-11-01', '2024-11-14 23:59', 'CONFERE'
--EXEC ConfereAjuste3Reais '2024-11-01', '2024-11-14 23:59', 'AJUSTA'


select TarifaFreteEmpresa,ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 66079 and CodUF = 'GO' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte SET ValorTotalFrete = 1592.00 where NumConhecto = 66079 and CodUF = 'GO' and SerieConhecto = '2'