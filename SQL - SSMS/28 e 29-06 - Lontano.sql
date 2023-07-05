use LONTANO

select * from conhecimentostransporte where  NumConhecto = 382144  and CodUF = 'MG'

exec VerificaCTe 940000057486

--update LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 940000057486

-------------------------------------------------------------------------------------------------------------------------------------

select * from conhecimentostransporte where  NumConhecto = 583589  and CodUF = 'GO'

exec VerificaCTe 310000092309

select * from LONTANO_GSe.dbo.CTe_LOG where ID in (20958380,20958381) and Sequencial = 310000092309
--delete from LONTANO_GSe.dbo.CTe_LOG where ID in (20958380,20958381) and Sequencial = 310000092309

select * from conhecimentostransporte where  NumConhecto = 583453  and CodUF = 'GO'

exec VerificaCTe 740000012844

select * from LONTANO_GSe.dbo.CTe_LOG where ID in (20944192,20944193) and Sequencial = 740000012844
--delete from LONTANO_GSe.dbo.CTe_LOG where ID in (20944192,20944193) and Sequencial = 740000012844

select * from conhecimentostransporte where  NumConhecto = 673862  and CodUF = 'MT'

exec VerificaCTe 220000067954

select * from LONTANO_GSe.dbo.CTe_LOG where ID in (20962739,20962738) and Sequencial = 220000067954
--delete from LONTANO_GSe.dbo.CTe_LOG where ID in (20962739,20962738) and Sequencial = 220000067954

-------------------------------------------------------------------------------------------------------------------------------------

exec VerificaNFe 100000693
--exec GravaNFe 100000693

select * from LONTANO_nfe.dbo.NFe where CodVenda = 100000693
--UPDATE LONTANO_nfe.dbo.NFe SET Status = 0, indFinal = 1 where CodVenda = 100000693
select * from LONTANO_NFe.dbo.Destinatario_NFe where CodVenda = 100000693
--UPDATE LONTANO_NFe.dbo.Destinatario_NFe set indIEDest = 1, IE = '19378080030' where CodVenda = 100000693

