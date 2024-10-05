SELECT * from EstoqueProdutos where CodFilial = 'cg' and CodDeposito = 10 AND CodProduto = 4740 and MesAno = '09/2024'

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida 
FROM MovimentoEstoque
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodProduto = 4740) AND (DataMovimento >= '08/28/2024 00:00:00' AND DataMovimento <= '09/16/2024 23:59:29') 
ORDER BY DataMovimento, EntradaSaida

SELECT * FROM MovimentoEstoque where Sequencial = 328819
SELECT * FROM MovimentoEstoque where Sequencial = 328819
--delete MovimentoEstoque where Sequencial = 328819

--                                CodMovEstoque	CodFilial	     CodDeposito	CodProduto	DataMovimento	CodTipoMovEstoque	NumDoc	QtdeMovimento	ValorMovimento	ValorMovtoInd	EntradaSaida	Situacao	TipoMovimento	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--insert INTO MovimentoEstoque VALUES( 100316785,	'CG',	9,	4740,	'2024-08-28 00:00:00',	9,	1023401,	5000.000,	27200.00,	NULL,	'Entrada',	'Normal',	'C',	328819,	12949,	'CG',	'2024-08-29 11:54:38.000',	NULL,	NULL,	NULL)



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 196253                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT COUNT(*) AS Registros FROM ParametrosGerais WHERE SequenciaPlacasDenatran < 'U'
SELECT distinct (SequenciaPlacasDenatran)FROM ParametrosGerais WHERE SequenciaPlacasDenatran < 'U'

SELECT PlacaVeiculo,DataCriacao, * from Veiculos where PlacaVeiculo LIKE 'U%'




SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 80695                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 62356                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'DF' AND CTRC.Numconhecto = 133                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select Saldo,* from ContasPagar where CodContasPagar = 51003903  -- 972.90
--UPDATE ContasPagar set Saldo = 0 where CodContasPagar = 51003903

SELECT OptanteSimples,* FROM Fornecedores order by DataCriacao desc

--39330229000120

--46098615000101



exec MonitoraMDFe 41032223

exec MonitoraMDFe 41032195

--DELETE from RODOMAIOR_GSe.dbo.mdfe_log WHERE id = 7064071 and Sequencial = 638656

SELECT Status,* from  RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe  = 638656
 

 select * from Usuarios where CodUsuario = 11803