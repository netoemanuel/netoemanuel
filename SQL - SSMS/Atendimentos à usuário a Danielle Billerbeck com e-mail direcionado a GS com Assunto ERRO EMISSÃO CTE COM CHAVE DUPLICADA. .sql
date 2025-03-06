use RODOMAIOR
select * FROM Usuarios where NomeUsuario LIKE '%Billerbeck%'

-- CT-e que precisam ser subistituidos, pegar o sequencial para puxar a ChaveAcessoNFE, pois ela da a critica no projeto.
SELECT * from ConhecimentosTransporte where NumConhecto = 77014    and CodUF = 'MG' -- Sequencial CT-e Antigo
SELECT * from ConhecimentosTransporte where NumConhecto = 76524 and CodUF = 'pr' -- Sequencial CT-e Novo
-- Apos pegar a chave, deixar ela guardada para voltar apos finalizar o processo, deixa o campo ChaveAcessoNFE para evitar a critica no manifestar
-- depois de terminar todo o processo e autorizar o novo CTe retornar a chave.
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in ( 670000001128) 
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = Null WHERE SequencialConhecimento = 670000001128 

--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = 'CHAVE' WHERE SequencialConhecimento = 00000000 
-- Apos gerar o CT-e no manifestar caso não autorize devido a CFOP, faze o updade abaixo. (caso precise apenas)
SELECT * from ConhecimentosTransporte where NumConhecto = 00000 and CodUF = 'UF'
--update ConhecimentosTransporte SET CodigoCFOP = '5.932' WHERE Sequencial = 000000000
--UPDATE RODOMAIOR_GSe.dbo.CTe SET CFOP = '5932', Status = 0 WHERE Sequencial = 000000000
EXEC VerificaCTe 000000000000

SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in  (180000014330,180000014329,180000014326,180000014342,180000014386,180000014387,180000014385)
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = null where SequencialConhecimento in  (180000014330,180000014329,180000014326,180000014342,180000014386,180000014387,180000014385)


SELECT * from ConhecimentosTransporte where NumConhecto = 88037 and CodUF = 'PR'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(340000027420)  --41240892660604012865550500000994501964651304
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (340000027420)
SELECT * from ConhecimentosTransporte where NumConhecto = 88038 and CodUF = 'PR'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(340000027421)  --41240892660604012865550500000994521643955273
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (340000027421)
SELECT * from ConhecimentosTransporte where NumConhecto = 88463  and CodUF = 'PR'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(340000027504)  --41240892660604012865550500000999081479686863
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (340000027504)


--RETIRAR DADOS E CHAVE DE ACESSO DA NF 165994 DO CTE MS-173807 / CANCELAMENTO DACTE RODOMAIOR
SELECT * from ConhecimentosTransporte where NumConhecto = 91554 and CodUF = 'PR'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(870000000947)  --50241003902129002046551200000231631919408431
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (870000000947)


--RETIRAR DADOS E CHAVE DE ACESSO DA NF 165994 DO CTE MS-173807 / CANCELAMENTO DACTE RODOMAIOR
SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto = 173807 and CodUF = 'MS'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(20000028993)  --50150760498706028752550500000206191550850308
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (20000028993)

SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto = 208072 and CodUF = 'MS'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(20000038496)  --50150760498706028752550500000206191550850308
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = null WHERE SequencialConhecimento in (20000028993)
--DELETE from NotasFiscaisConhecimento where SequencialConhecimento in(20000038496) 
--INSERT INTO NotasFiscaisConhecimento VALUES (20000038496,165994,1,'2023-04-19 00:00:00',128866.62,37020.000,NULL,10337,'DOU','2024-10-17 14:00:11.000',NULL,NULL,NULL,008,NULL,NULL,NULL,109209.00,6352,NULL,'50150760498706028752550500000206191550850308',01,'Não')

--ChaveAcessoNFe	SequencialConhecimento	NumeroNF	Sequencial	DataEmissaoNF	ValorNF	PesoNF	ValorICMS	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	SerieNF	BaseCalculoICMS	BaseCalcSubstTributaria	ValorICMSSubstTributaria	ValorProdutos	CodigoCFOP	PINSuframa	ChaveAcessoNFe	CodModelo	UtilizacaoNFe
--50150760498706028752550500000206191550850308	20000038496	165994	1	2023-04-19 00:00:00	128866.62	37020.000	NULL	10337	DOU	2024-10-17 14:00:11.000	NULL	NULL	NULL	008	NULL	NULL	NULL	109209.00	6352	NULL	NULL	01	Não


