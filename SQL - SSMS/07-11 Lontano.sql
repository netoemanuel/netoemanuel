use LONTANO	

select * from Veiculos where PlacaVeiculo = 'REZ4G43'
select * from Veiculos where CodVeiculo = 4643
select * from ConjuntosVeiculo where CodVeiculo = 4643
--insert into ConjuntosVeiculo (CodVeiculo,	CodTipoConjunto,	CodVeiculoAdicional1,	CodVeiculoAdicional2,	CodVeiculoAdicional3,	ComprimentoConjunto,	CodUsuarioCriacao,	CodFilialCriacao,	DataCriacao,	CodUsuarioAlteracao,
--CodFilialAlteracao,	DataAlteracao,	CodTipoVeicConj, Eixos)
--select 4643,	2,	4274,	4282,	4281,	25.50,	14102,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	1,	NULL
select * from Veiculos where CodVeiculo = 1583	
select * from ConjuntosVeiculo where CodVeiculo = 1583
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT MAX(SeqItem) AS MaiorSeq FROM VendasItem WHERE (CodVenda = 100000801) AND (ISNULL(ValorICMS, 0) > 0) -- erro Null
SELECT COUNT(*) AS Registros FROM VendasItem WHERE (CodVenda = 100000801) AND (SituacaoTributaria IS NULL OR CodCFOP IS NULL) -- SQL da crictica. 
SELECT SituacaoTributaria, CodCFOP, * FROM VendasItem WHERE (CodVenda = 100000801) AND (SituacaoTributaria IS NULL OR CodCFOP IS NULL)
select  * from Vendas where CodVenda = 100000801
select * from Vendas where DescNaturezaOperacao = 'VENDA DE BEM DO ATIVO IMOBILIZADO' order by DataVenda desc
select * from matriztributaria where codtipooperacao = 2
select * from dbo.usamatriztributaria(100000801)

select * from matriztributaria where codtipooperacao = 2
select * from Usuarios where CodUsuario = 10128

select CFOP, CSTPISCOFINS,* from dbo.usamatriztributaria(100000766) -- ultima nota emitida
select CFOP, CSTPISCOFINS,* from dbo.usamatriztributaria(100000801) -- nova nota

exec VerificaNFe 100000801

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT Historico, MesAnoCompetencia, MesAnoRecAdicionais,* FROM MovimentosCaixa WHERE CodMovCaixa = 101579347
--UPDATE  MovimentosCaixa SET MesAnoCompetencia = '07/2023', MesAnoRecAdicionais = '2023-07-01 00:00:00'  WHERE CodMovCaixa = 101579347
--Historico	MesAnoCompetencia	MesAnoRecAdicionais
--07/23 - Alelo Mobilidade	08/2023	2023-08-01 00:00:00

SELECT Historico, MesAnoCompetencia, MesAnoRecAdicionais FROM MovimentosCaixa WHERE CodMovCaixa = 101594170
--Historico	MesAnoCompetencia	MesAnoRecAdicionais
--08/23 - Alelo Mobilidade	09/2023	2023-09-01 00:00:00
--UPDATE  MovimentosCaixa SET MesAnoCompetencia = '08/2023', MesAnoRecAdicionais = '2023-08-01 00:00:00'  WHERE CodMovCaixa = 101594170

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ChequesEmitidos where CodFilial = 'CG' and CodContaBancaria = 63 and ValorCheque = 109.63

select * from ChequesEmitidos where NumeroCheque = 513912


use LONTANO


SELECT * from ComplementoConhecimento where NumSeqConhecto = 730000132400



select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 693462 and CodUF = 'MT' -- Emitido/Cancelado
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where Sequencial = 220000070852

exec VerificaCTe 220000070852

select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 192918 and CodUF = 'PR' 

exec VerificaCTe 490000022918