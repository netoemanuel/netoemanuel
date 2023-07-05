use LONTANO

SELECT * FROM ConhecimentosTransporte WHERE (Sequencial = 410000049553)
SELECT TOP (1) codViagemPamcard, * FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 410000049553 ORDER BY dataCriacao DESC
SELECT cf.CodViagemRepom,* FROM ConhecimentosTransporte ctrc JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial AND cf.CodAdmPagtoFrete = 12 WHERE CTRC.Sequencial = 410000049553
