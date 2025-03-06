
SELECT TOP 1 CodFilial, CodContaBancaria,* FROM ContasBancarias WHERE (IndPagtoPedagioPosREPOM = 'S')


SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte WHERE ISNULL(TipoDispositivoValePedagio, -1) = 5 AND Sequencial = 220000081681

SELECT TipoDispositivoValePedagio, * FROM ConhecimentosTransporte WHERE   Sequencial = 220000081681 -- 5
select TipoDispositivoValePedagio, * from OrdemEmbarque where NumOrdemEmbarque = 10088833
--UPDATE ConhecimentosTransporte set TipoDispositivoValePedagio = 1 WHERE   Sequencial = 220000081681


select ct.TipoDispositivoValePedagio,oe.TipoDispositivoValePedagio, * from ConhecimentosTransporte CT
JOIN OrdemEmbarque oe ON CT.CodOrdemEmbarque = oe.NumOrdemEmbarque

WHERE CT.TipoDispositivoValePedagio <> oe.TipoDispositivoValePedagio ORDER by CT.DataCriacao desc