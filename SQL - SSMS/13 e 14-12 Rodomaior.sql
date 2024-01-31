use RODOMAIOR




exec VerificaCTe 350000016382

select * from ConhecimentosTransporte where NumConhecto = 171752 and CodUF = 'MS'

select * from ConhecimentosRelacaoFretes_log where NumSeqConhecto = 100000002358
select * from ConhecimentosRelFretes_Cheques_log where SeqConhecto = 100000002358 and CodTipoPagamento = 7
--delete from ConhecimentosRelFretes_Cheques where SeqConhecto = 100000002358 and CodTipoPagamento = 7

--Sequencial	SeqCheque	CodFilial	CodContaBancaria	NumeroCheque	CodRelacaoFrete	SeqConhecto	CodTipoPagamento	ValorCheque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--100000005234	100000003986	CG	86	10265533	10001008	100000002358	7	30.60	12196	MNV	2023-03-15 18:33:14.000	NULL	NULL	NULL


select IndDesabilitaCriticaANTT,* from Fornecedores where CodFornecedor = 51000799
select IndDesabilitaCriticaANTT,* from Fornecedores_log where CodFornecedor = 51000799


select * from PermissoesAcesso where CodUsuario = 12915
select * from PermissoesAcesso_log where CodUsuario = 12915


SELECT CodMovCaixa ,*FROM MovimentosCaixa WHERE (CodMovimentoBancario = 1520224) AND (CodTipoMovCaixa = 4)


SELECT COUNT(*) AS Registros FROM TiposMovimentacaoBancaria WHERE ContraPartida = 'Contas a Receber' and CodTipoMovBancaria = 28
SELECT COUNT(*) AS Registros FROM ContasRecebidas WHERE (CodMovCaixa = 101189413)
SELECT COUNT(*) AS Registros FROM ContasPagas WHERE (CodMovCaixa = 101189413)
SELECT CodMovCaixa FROM MovimentosCaixa WHERE (CodMovimentoBancario = 1520224) AND (CodTipoMovCaixa = 4)
SELECT CodTipoMovCaixa FROM TiposMovimentacaoBancaria WHERE (CodTipoMovBancaria = 28)



SELECT * FROM TiposMovimentacaoBancaria WHERE ContraPartida = 'Contas a Receber' and CodTipoMovBancaria = 28
SELECT * FROM ContasRecebidas_log WHERE (CodMovCaixa = 101189413)
SELECT * FROM ContasPagas_log WHERE (CodMovCaixa = 101189413)


exec VerificaCTe 50000024905
--UPDATE RODOMAIOR_GSe.dbo.CTe set Status = 0 where Sequencial = 50000024905


select * from RODOMAIOR_GSe.dbo.nfe where id = '51231214796754000295550100001637271459629239'