--delete from LONTANO_nfe.dbo.NFe where CodVenda = 100000693
--CodVenda	ID	cUF	cNF	natOp	indPag	mod	serie	nNF	dhEmi	dhSaiEnt	tpNF	cMunFG	tpImp	tpEmis	cDV	tpAmb	finNFe	procEmi	verProc	CNPJ	CPF	xNome	xFant	xLgr	nro	xCpl	xBairro	cMun	xMun	UF	CEP	cPais	xPais	fone	IE	IEST	IM	CNAE	CRT	vBC	vICMS	vBCST	vST	vProd	vFrete	vSeg	vDesc	vII	vIPI	vPIS	vCOFINS	vOutro	vNF	vRetPIS	vRetCOFINS	vRetCSLL	vBCIRRF	vIRRF	vBCRetPrev	vRetPrev	modFrete	qVol	esp	marca	nVol	pesoL	pesoB	infAdFisco	infCpl	Status	DT_Alteracao	ID_Lote	NO_Retorno	DS_Retorno	NO_Protocolo	IndImpressao	IndExportacaoXML	DadosAdicionais	cStat_Consulta	xMotivo_Consulta	dhRecbto_Consulta	nProt_Consulta	XML_Enviado	XML_Retorno	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	dhCont	xJust	IndProcedenciaXML	vTotTrib	idDest	indFinal	indPres	vICMSDeson	vFCPUFDest	vICMSUFDest	vICMSUFRemet	vFCP	vFCPST	vFCPSTRet	vIPIDevol	idLote	Reenvio	CNPJ_RT	xContato_RT	email_RT	fone_RT	xMsg
--100000693	50230611455829000103550010000003701000006930	50	00000693	VENDA DE BEM DO ATIVO IMOBILIZADO	NULL	55	1	370	2023-06-29 00:00:00.000	2023-06-29 00:00:00.000	1	5002704	1	1	0	1	1	0	GS-e Versao 4.0	11455829000103	NULL	LONTANO TRANSPORTES LTDA	CAMPO GRANDE	AV. ZILA CORREA MACHADO	7044	NULL	MORENINHA	5002704	CAMPO GRANDE	MS	79065900	1058	BRASIL	6733981900	283559578	NULL	NULL	NULL	3	14166.10	1699.93	0.00	0.00	170000.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	170000.00	NULL	NULL	NULL	NULL	NULL	NULL	NULL	9	NULL	NULL	NULL	NULL	NULL	NULL	NULL	CODIGO100000693 CAVALO MECANIO SCANIA A6X4 PLACA OOM 2636 9BSR6X400E3849054	2	NULL	NULL	NULL	NULL	NULL	N	N	NULL	NULL	NULL	NULL	NULL	<NFe xmlns="http://www.portalfiscal.inf.br/nfe"><infNFe versao="4.00" Id="NFe50230611455829000103550010000003701000006930"><ide><cUF>50</cUF><cNF>00000693</cNF><natOp>VENDA DE BEM DO ATIVO IMOBILIZADO</natOp><mod>55</mod><serie>1</serie><nNF>370</nNF><dhEmi>2023-06-29T00:00:00-04:00</dhEmi><dhSaiEnt>2023-06-29T00:00:00-04:00</dhSaiEnt><tpNF>1</tpNF><idDest>2</idDest><cMunFG>5002704</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>0</cDV><tpAmb>1</tpAmb><finNFe>1</finNFe><indFinal>0</indFinal><indPres>1</indPres><procEmi>0</procEmi><verProc>GS-e Versao 4.0</verProc></ide><emit><CNPJ>11455829000103</CNPJ><xNome>LONTANO TRANSPORTES LTDA</xNome><xFant>CAMPO GRANDE</xFant><enderEmit><xLgr>AV. ZILA CORREA MACHADO</xLgr><nro>7044</nro><xBairro>MORENINHA</xBairro><cMun>5002704</cMun><xMun>CAMPO GRANDE</xMun><UF>MS</UF><CEP>79065900</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>6733981900</fone></enderEmit><IE>283559578</IE><CRT>3</CRT></emit><dest><CNPJ>15279788000194</CNPJ><xNome>FUBA CAMINHOES COMERCIO DE VEICULOS LTDA</xNome><enderDest><xLgr>RUA DR BALARNINO DE</xLgr><nro>MENEZES</nro><xBairro>SAO VICENTE</xBairro><cMun>3132404</cMun><xMun>ITAJUBA</xMun><UF>MG</UF><CEP>37502034</CEP><cPais>1058</cPais><xPais>Brasil</xPais><fone>3536228091</fone></enderDest><indIEDest>1</indIEDest><IE>19378080030</IE></dest><det nItem="1"><prod><cProd>00000000130346</cProd><cEAN>SEM GTIN</cEAN><xProd>CAVALO MECANIO SCANIA A6X4 PLACA OOM 2636</xProd><NCM>87042390</NCM><CFOP>6551</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>170000.0000000000</vUnCom><vProd>170000.00</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>170000.0000000000</vUnTrib><indTot>1</indTot></prod><imposto><ICMS><ICMS20><orig>0</orig><CST>20</CST><modBC>3</modBC><pRedBC>91.67</pRedBC><vBC>14166.10</vBC><pICMS>12.00</pICMS><vICMS>1699.93</vICMS></ICMS20></ICMS><PIS><PISNT><CST>08</CST></PISNT></PIS><COFINS><COFINSNT><CST>08</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>14166.10</vBC><vICMS>1699.93</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>170000.00</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>170000.00</vNF></ICMSTot></total><transp><modFrete>9</modFrete></transp><pag><detPag><tPag>90</tPag><vPag>0.00</vPag></detPag></pag><infAdic><infCpl>CODIGO100000693 CAVALO MECANIO SCANIA A6X4 PLACA OOM 2636 9BSR6X400E3849054</infCpl></infAdic><infRespTec><CNPJ>11455829000103</CNPJ><xContato>Clovis Glienke</xContato><email>gsti@terra.com.br</email><fone>6733419008</fone></infRespTec></infNFe><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /><SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" /><Reference URI="#NFe50230611455829000103550010000003701000006930"><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" /><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" /></Transforms><DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" /><DigestValue>Mqj0yV5olN/c51EpTZy9nYMfUWs=</DigestValue></Reference></SignedInfo><SignatureValue>kvphacHoUSuEBwTkzNnr9UM3TTK4IhTlujcs9hSGUuZPEn5vDOyE8lK8BA8p3jy+oqI5otU6Y2cv7cUY7ADg7mccZmaISTgXW/ZDdiX3dmLTEyD2QIlYQPpOJgXM3A8ID0YqDSFwuLmUT7g1kPlpHoGmLjwTYD348Uw0a/ZtA4B7LQ04Dcgjwm+qGkNIzi3p1D1MYh98OPp0eQSLYVAGRfhsnyRuAQYd9+JlL5bxpRBL5n5CJtd1abIR/dPUrtvcFXbJbEgncy0Ge6QpX8wS2EPUpodpisezNN/MWKsSW8BmJ/y8zpbaVBm6PXXhA3aUqJc5rkQDOhJb/SmN9sqU7w==</SignatureValue><KeyInfo><X509Data><X509Certificate>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</X509Certificate></X509Data></KeyInfo></Signature></NFe>	NULL	10128	CG	2023-06-29 08:05:17.000	NULL	NULL	NULL	NULL	NULL	NULL	NULL	2	0	1	0.00	NULL	NULL	NULL	0.00	0.00	0.00	0.00	1156	NULL	11455829000103	Clovis Glienke	gsti@terra.com.br	6733419008	NULL



-------------------------------------------------------------------------------------------------------------------------------------
--exec VerificaCTe 530000154054
--select * from conhecimentostransporte where  NumConhecto = 381822  and CodUF = 'MG'
--exec MonitoraMDFe 29012314

--update Lontano_GSe.dbo.cte set status = 0 where sequencial in (SELECT Sequencial FROM Lontano_GSe.dbo.ConsultaCTeNova 
--WHERE (DataEmissao BETWEEN '06/29/2023 00:00:00' AND '06/29/2023 23:59:29') AND (CodStatus NOT IN (1, 4, 5, 9) OR (DataHoraAutorizacao IS NULL AND CodStatus NOT IN (5,9))) and UF = 'MG')
--SELECT TOP(1000) * FROM Lontano_GSe.dbo.tblLog_operacao where NM_Metodo = 'CTeRetRecepcaoWebService' ORDER BY DT_Hs DESC
