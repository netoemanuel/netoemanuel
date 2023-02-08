-- Atendimento a usuário(a): Thiago Freitas com ticket no Milvus #4793 sobre: "Excluir ordens em análise".

SELECT Situacao,  * FROM OrdemEmbarque WHERE NumOrdemEmbarque = 2150584 -- Teste
--DELETE FROM OrdemEmbarque WHERE NumOrdemEmbarque = 2150584
SELECT  Situacao,* FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2011-01-01' AND '2022-09-30 23:59:29'
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2011-01-01' AND '2012-01-01 23:59:29'--0
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2012-01-01' AND '2013-01-01 23:59:29'--0	
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2013-01-01' AND '2014-01-01 23:59:29'--0
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2014-01-01' AND '2015-01-01 23:59:29'--0
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2015-01-01' AND '2016-01-01 23:59:29'--0
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2016-01-01' AND '2017-01-01 23:59:29'--62 feito
--DELETE FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2016-01-01' AND '2017-01-01 23:59:29'
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2017-01-01' AND '2018-01-01 23:59:29'--406 feito
--DELETE FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2017-01-01' AND '2018-01-01 23:59:29'
SELECT * FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2018-01-01' AND '2022-09-30 23:59:29' --6571 feito
--DELETE FROM OrdemEmbarque WHERE Situacao = 6 AND DataCriacao BETWEEN '2018-01-01' AND '2022-09-30 23:59:29' 

SELECT oe.Situacao, * FROM LONTANO.dbo.OrdemEmbarque_Percurso oep
INNER JOIN OrdemEmbarque oe ON oe.NumOrdemEmbarque = oep.NumOrdemEmbarque
WHERE 
oe.Situacao = 6 and oe.DataOrdemEmbarque BETWEEN '2018-01-01' AND '2022-09-30 23:59:29'

--DELETE FROM LONTANO.dbo.OrdemEmbarque_Percurso WHERE NumOrdemEmbarque IN (3090755,3090755)