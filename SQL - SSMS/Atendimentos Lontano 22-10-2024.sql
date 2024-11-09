SELECT * FROM NotasFiscaisConhecimento where SequencialConhecimento = 730000136754
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = null, CodModelo = '1' where SequencialConhecimento = 730000136754 -- 35240807526557000533550010010768131783703189 / 55
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240807526557000533550010010768131783703189', CodModelo = '55' where SequencialConhecimento = 730000136754

select * from LONTANO_GSe.dbo.cte where Sequencial = 730000136754
--delete from LONTANO_GSe.dbo.cte where Sequencial = 730000136754
--EXEC Grava_CTe 730000136754

exec VerificaCTe 730000136754


SELECT * from ContasPagar where CodContasPagar = 1971116
SELECT * from ContasPagas where CodContasPagar = 1972725
select * from MovimentosCaixa where CodMovCaixa = 101768431
select * from MovimentosCaixa where ValorMovimento = 2002.96 and CodFilial = 'BJG'  ORDER BY DataMovimento desc
select * from MovimentosCaixa_log where CodFilial = 'BJG' and AcaoLog = 'E' and CodCaixa = 8  ORDER BY DataMovimento desc
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-13 00:00:00','2024-09-13 00:00:00',6,2002.96,1,'Premiação GO','2024-09-13 00:00:00','C','09/2024','08/24 Premiação GO','C',NULL,'Normal','S','N',NULL,101768431,'N',NULL,NULL,NULL,NULL,'2024-09-13 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-16 09:53:52.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,3,NULL,NULL,NULL)
 --SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)


SELECT * from ContasPagar where CodContasPagar = 1971116
select * from MovimentosCaixa where codfilial = 'CG' and codcaixa = 1569 order BY datacriacao desc
select * from MovimentosCaixa where historico = '08/24 - Salários Ref. Mes' order BY datacriacao desc
select * from MovimentosCaixa where  CodFilial = 'RO' AND codcaixa = 1711 and historico = '08/24 - Salários Ref. Mes'  ORDER BY DataMovimento desc
SELECT * from MovimentosCaixa where CodMovCaixa =  101786593
--DELETE from MovimentosCaixa where CodMovCaixa =  101786593
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-10 00:00:00','2024-09-10 00:00:00',6,2526.47,1,'08/2024 Salario','2024-09-10 00:00:00','C','09/2024','08/24 - Salários Ref. Mes','C',NULL,'Normal','S','N',NULL,101768431,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00,NULL,10560','CG','2024-09-10 15:35:44.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL)

SELECT * from ContasPagar where CodContasPagar = 1977369
SELECT * from ContasPagas where CodContasPagar = 1977369
select * from MovimentosCaixa where codfilial = 'CG' and codcaixa = 1569 order BY datacriacao desc
select * from MovimentosCaixa where historico = '09/24 - Salários Ref. Mes' order BY datacriacao desc
select * from MovimentosCaixa where  CodFilial = 'RO' AND codcaixa = 1711  ORDER BY DataMovimento desc
SELECT * from MovimentosCaixa where CodMovCaixa =  101786593
--DELETE from MovimentosCaixa where CodMovCaixa =  101786593

--Credito
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-10 00:00:00','2024-09-10 00:00:00',6,2526.47,1,'08/2024 Salario','2024-09-10 00:00:00','C','09/2024','08/24 - Salários Ref. Mes ','C',NULL,'Normal','S','N',NULL,101768431,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-10 15:35:44.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL)
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-10-04 00:00:00','2024-10-04 00:00:00',6,2553.64,1,'09/2024 Salario','2024-10-04 00:00:00','C','10/2024','09/24 - Salários Ref. Mes ','C',NULL,'Normal','S','N',NULL,101781999,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-10-04 15:12:15.000',NULL,NULL,NULL,NULL,'2024-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL)

--debito
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-10 00:00:00','2024-09-10 00:00:00',1,2526.47,1,'08/2024 Salario','2024-09-10 00:00:00','P','09/2024','08/24 - Salários Ref. Mes ','D',652,'Normal','S','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-10 15:35:44.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL)
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-10-04 00:00:00','2024-10-04 00:00:00',1,2553.64,1,'09/2024 Salario','2024-10-04 00:00:00','P','10/2024','09/24 - Salários Ref. Mes ','D',652,'Normal','S','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-10-04 15:12:15.000',NULL,NULL,NULL,NULL,'2024-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL)


