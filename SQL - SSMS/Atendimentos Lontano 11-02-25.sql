exec VerificaCTe 640000070107
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 640000070107

SELECT * from ConhecimentosTransporte where NumConhecto = 649877 and CodUF = 'GO'

EXEC VerificaCTe 660000028727
--EXEC Grava_CTe 660000028727

SELECT * from ConhecimentosCliente where SequencialConhecimento = 660000028727
--delete from ConhecimentosCliente where SequencialConhecimento = 660000028727
--SequencialConhecimento	NumConhecimentoCliente	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumeroOC	NumeroPO
--660000028727	5625	1	10556	FOR	2025-02-11 08:09:50.000	NULL	NULL	NULL	NULL	NULL


EXEC MonitoraMDFe 27086556

--DELETE  from LONTANO_GSe.dbo.MDFe WHERE Sequencial = 1788931 

select  top (100) DataCadastro,IndDesabilitaCriticaPIS,* from Fornecedores order BY DataCriacao desc

EXEC MonitoraMDFe 22095793
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial =1789532