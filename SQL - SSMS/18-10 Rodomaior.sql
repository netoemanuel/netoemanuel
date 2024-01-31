use RODOMAIOR


select * from FiliaisAgencias where CNPJ like '%11.595.217/0014-22%'
select * from FiliaisAgencias where CNPJ like '%11.595.217/0005-31%'
select * from RODOMAIOR_GSe.dbo.tblEmitentes
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select * from Veiculos where CodVeiculo = 350478
--select * from ConjuntosVeiculo where CodVeiculo = 350478

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Excluir Pagamento de saldo
select  * from ConhecimentosTransporte where NumConhecto = 3800 and CodUF = 'SC'  -- 11060192.00 / 5530.10
SELECT * FROM ConhecimentosRelFretes_Cheques CRFC where CRFC.SeqConhecto = 650000003780 and CRFC.NumeroCheque = 361122
--delete FROM ConhecimentosRelFretes_Cheques where SeqConhecto = 650000003780  and NumeroCheque = 361122

--Sequencial	SeqCheque	CodFilial	CodContaBancaria	NumeroCheque	CodRelacaoFrete	SeqConhecto	CodTipoPagamento	ValorCheque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--660000037575	660000032043	CG	47	361122	66002831	650000003780	2	2308.40	12816	UBA	2023-10-18 11:34:41.000	NULL	NULL	NULL



select * from ConhecimentosTransporte where NumConhecto = 97173 and CodUF = 'GO'
select * from ConhecimentosTransporte where NumConhecto = 97173 and CodUF = 'GO'

SELECT TOP (1) codViagemPamcard, codViagemRepom FROM CartaFrete WHERE codViagemPamcard IS NOT NULL AND Sequencial = 800000005649 ORDER BY dataCriacao DESC
