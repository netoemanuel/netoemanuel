--Milvus #4341 - CTE REJEITADO / AJUSTE com Rejeição 
--812 - Rejeicao: A UF de fim da prestacao deve ser igual ao informado no CT-e complementado.
--Conferir cMunFim,xMunFim,UFFim devem estar iguais ao CT-e de origem.

Select cMunFim, xMunFim, UFFim, * from LONTANO_GSe.dbo.cte where sequencial in (000000000000, 000000000000) -- Sequencial dos dois CTEs
--UPDATE LONTANO_GSe.dbo.cte SET cMunFim = 4115200, xMunFim = 'MARINGA', UFFim = 'PR' where Sequencial = 230000037613