--EXCLUSÃO DA CHAVE DE ACESSO DA NF-E 60704
SELECT Sequencial,* from ConhecimentosTransporte where NumConhecto = 51104 and CodUF = 'MT'
SELECT  * from NotasFiscaisConhecimento where SequencialConhecimento in(40000038384)  --51240302937632003801550010000607041329240708
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where ChaveAcessoNFe in ( '51240302937632003801550010000607041329240708') -- 40000038384 
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = Null WHERE SequencialConhecimento in (40000038384)

SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(780000004074)
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where ChaveAcessoNFe in ( '31240312006181003672550010000542841000315320') -- 780000004074 /  novo 740000004292
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = '31240312006181003672550010000542841000315320' WHERE SequencialConhecimento in (780000004074)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(40000037962,40000037959)
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where ChaveAcessoNFe in ( '51240202937632003712550010000600631233462922') -- 40000037962
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where ChaveAcessoNFe in ( '51240202937632003712550010000600621116261842') -- 40000037959
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = Null WHERE SequencialConhecimento in (40000037962,40000037959)


--Exclusão da Chave de acesso
--670000001128 - 31231207571116001282550010000487091633070704 -  NF 48709

--EXCLUSÃO DA CHAVE NF-e Filial -PR - NFS 744
--410000027051 - 41231092660604013837550500001258231255398128 - NF 125823
--410000027051 - 41231092660604013837550500001258241548594262 - NF 125824

--EXCLUSÃO CHAVE DA NF-e CT-ES

--180000014330 11231107571116000391550010000011591634992609 - NF 1159
--180000014329 11231107571116000391550010000011601634992650 - NF 1160
--180000014326 11231107571116000391550010000011611349227353 - NF 1161
--180000014342 11231107571116000391550010000011631927885965 - NF 1163
--180000014386 11231107571116000391550010000011671492778442 - NF 1167
--180000014387 11231107571116000391550010000011681349227362 - NF 1168
--180000014385 11231107571116000391550010000011691634999103 - NF 1169

--Fwd: RECUSA / CTE COMPLEMENTAR / CAMINHAO PLACA PUU9J75 -NF VITERRA ( 15187 -15188 )/NF SIPAL (13322 - 13321 ) COLETA FAZ MAURINA SANTA CARME-MT / BERTOLINE

--40000036527 - 51231107670089001890550010000133221100963310 - NF 13322
--40000036528 - 51231107670089001890550010000133211154289300 - NF 13321

--Bloqueio na emissão de CT-e substituição Filial -TO
--970000003725 - 17231007571116001363550010000001691634929106 - NF 169

--20/07/2023
--EXCLUSÃO DA CHAVE DE ACESSO DA NF-E 2933 REFERENTE AO CT-E 76526
-- 340000023844 - 41230708013648000295550020000029331006984270 - NF 2933
-- 340000023842 - 41230708013648000295550020000029321006902357 - NF 2932


--RETIRAR CHAVE DE ACESSO DA NF DO CTE 86947

--760000014504 - 52230260498706006600550570000395621030854929 -  NF 39562

--Solicitação de Retirada de Chave de Acesso Notas Fiscais vinculadas ao CT-es MG 17/02/2023
--310000006563 - 32220816404287029137550010001765011510015180 - NF 176501
--310000006563 - 32220816404287029137550010001765021531526335 - NF 176502

-- E-mail - RETIRAR CHAVE DE ACESSO NF 13/12/2022
-- 73246, 73267, 73384, 73389 e 73393.
--760000011411 - 52220860498706006600550570000383561025016659  
--760000011415 - 52220860498706006600550570000383691025031982
--760000011447 - 52220860498706006600550570000383831025072335
--760000011449 - 52220860498706006600550570000383851025072941
--760000011451 - 52220860498706006600550570000383841025072596

-- E-mail - RETIRAR CHAVE DE ACESSO NF 29/11/2022
--72229.
--770000001099 - 31220760498706013488550640000104091024516344
select * from NotasFiscaisConhecimento where ChaveAcessoNFe = '50231260498706028752550500000692501044524740'


--EXCLUIR CHAVE DA  NF - 17/05
SELECT * from ConhecimentosTransporte where NumConhecto = 117353 and CodUF = 'GO'
SELECT ChaveAcessoNFe, * from NotasFiscaisConhecimento where SequencialConhecimento in(220000023301)  --52240500012377000160550030010040001653567410
--UPDATE NotasFiscaisConhecimento SET ChaveAcessoNFe = Null WHERE SequencialConhecimento in (220000023301)







