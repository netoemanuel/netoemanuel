-- CT-e com autorização Incompleta!

select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno, * from LONTANO_GSe.dbo.cte where Sequencial = 640000052365--  
select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from LONTANO_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 
select  * from LONTANO_GSe.dbo.cte_log where Sequencial =  310000089019 order by dhLog desc 
exec VerificaCTe  640000052365
--*** UPDATE MAIS COMUM ***--

--update LONTANO_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e' where Sequencial =  640000052365

--*** UPDATE do campo XML de Retorno***--

--UPDATE LONTANO_GSe.dbo.cte set XML_Retorno = '<eventoCTe versao="3.00" xmlns="http://www.portalfiscal.inf.br/cte"><infEvento Id="ID1101105223031145582900036757000000568467100568467401"><cOrgao>52</cOrgao><tpAmb>1</tpAmb><CNPJ>11455829000367</CNPJ><chCTe>52230311455829000367570000005684671005684674</chCTe><dhEvento>2023-03-20T17:05:38-04:00</dhEvento><tpEvento>110110</tpEvento><nSeqEvento>1</nSeqEvento><detEvento versaoEvento="3.00"><evCCeCTe><descEvento>Carta de Correcao</descEvento><infCorrecao><grupoAlterado>compl</grupoAlterado><campoAlterado>xObs</campoAlterado><valorAlterado>MOTORISTA ANDERSON JESUS DO VALE CPE 325.878.25806</valorAlterado></infCorrecao><xCondUso>A Carta de Correcao e disciplinada pelo Art. 58-B do CONVENIO/SINIEF 06/89: Fica permitida a utilizacao de carta de correcao, para regularizacao de erro ocorrido na emissao de documentos fiscais relativos a prestacao de servico de transporte, desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: base de calculo, aliquota, diferenca de preco, quantidade, valor da prestacao;II - a correcao de dados cadastrais que implique mudanca do emitente, tomador, remetente ou do destinatario;III - a data de emissao ou de saida.</xCondUso></evCCeCTe></detEvento></infEvento><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /><SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" /><Reference URI="#ID1101105223031145582900036757000000568467100568467401"><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" /><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /></Transforms><DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" /><DigestValue>qGCMrK7Dw5p2eSVHRJ94L0lnHpM=</DigestValue></Reference></SignedInfo><SignatureValue>WDoVn3gl2N/wX8WBE87LSfjmnR/W/WOVzHEl8vvBUnHr34KRTBskCcLaaR9qmIuDjob2iIIR/jxknuBiXPUeJOeLFJG6ARGSVr2kCgUUbl/gayusNKMnvb1Qi2OrKJ/mVmBxkzoTKG5Xy3H5gu4lwdMgn+AI6zjtA+LP8T0DEiDFFYZvGMs2LTsBXqgl2U9tX1U+BNsIBirLeGLoD24u/6Aeu89jh1GhqmBiEN5ol+yLZG2QTU5F9wHwhCnlokzcu4MVk29TnXxiq8vKm3gJ/1ezBYFE4IWF0dyLnzxz+C+qxjlWyWmuZ1Of0TnJwZ+CyAL164C4ZEcsFMWvAaoqzQ==</SignatureValue><KeyInfo><X509Data><X509Certificate>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</X509Certificate></X509Data></KeyInfo></Signature></eventoCTe>' WHERE Sequencial = 640000052365

select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno, * from LONTANO_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

		--UPDATE LONTANO_GSe.dbo.cte set XML_Retorno = '<eventoCTe versao="3.00" xmlns="http://www.portalfiscal.inf.br/cte"><infProt><tpAmb>1</tpAmb><verAplic>1.04</verAplic><chCTe>' + cte.id + '</chCTe><dhRecbto>' + (CONVERT(VARCHAR(10),CTe.DT_Alteracao,120)+'T'+REPLACE(CONVERT(VARCHAR(8),CTe.DT_Alteracao,8),' ','T')) + '</dhRecbto><nProt>' + cte.NO_Protocolo + '</nProt><digVal>HDNsWvY8Cy1PhRVoeLb8d9U7MQA=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da CT-e</xMotivo></infProt></protCTe>' 
		--FROM CTe
		--WHERE convert(varchar(8),datacriacao,112) >= convert(varchar(8),getdate(),112) and Status in (1,5) and XML_Retorno IS NULL



--Procurar campo pelo nome em todo o banco:
SELECT T.name AS Tabela, C.name AS Coluna
FROM sys.sysobjects AS T (NOLOCK) 
INNER JOIN sys.all_columns AS C (NOLOCK) ON T.id = C.object_id AND T.XTYPE = 'U' 
WHERE C.NAME LIKE '%XML_%' 
ORDER BY T.name ASC


--select Status, * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1404571
--select * from LONTANO_GSe.dbo.MDFe where Sequencial = 1404571
--select * from MDFeViagem_OrdemEmbarque where SeqViagem = 1295417
--exec MonitoramDFe 26030266



select * from ConhecimentosTransporte where NumConhecto = 173319  and CodUF = 'PR'

exec VerificaCTe 640000052365
select status,* from LONTANO_GSe.dbo.CTe where Sequencial = 640000052365
--update LONTANO_GSe.dbo.CTe set Status = 1  where Sequencial = 640000052365
--delete from LONTANO_GSe.dbo.CTe_log where ID in ( 20282464,
--20282463,
--20282462,
--20282051,
--20282050,
--20282049,
--20282024,
--20282023,
--20281781,
--20281780,
--20281779,
--20281772,
--20281769,
--20281753,
--20281752,
--20281751)