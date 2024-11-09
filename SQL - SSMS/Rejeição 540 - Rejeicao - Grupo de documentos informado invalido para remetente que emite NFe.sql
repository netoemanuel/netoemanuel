--RETIRAR DADOS E CHAVE DE ACESSO DA NF 165994 DO CTE MS-173807 / CANCELAMENTO DACTE RODOMAIOR
SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto = 173807 and CodUF = 'MS'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(20000028993)  --50150760498706028752550500000206191550850308
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (20000028993)


--Provavelmente falta dados na tabela NotasFiscaisConhecimento geralemente a chave 
--540	Rejeicao: Grupo de documentos informado invalido para remetente que emite NFe

SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto = 208072 and CodUF = 'MS'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(20000038496)  --50150760498706028752550500000206191550850308
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (20000038496)
--DELETE from NotasFiscaisConhecimento where SequencialConhecimento in(20000038496) 
--INSERT INTO NotasFiscaisConhecimento VALUES (20000038496,165994,1,'2023-04-19 00:00:00',128866.62,37020.000,NULL,10337,'DOU','2024-10-17 14:00:11.000',NULL,NULL,NULL,008,NULL,NULL,NULL,109209.00,6352,NULL,'50150760498706028752550500000206191550850308',55,'Não')

--ChaveAcessoNFe	SequencialConhecimento	NumeroNF	Sequencial	DataEmissaoNF	ValorNF	PesoNF	ValorICMS	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	SerieNF	BaseCalculoICMS	BaseCalcSubstTributaria	ValorICMSSubstTributaria	ValorProdutos	CodigoCFOP	PINSuframa	ChaveAcessoNFe	CodModelo	UtilizacaoNFe
--50150760498706028752550500000206191550850308	20000038496	165994	1	2023-04-19 00:00:00	128866.62	37020.000	NULL	10337	DOU	2024-10-17 14:00:11.000	NULL	NULL	NULL	008	NULL	NULL	NULL	109209.00	6352	NULL	NULL	55	Não
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Analisar os dados na tabela NotasFiscaisConhecimento, possivelmente o modelo da chave esta incorreto ou diferente de 55
--693	Rejeicao: Grupo Documentos Transportados deve ser informado para tipo de servico diferente de redespacho intermediario e servico vinculado a multimodal
--SQL abaixo para validar a rejeição 693
SELECT  CTRC.Sequencial, NF.ChaveAcessoNFe,
--      PIN
		NF.PINSuframa, NF.CodUsuarioCriacao, NF.CodFilialCriacao, GETDATE()
FROM NotasFiscaisConhecimento NF
INNER JOIN ConhecimentosTransporte CTRC ON CTRC.Sequencial = NF.SequencialConhecimento
WHERE CTRC.Sequencial = 20000038496 AND NF.ChaveAcessoNFe IS NOT NULL and ISNULL(NF.CodModelo,'') = '55' AND ISNULL(CTRC.DataCTeAnulacao,'') = ''
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Não tem oque fazer, rejeição nova junto a CT-E 4.0
--930	Rejeicao: Chave de acesso da NFe transportada muito antiga - [chNFe: 50150760498706028752550500000206191550850308 ]



--Regravar CT-e
EXEC VerificaCTe 20000038496
--EXEC Grava_CTe 20000038496
--DELETE from RODOMAIOR_GSe.dbo.CTe where Sequencial = 20000038496
SELECT tpCTe,* from RODOMAIOR_GSe.dbo.CTe where Sequencial = 20000038496

