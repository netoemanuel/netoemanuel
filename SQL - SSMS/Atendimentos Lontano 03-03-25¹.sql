SELECT * FROM PermissoesAcesso WHERE (CodUsuario = 15563) AND (CodPrograma = 'frmPermissoesAcesso')
SELECT * FROM PermissoesAcesso WHERE CodUsuario in (15563,10650,15598) AND (CodPrograma = 'frmContasPagar')
--UPDATE PermissoesAcesso set TipoInclusao = 'N',TipoAlteracao = 'N', TipoExclusao = 'N', TipoConsulta = 'N', TipoImprimir = 'S', TipoEspecial = 'N' WHERE (CodUsuario = 15563) AND (CodPrograma = 'frmContasPagar')
SELECT * FROM PermissoesAcesso_log WHERE (CodUsuario = 15563)
SELECT * from LONTANO_GSe.dbo.NFe where ID = '51250348903821000407550010000118481000165065'
SELECT * from Usuarios where CodUsuario = 15563
select * from Usuarios where CodFilial = 'AGB' and SituacaoUsuario = 'A'
SELECT * FROM PermissoesAcesso where  (CodPrograma = 'frmContasPagar')
--INSERT INTO PermissoesAcesso values (15598,'frmContasPagar','N','N','N','N','S','N',14102,'CG',GETDATE (),null,null,null,NULL)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 547663                                           
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * FROM CartaFrete_Parcela where IdCartaFrete = 1765246
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1765246 and NumeroClienteParcela =  1



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'mt' AND CTRC.Numconhecto = 749552                                            
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * FROM CartaFrete_Parcela where IdCartaFrete = 1765340
--UPDATE  CartaFrete_Parcela SET Pago = 'S' where IdCartaFrete = 1765340 and NumeroClienteParcela =  1

EXEC MonitoraMDFe 48010137

SELECT dbo.LoadCargill('50250360498706029058550500000553641061899803') AS CTRC_Cliente
--Conversion failed when converting the varchar value '0242285, L' to data type int.
SELECT infcpl, *from LONTANO_GSe.dbo.NFe where IE = '283007591' ORDER BY DataCriacao desc
SELECT infcpl, *from LONTANO_GSe.dbo.NFe where ID = '50250360498706029058550500000553641061899803'
--UPDATE LONTANO_GSe.dbo.NFe set infcpl ='REMESSA P/ FORM. DE LOTES E DESCARGA NO RECINTO ALFADEGADO CARGILL AGRICOLA SA PARANAGUA - PR AV PORTUARIA NSN CAIS DO PORTO CNPJ 60498706000319 IE 1180138672Procedimento autorizado por Regime Especial - Processo E-SAP n. 390.821 de 24/01/2024MERCADORIA SOFRERA TRANSBORDO NA CARGILL AGRICOLA SA MARINGA -  ROD OSVALDO PACHECO DE LACERDA  N394 ST ZN 42 - BAIRRO  GLEBA PATRIMONIO MARINGA, CIDADE: MARINGA, CEP: 87065160, UF -PR, CNPJ: 60498706016070 IE: 9036754386. REMESSA PARA FORMACAO DE LOTE,  LOCAL DE DESCARGA SERA NO RECINTO ALFANDEGADO: CARGILL AGRICOLA SA PARANAGUA PORTO. AV PORTUARIA                    NSN  -  CAIS DO PORTO - PARANAGUA-PR - CEP 83221570 CNPJ 60498706000319 I.E 1180138672. Ato declaratario Executivo SRF09 No122 de 20 de Agosto de 2021. MOTORISTA RICARDO RODRIGUES ROSA, PLACA RWF6I61,  LOAD: 40242285 , LONTANO TRANSPORTES.Classif. Fiscal: 12019000   Nomedo Motorista: RICARDO RODRIGUES ROSA'where ID = '50250360498706029058550500000553641061899803'