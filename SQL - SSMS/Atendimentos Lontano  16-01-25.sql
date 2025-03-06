exec VerificaCTe 10000026640
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 10000026640
EXEC VerificaCTe 350000008777

select ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 90832 and CodUF = 'MT' and SerieConhecto = '2'  --1558.50
--UPDATE ConhecimentosTransporte set ValorTotalFrete = 1572.50 where NumConhecto = 90832 and CodUF = 'MT' and SerieConhecto = '2'

select * from MovimentosCaixa where CodMovCaixa = 101798664
--UPDATE MovimentosCaixa SET CodCaixa = 41 where CodMovCaixa = 101798664
SELECT CodFilial, CodContaBancaria,* FROM MovimentacaoBancaria WHERE (CodMovBancaria = 1623785)

SELECT * from Motoristas where CodMotorista = 1105002
select * from Veiculos where CodVeiculo = 4478
SELECT * from Motoristas_Veiculos where CodVeiculo = 4478 ORDER BY DataCriacao desc
SELECT * from Motoristas_Veiculos where CodVeiculo = 4478 and DataCriacao IN ('2025-01-11 08:15:23.590','2025-01-13 16:51:03.000','2025-01-13 16:51:24.000')
----DELETE from Motoristas_Veiculos where CodVeiculo = 4478 and DataCriacao IN ('2025-01-11 08:15:23.590','2025-01-13 16:51:03.000','2025-01-13 16:51:24.000')

--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1105002	4478	2025-01-11 00:00:00	Inserido Automaticamente	12197	RO	2025-01-11 08:15:23.590	NULL	NULL	NULL	NULL
--8000788	4478	2025-01-11 00:00:00	NULL	10691	RO	2025-01-13 16:51:03.000	NULL	NULL	NULL	NULL
--8000788	4478	2025-01-12 00:00:00	NULL	10691	RO	2025-01-13 16:51:24.000	NULL	NULL	NULL	NULL

EXEC MonitoraMDFe 52053043
EXEC MonitoraMDFe 71032146
SELECT TipoDispositivoValePedagio,* from OrdemEmbarque where NumOrdemEmbarque in (52053043,71032146)
SELECT * FROM AdmPagamentoFrete
select top (50)* from OrdemEmbarque where TipoDispositivoValePedagio = 2 ORDER BY DataCriacao desc


SELECT MAX(CodSequencialNF) + 1 AS Maior FROM NotasFiscaisContasPagar WHERE (CodContasPagar = 22009662)
select * from LONTANO_GSe.dbo.NFe where ID = '51250128883284000120550010000002911536491186'
select * from InfoNFe_CAP where Chave = '51250128883284000120550010000002911536491186'

EXEC VerificaCTe 350000008777

SELECT * from Motoristas where CodMotorista = 1106219
select * from Veiculos where CodVeiculo = 9530
SELECT * from Motoristas_Veiculos where CodVeiculo = 9530 ORDER BY DataCriacao desc
SELECT * from Motoristas_Veiculos where CodVeiculo = 9530 and DataCriacao IN ('2025-01-10 14:48:19.000')
--UPDATE Motoristas_Veiculos SET DataCadastro = '2025-01-11 00:00:00' where CodVeiculo = 9530 and DataCriacao IN ('2025-01-10 14:48:19.000')

SELECT * FROM LONTANO_GSe.dbo.NFe where serie = 50 and nNF = 73582	



--GIO123

SELECT SUM(ValorApropriacao) AS TotalRequisicao FROM ItensRequisicaoProdutos INNER JOIN ContasPagar_RequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = ContasPagar_RequisicaoProdutos.CodRequisicao WHERE (ContasPagar_RequisicaoProdutos.CodContasPagar = 2242477)
SELECT SUM(ServicosOrdemServico.ValorServico) AS TotalOS FROM ContasPagar_OrdemServico INNER JOIN ServicosOrdemServico ON ContasPagar_OrdemServico.CodOS = ServicosOrdemServico.CodOS WHERE (ContasPagar_OrdemServico.CodContasPagar = 2242477)
SELECT SUM(DespesasPneus.ValorDespesa) AS TotalDespesasPneus FROM ContasPagar_DespesasPneus INNER JOIN DespesasPneus ON ContasPagar_DespesasPneus.CodDespesaPneu = DespesasPneus.CodDespPneu WHERE (ContasPagar_DespesasPneus.CodContasPagar = 2242477)
SELECT 'R' AS Tipo, RequisicaoProdutos.CodRequisicao AS Codigo FROM ContasPagar_RequisicaoProdutos INNER JOIN RequisicaoProdutos ON ContasPagar_RequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao WHERE (ContasPagar_RequisicaoProdutos.CodContasPagar = 2242477) UNION SELECT 'O' AS Tipo, OrdemServico.CodOS AS Codigo FROM ContasPagar_OrdemServico INNER JOIN OrdemServico ON ContasPagar_OrdemServico.CodOS = OrdemServico.CodOS WHERE (ContasPagar_OrdemServico.CodContasPagar = 2242477) UNION SELECT 'P' AS Tipo, DespesasPneus.CodDespPneu AS Codigo FROM ContasPagar_DespesasPneus INNER JOIN DespesasPneus ON ContasPagar_DespesasPneus.CodDespesaPneu = DespesasPneus.CodDespPneu WHERE (ContasPagar_DespesasPneus.CodContasPagar = 2242477)
SELECT 'R' AS Tipo, RequisicaoProdutos.CodRequisicao AS Codigo FROM ContasPagar_RequisicaoProdutos INNER JOIN RequisicaoProdutos ON ContasPagar_RequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao WHERE (ContasPagar_RequisicaoProdutos.CodContasPagar = 2242477) UNION SELECT 'O' AS Tipo, OrdemServico.CodOS AS Codigo FROM ContasPagar_OrdemServico INNER JOIN OrdemServico ON ContasPagar_OrdemServico.CodOS = OrdemServico.CodOS WHERE (ContasPagar_OrdemServico.CodContasPagar = 2242477) UNION SELECT 'P' AS Tipo, DespesasPneus.CodDespPneu AS Codigo FROM ContasPagar_DespesasPneus INNER JOIN DespesasPneus ON ContasPagar_DespesasPneus.CodDespesaPneu = DespesasPneus.CodDespPneu WHERE (ContasPagar_DespesasPneus.CodContasPagar = 2242477)



SELECT * FROM 
ContasPagar_OrdemServico 
INNER JOIN ServicosOrdemServico ON ContasPagar_OrdemServico.CodOS = ServicosOrdemServico.CodOS
WHERE (ContasPagar_OrdemServico.CodContasPagar = 2242477)


EXEC MonitoraMDFe 64081977 
--select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1774902 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1774902
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941250000571716', nProt = '941250000571716' where Sequencial = 1774902 and ID = 25565231 
----coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1774902 and ID = 25565231 


EXEC MonitoraMDFe 64081978  
