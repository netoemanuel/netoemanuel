use rodomaior

select * from Usuarios where CodUsuario = 13065
select top (1000) * from RODOMAIOR.dbo.CTRC_Lar where Situacao not IN ('Pendente') order BY DataCriacao desc
SELECT SerieConhecto,* from ConhecimentosTransporte where Sequencial IN (80000020152,20000037627,300000001570,80000020464,10000010216)


exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'CTRC_Lar', 'Tudo'
select top (1000) * from RODOMAIOR.dbo.CTRC_Lar where SerieConhecto = 'NFS'
SELECT ctrc.TarifaFreteEmpresa, lar.* FROM Rodomaior.dbo.CTRC_Lar lar 
INNER JOIN RODOMAIOR.dbo.ConhecimentosTransporte ctrc ON ctrc.Sequencial = lar.Sequencial 
WHERE lar.Sequencial = 10000010216 AND lar.Situacao IN ('Pendente', 'Erro')

EXEC MonitoraMDFe 22030000
SELECT * from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 632891
--delete  from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 632891
--UPDATE RODOMAIOR_GSe.dbo.mdfe SET Status = 0 WHERE Sequencial = 632891
--Sequencial	CodManifestoCarga	CodAutorizacaoViagem	Id	cUF	tpAmb	tpEmit	mod	serie	nMDF	cMDF	cDV	modal	dhEmi	tpEmis	procEmi	verProc	UFIni	UFFim	cMunCarrega	xMunCarrega	CNPJ	IE	xNome	xFant	xLgr	nro	xCpl	xBairro	cMun	xMun	CEP	UF	fone	email	qCTe	qCT	qNFe	qNF	qMDFe	vCarga	cUnid	qCarga	infAdFisco	infCpl	CodFilialCriacao	CodUsuarioCriacao	DataCriacao	CodFilialAlteracao	CodUsuarioAlteracao	DataAlteracao	Status	ID_Lote	tpTransp	qrCodMDFe	QRCodeImg
--632891	723139	723139	52240811595217000531580050001135021007231390	52	1	1	58	5	113502	00723139	0	1	2024-08-30 14:22:12.000	1	0	GS-e Versao 3.0	GO	SP	5200134	ACREUNA	11595217000531	105009482	RODOMAIOR TRANSPORTES LTDA	JATAI	RODOVIA BR 364		NULL	POSTO ALDO	5211909	JATAI	75801615	GO	64-3632-202	jatai@rodomaior.com.br	NULL	NULL	NULL	NULL	NULL	0.00	01	0.0000	NULL	Seq.MDFe Viagem: 723139	IND	13067	2024-08-30 14:22:12.083	NULL	NULL	NULL	0	632891	1	https://dfe-portal.svrs.rs.gov.br/mdfe/qrCode?chMDFe=52240811595217000531580050001135021007231390&tpAmb=1	NULL

EXEC VerificaCTe 220000024801
SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte WHERE (CodOrdemEmbarque = 22030000) AND (CIOT IS NULL) AND (SituacaoConhecto <> 'Cancelado')
SELECT SituacaoConhecto,CIOT,* FROM ConhecimentosTransporte WHERE (CodOrdemEmbarque = 22030000) AND (CIOT IS NULL) AND (SituacaoConhecto <> 'Cancelado')
SELECT SituacaoConhecto,CIOT,* FROM ConhecimentosTransporte WHERE (CodOrdemEmbarque = 2055101) AND (CIOT IS NULL) AND (SituacaoConhecto <> 'Cancelado')

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem_ESP 22030000, 12451, 'CG'
--exec Grava_MDFe 22030000


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 203081                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select * from ConhecimentosTransporte where NumConhecto IN (205689,205688)
select DataCriacao,* from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe IN (60000046272,60000046273)
Exec verificaCTE 60000046272
Exec verificaCTE 60000046273

select * from ConhecimentosTransporte where NumConhecto IN (88863) and CodUF = 'PR'
exec VerificaCTe 410000031977
--UPDATE RODOMAIOR_GSe.dbo.CTe SET Status = 0 where Sequencial = 410000031977

EXEC VerificaCTe 30000027270



SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 203081                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosRelacaoFretes where NumSeqConhecto IN (150000033950)

select * from ConhecimentosRelacaoFretes_log where NumSeqConhecto IN (150000033950)



SELECT * from RODOMAIOR_GSe.dbo.NFe where ID IN ('35240803129679000373550000003964811484684293','35240803129679000373550000003964391603068244')

select * from RODOMAIOR_GSe.dbo.tblLog_operacao where DS_Descricao LIKE ('%35240803129679000373550000003964811484684293%')
select * from RODOMAIOR_GSe.dbo.tblLog_operacao where DS_Descricao LIKE ('%35240803129679000373550000003964391603068244%')


SELECT RazaoSocial, SituacaoFornecedor FROM Fornecedores WHERE (CNPJ_CPF = '37.191.525/0001-61')
SELECT RazaoSocial, SituacaoFornecedor,* FROM Fornecedores WHERE (CNPJ_CPF = '37.191.525/0001-61') 




SELECT QuantidadeSaida,QuantidadeChegada, SituacaoConhecto,TipoConhecimento, TarifaFreteMotorista,TotalFreteMotorista, * from ConhecimentosTransporte where NumConhecto = 8941 and coduf = 'GO' AND SerieConhecto = 'E' --1.000  / 17000.00 / 17.00
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, TarifaFreteMotorista = 17000, TotalFreteMotorista = 17  where NumConhecto = 8941 and coduf = 'GO' AND SerieConhecto = 'E'


select * from ConhecimentosTransporte where NumConhecto = 88955 and CodUF = 'PR' and SerieConhecto = '0'

exec VerificaCTe 590000000576
--UPDATE RODOMAIOR_GSe.dbo.CTe SET Status = 0 where Sequencial = 590000000576


