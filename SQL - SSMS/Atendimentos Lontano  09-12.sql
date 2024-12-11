

EXEC MonitoraMDFe 2173093
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1766042 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1766042
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '951240020166264', nProt = '951240020166264' where Sequencial = 1766042 and ID = 25511946 
--coloca cstat = 204 e status do mdfe = 2 cstat = 204
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1766042 and ID = 25511946 

--select mvoe.NumOrdemEmbarque, mdfe.Sequencial, mdfe.dhEmi, mdfe.[Status]
--from LONTANO_GSe.dbo.mdfe mdfe 
--join MDFeViagem_OrdemEmbarque mvoe on mvoe.SeqViagem = mdfe.CodManifestoCarga
--where mdfe.status = 1 
--	and mdfe.sequencial not in (select Sequencial from LONTANO_GSe.dbo.MDFe_LOG where codLog = 22 and cstat = 100)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * from ContasPagar where CodContasPagar = 2240164 -- 251.66
--UPDATE ContasPagar SET ValorPagar = ValorDocumento where CodContasPagar = 2240164 
SELECT * from ContasPagas where CodContasPagar = 2240164
select * from MovimentosCaixa where CodMovCaixa = 101820223
select * from DespesasRateioContasPagar where  CodContasPagar = 2240164 --251.66
--UPDATE DespesasRateioContasPagar set ValorDespesaRateio = 250.00 where  CodContasPagar = 2240164 AND CodTipoDespesa = 478

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


select PisPasep, * FROM Fornecedores where CodFornecedor = 6002086  -- 16899090261  / 129.48291.38-2
--UPDATE  Fornecedores set PisPasep = '168.99090.26-1' where CodFornecedor = 6002086