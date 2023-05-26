use LONTANO

select top(1000) * from Lontano_gse.dbo.DistribuicaoDFe order by id desc

SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC
--blk
--'qBCMono'
-- 'vICMSMono'
-- 'qBCMonoReten' 
--'vICMSMonoReten'
--'qBCMonoRet' 
--'vICMSMonoRet'
-- 'pBio' 
--'origComb'

--INSERT INTO Lontano_GSe.dbo.DownloadDFe_Chave (CNPJ, ChaveNfe, DataCriacao, CodUsuario, CodFilial, Situacao) VALUES ('11455829000286', '41230330429333000282550010001321911020303203', GETDATE(), 14102, 'CG', 'Pendente')
--SELECT * FROM InfoNFe_CAP WHERE (Chave = '52230422307494000194550010000007881458492326')
--SELECT * FROM Lontano_GSe.dbo.DownloadDFe_Chave WHERE ChaveNfe = '52230422307494000194550010000007881458492326'

--XML Inválido XXXXXXX - Message: O elemento 'ICMS' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'ICMS61' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'ICMS00, ICMS10, ICMS20, ICMS30, ICMS40, ICMS51, ICMS60, ICMS70, ICMS90, ICMSPart, ICMSST, ICMSSN101, ICMSSN102, ICMSSN201, ICMSSN202, ICMSSN500, ICMSSN900' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'. | StackTrace:    em GS_eLib.NFe.ValidarSchemaXml() | [System.Exception: O elemento 'ICMS' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'ICMS61' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'ICMS00, ICMS10, ICMS20, ICMS30, ICMS40, ICMS51, ICMS60, ICMS70, ICMS90, ICMSPart, ICMSST, ICMSSN101, ICMSSN102, ICMSSN201, ICMSSN202, ICMSSN500, ICMSSN900' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'.     em GS_eLib.NFe.ValidarSchemaXml()] / SITEGS -    em GS_eLib.NFe.ValidarSchemaXml()     em GS_eLib.ProcessoNFe.ValidarSchemaNFeAssinado(String sXml)     em GS_eLib.NFeImportaNota.VerificaDestinatario(String _Path, Emitente emit)     em GS_e.StartCTe.ThreadNfeImportacaoNotasFornecedor(Object state)

SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao ORDER BY DT_Hs DESC
--41230330429333000282550010001321911020303203
--41230330429333000282550010001321561020296950
--41230330429333000282550010001321601020297541
--41230330429333000282550010001321581020297322
--41230330429333000282550010001322231020307212
--41230330429333000282550010001322241020307228
--41230330429333000282550010001322321020308358
--41230330429333000282550010001322761020312350
--41230330429333000282550010001323221020317062
--41230430429333000282550010001323561020322130
--41230430429333000282550010001323771020324028
--41230430429333000282550010001323881020324870
--41230430429333000282550010001323901020325085
--41230430429333000282550010001323911020325104
--41230430429333000282550010001323931020325184
--41230430429333000282550010001324001020325660
--41230430429333000282550010001324021020325789
--41230430429333000282550010001324081020326738
--41230430429333000282550010001324091020326751
--41230430429333000282550010001324461020336360
--41230430429333000282550010001323931020325184
--41230430429333000282550010001324481020336747
--41230430429333000282550010001324531020337930
--41230430429333000282550010001324471020336480



--'qBCMono'
-- 'vICMSMono'
-- 'qBCMonoReten' 
--'vICMSMonoReten'
--'qBCMonoRet' 
--'vICMSMonoRet'
-- 'pBio' 
--'origComb'
adv.sadoyama

XML Inválido XXXXXXX - Message: O elemento 'ICMSTot' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'qBCMonoRet' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'vProd' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'. | StackTrace:    em GS_eLib.NFe.ValidarSchemaXml() | [System.Exception: O elemento 'ICMSTot' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'qBCMonoRet' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'vProd' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'.     em GS_eLib.NFe.ValidarSchemaXml()] / SITEGS -    em GS_eLib.NFe.ValidarSchemaXml()     em GS_eLib.ProcessoNFe.ValidarSchemaNFeAssinado(String sXml)     em GS_eLib.NFeImportaNota.VerificaDestinatario(String _Path, Emitente emit)     em GS_e.StartCTe.ThreadNfeImportacaoNotasFornecedor(Object state)

XML Inválido XXXXXXX - Message: O elemento 'ICMSTot' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'vFrete' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'vProd' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'. | StackTrace:    em GS_eLib.NFe.ValidarSchemaXml() | [System.Exception: O elemento 'ICMSTot' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'vFrete' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'vProd' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'.     em GS_eLib.NFe.ValidarSchemaXml()] / SITEGS -    em GS_eLib.NFe.ValidarSchemaXml()     em GS_eLib.ProcessoNFe.ValidarSchemaNFeAssinado(String sXml)     em GS_eLib.NFeImportaNota.VerificaDestinatario(String _Path, Emitente emit)     em GS_e.StartCTe.ThreadNfeImportacaoNotasFornecedor(Object state)

Falha ao importar Nota de Fornecedor:  \\ServLontano\gs2000\XML_NFe\20230412171834_CGEXW75QL9O_50230408906558000142550010001461061879355682DANFE.xml


SELECT TOP(100) * FROM LONTANO_GSe.dbo.tblLog_operacao where DS_Descricao like '%50230408906558000142550010001461061879355682%' order by id desc
pq pra mim