select * from MovimentosCaixa where  CodFilial = 'BJG' AND codcaixa = 8  ORDER BY DataMovimento desc
select * from MovimentosCaixa where  CodFilial = 'BJG' AND codcaixa = 7  ORDER BY DataMovimento desc
--UPDATE MovimentosCaixa SET NumDocumento = '09/2024 Salario' where CodMovCaixa = 101786601
--DELETE from MovimentosCaixa where CodMovCaixa in (101786623 ,  101786620,101786622,101786618)



SELECT * from ContasPagar where CodContasPagar = 1976828
SELECT * from ContasPagas where CodContasPagar = 1976828
select * from MovimentosCaixa where codfilial = 'CG' and codcaixa = 1569 order BY datacriacao desc
select * from MovimentosCaixa where historico = '09/24 - Salários Ref. Mes ' order BY datacriacao desc
select * from MovimentosCaixa where  CodFilial = 'ANP'   ORDER BY DataMovimento desc
SELECT * from MovimentosCaixa where CodMovCaixa =  101781252

--Credito
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-10 00:00:00','2024-09-10 00:00:00',6,2526.47,1,'08/2024 Salario','2024-09-10 00:00:00','C','09/2024','08/24 - Salários Ref. Mes ','C',NULL,'Normal','S','N',NULL,101768431,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-10 15:35:44.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL)
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-10-04 00:00:00','2024-10-04 00:00:00',6,2553.64,1,'09/2024 Salario','2024-10-04 00:00:00','C','10/2024','09/24 - Salários Ref. Mes ','C',NULL,'Normal','S','N',NULL,101781999,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-10-04 15:12:15.000',NULL,NULL,NULL,NULL,'2024-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL)
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'ANP',60,'2024-10-15 00:00:00','2024-10-15 00:00:00',6,500.49,1,'Premiação','2024-10-15 00:00:00','C','10/2024','09/24 Premiação','C',NULL,'Normal','S','N',NULL,101781252,'N',NULL,NULL,NULL,NULL,'2024-10-15 00:00:00.000',NULL,'2024-10-01 00:00:00',NULL,10560,'CG','2024-10-16 10:04:41.000',NULL,NULL,NULL,NULL,'2024-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL)

--debito
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-09-10 00:00:00','2024-09-10 00:00:00',1,2526.47,1,'08/2024 Salario','2024-09-10 00:00:00','P','09/2024','08/24 - Salários Ref. Mes ','D',652,'Normal','S','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-09-10 15:35:44.000',NULL,NULL,NULL,NULL,'2024-09-01 00:00:00',NULL,NULL,NULL,NULL,NULL)
--INSERT INTO MovimentosCaixa VALUES ((SELECT MAX(CodMovCaixa) + 1 AS Maior FROM MovimentosCaixa WHERE (CodMovCaixa BETWEEN 100000001 AND 199999999)),'BJG',8,'2024-10-04 00:00:00','2024-10-04 00:00:00',1,2553.64,1,'09/2024 Salario','2024-10-04 00:00:00','P','10/2024','09/24 - Salários Ref. Mes ','D',652,'Normal','S','N',NULL,NULL,'N',NULL,NULL,NULL,NULL,'2024-09-10 00:00:00.000',NULL,'2024-09-01 00:00:00',NULL,10560,'CG','2024-10-04 15:12:15.000',NULL,NULL,NULL,NULL,'2024-10-01 00:00:00',NULL,NULL,NULL,NULL,NULL)

	SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
	INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
	INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
	inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
	LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
	WHERE CTRC.SerieConhecto = '0'AND  CTRC.Numconhecto = 630675    --AND CTRC.CodUF = 'GO' AND                                   
	ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT NumeroCartao,* from OrdemEmbarque where NumOrdemEmbarque =  3188048
--UPDATE OrdemEmbarque set NumeroCartao = null where NumOrdemEmbarque =  3188048 -- 752272187