select * from ConhecimentosTransporte where NumConhecto = 403715 and CodUF = 'MG' and SerieConhecto = '0'  -- 751755950
SELECT NumeroCartao, * from OrdemEmbarque where NumOrdemEmbarque = 94060962 -- 747528164
--UPDATE OrdemEmbarque SET NumeroCartao = '751755950'  where NumOrdemEmbarque = 94060962

-- #18789 Pagamento de estadia no Cartao Repom 
--(quando o pagamento da estadia diretamente na conta do proprietário pois o cartão antigo está cancelado) limpar o numerdo do cartão da ordem
SELECT * from ConhecimentosTransporte where NumConhecto = 402532  and CodUF = 'MG' and SerieConhecto = '0'  -- 751755950
SELECT NumeroCartao, * from OrdemEmbarque where NumOrdemEmbarque = 98032931 -- 747527349
--UPDATE OrdemEmbarque SET NumeroCartao = NULL  where NumOrdemEmbarque = 98032931


SELECT CodMovBancaria FROM ChequesEmitidos_log WHERE (Sequencial = 30000224173)
SELECT * FROM MovimentacaoBancaria_log WHERE (CodMovBancaria = 3222210 ) AND AcaoLog = 'E'
SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 3222211 )

select * from ChequesEmitidos where NumeroCheque = 47961134


--insert into MovimentacaoBancaria
--(CodMovBancaria,CodFilial,CodContaBancaria,DataMovimento,DataCaixa,CodTipoMovBancaria,NumDocumento,ValorMovimento,CodMoeda,DebitoCredito,Historico,DataPrevista,DataLancamento,DataConciliacao,CodRecDesp,SituacaoCredito,Gerado,Estornado,CodMovBanc,CodTipoAplicacao,CodClienteDepPend,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodContrato,CodEmpresaParam,IndEnvioSPED,IndConciliacao)
--select 3222210,'CG',35,'2024-04-29 00:00:00','2024-04-29 00:00:00',5,47961134,154.97,1,'D','Pagto. CTRC GO-622728','2024-04-29 00:00:00',NULL,NULL,78,'Baixado','S','N',NULL,NULL,15098,'RVD','2024-04-29 00:00:00',null,NULL,NULL,NULL,3,NULL,NULL

--SELECT SUM(ValorDespesa) AS TotalDespesas FROM DespesasContasPagar WHERE (CodContasPagar = 1782736)

--	SELECT RetencaoContasPagar.CodContasPagar, ContasPagar.ValorDocumento, RetencaoContasPagar.ValorIRRF, RetencaoContasPagar.CodContasPagarIRRF, RetencaoContasPagar.ValorISSRetido, RetencaoContasPagar.CodContasPagarISS, RetencaoContasPagar.ValorINSS, RetencaoContasPagar.CodContasPagarINSS, RetencaoContasPagar.ValorRetido_RetFederal, RetencaoContasPagar.CodContasPagar_RetFederal 
--	FROM RetencaoContasPagar
--	INNER JOIN ContasPagar ON RetencaoContasPagar.CodContasPagar = ContasPagar.CodContasPagar 
--	WHERE (RetencaoContasPagar.CodContasPagarIRRF = 1782736) OR (RetencaoContasPagar.CodContasPagarISS = 1782736)
--	OR (RetencaoContasPagar.CodContasPagarINSS = 1782736) OR (RetencaoContasPagar.CodContasPagar_RetFederal = 1782736) 
--	ORDER BY ContasPagar.DataVencimento

--SELECT sum (ValorDespesa) FROM DespesasContasPagar WHERE (CodContasPagar = 1782736)
--SELECT * FROM ContasPagas WHERE (CodContasPagar = 1782736)


SELECT * FROM Veiculos_Log where CodVeiculo = 191160 and datalog = '2024-06-21 15:40:59.000'
--UPDATE Veiculos_Log set CodUsuarioLog = 10522, CodFilialLog = 'MAR' where CodVeiculo = 191160 and datalog = '2024-06-21 15:45:43.000'