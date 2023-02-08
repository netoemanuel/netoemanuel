

-- Atendimento Eni Grupo RDM
--EXEC MonitoraMDFe 5020813
--select Status, * from RODOMAIOR_GSe.dbo.MDFe where dhEmi >='2022-12-01' and Status = 2 order by DataCriacao DESC
--select Status, * from RODOMAIOR_GSe.dbo.MDFe where dhEmi >='2022-12-01' and Status not in (1,5,9) order by DataCriacao DESC
--select Status, * from RODOMAIOR_GSe.dbo.MDFe WHERE Id = '52221211595217000531580050000761211004294602'

---------------------------------
--Geração de faturas efrete  / Atendimento e-mail 01/12/2022
--	
--SELECT COUNT(*) AS Registros FROM FaturasEFreteCredenciado  WHERE (ID_Fatura = '1024')    -- view duplicada da Lontano para RDM
--EXEC GeraFaturaEfreteCredenciado   -- Procedure duplicada da Lontano para RDM
-- [RateioCAPFaturaEfrete]

-----------------------------------------

--05/12/2022 - Bruna

--SELECT *  FROM ContasPagar WHERE (CodContasPagar = 1342553)
--select * from contaspagar
--select  * from RODOMAIOR.dbo.PlanoContasDespesa   order by DataCriacao desc
--select * from PlanoContasDespesa where CodTipoDespesa = 608
--select CodContaContabil2, * from PlanoContasDespesa where CodTipoDespesa = 608
--SELECT TipoRegraOrcamento, * FROM OrcamentoEmpresarial 
--CodTipoDespesa	DescTipoDespesa	ClassifDespesa	NivelContaDespesa	TipoContaDespesa	CodContaContabil	CodContaContabilProvisao	IndRateio	CodFormaRateio	SituacaoConta	CodHistoricoPadrao	CodDemonstrativoResultado	CodDemonstrativoFrota	ComparativoFaturamento	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndCreditoPisCofins	IndItensSPED	VisualizacaoRestrita	ObrigaCTRC
--CodTipoDespesa	DescTipoDespesa	ClassifDespesa	NivelContaDespesa	TipoContaDespesa	CodContaContabil	CodContaContabilProvisao	IndRateio	CodFormaRateio	SituacaoConta	CodHistoricoPadrao	CodDemonstrativoResultado	CodDemonstrativoFrota	ComparativoFaturamento	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndCreditoPisCofins	IndItensSPED	VisualizacaoRestrita	CodContaContabil2	CorOrcamento	TipoRegraOrcamento
--INSERT INTO PlanoContasDespesa
--VALUES ('608',	'Taxa de Registro de Ciot.','1.04.004.608',	'Analítico','Operacional',	1697,	NULL,	'N',	NULL, 'A',	NULL,	51,	NULL,	NULL,	10128,	'CG',	'2015-11-10 10:17:42.000',	10002,	'CG',	'2020-05-19 16:46:42.000',	'N', 'N','N',Null,Null, null)
--SELECT CodFilial, CodCentroCusto, Percentual, TotalFilial FROM RateioCAPFaturaEfrete(1027)

--------------------------
--06/12
--SELECT * FROM RateioContasPagar WHERE (CodContasPagar = 1342564) AND (CodFilial = 'UBE') AND (CodCentroCusto = 1)
--SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1342573)
--SELECT * FROM RateioContasPagar WHERE (CodContasPagar = 1342565) AND (CodFilial = 'DOU') AND (CodCentroCusto = 1)
--SELECT CodFilial, CodCentroCusto, Percentual, TotalFilial FROM RateioCAPFaturaEfrete (1031)
