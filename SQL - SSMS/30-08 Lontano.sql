use LONTANO


select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 492939  and CodUF = 'MS' -- 18.5000
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 50.1041 where Sequencial = 500000005949

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 492941  and CodUF = 'MS' -- 18.5000
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 48.5625 where Sequencial = 500000005950

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 493574  and CodUF = 'MS' -- 20.5000
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 47.7083 where Sequencial = 500000005957

select ValorNF,SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 595093  and CodUF = 'GO' -- 2119196.00
--UPDATE ConhecimentosTransporte set ValorNF = 21191.9600,SeguroAverbado = 10.59,GRIS_NaoDescontado =27.11, Outros =null  where Sequencial = 410000050305
--UPDATE ConhecimentosTransporte set  Outros =null  where Sequencial = 410000050305

select ValorNF,SeguroAverbado, GRIS_NaoDescontado, * from ConhecimentosTransporte where NumConhecto = 595274  and CodUF = 'GO' -- 2119196.00
--UPDATE ConhecimentosTransporte set ValorNF = 21191.9600,SeguroAverbado = 10.59,GRIS_NaoDescontado =27.11, Outros =null  where Sequencial = 530000156344
--UPDATE ConhecimentosTransporte set SeguroAverbado = 10.59 where Sequencial = 530000156344


select * from NotasFiscaisConhecimento where SequencialConhecimento in (530000156344, 410000050305) 
--update NotasFiscaisConhecimento set ValorNF = 21191.96 where SequencialConhecimento in (530000156344, 410000050305) 

--SequencialConhecimento	NumeroNF	Sequencial	DataEmissaoNF	ValorNF	PesoNF	ValorICMS	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	SerieNF	BaseCalculoICMS	BaseCalcSubstTributaria	ValorICMSSubstTributaria	ValorProdutos	CodigoCFOP	PINSuframa	ChaveAcessoNFe	CodModelo	UtilizacaoNFe
--410000050305	41819	1	2023-08-24 00:00:00	2119196.00	20260.000	0.00	14595	CAT	2023-08-24 15:28:01.000	10001	CG	2023-08-24 19:09:45.420	77	0.00	0.00	0.00	21191.96	6505	NULL	52230860498706006600550770000418191040532695	55	Não - XML após Emissão
--530000156344	41819	1	2023-08-24 00:00:00	2119196.00	20260.000	0.00	12451	UBL	2023-08-25 14:13:52.000	NULL	NULL	NULL	77	0.00	0.00	0.00	21191.96	6505	NULL	52230860498706006600550770000418191040532695	55	CT-e ComplementoV
