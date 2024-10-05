EXEC MonitoraMDFe 91061047 -- 15240711595217001856580090000041861006944099
--update LONTANO_GSe.dbo.mdfe set Id = '41240711455829000790580070001462471015546798', cDV = 8, nMDF = 146247, cMDF = '01554679' where Sequencial = 1679413
--update LONTANO_GSe.dbo.mdfe set Id = '50230211595217000108580000000900641004533589', cDV = 9, nMDF = 090064, cMDF = '00453358' where Sequencial = 439839  exemplo
--update LONTANO_GSe.dbo.mdfe set Status = 0 where sequencial = 1679413 -- Duplicidde 
--update LONTANO_GSe.dbo.mdfe set Status = 1 where sequencial = 1733897 -- Ajustar tabela
--update LONTANO_GSe.dbo.mdfe_LOG set status = 1, cStat = 100, codLog = 22, tpLog = 'RETORNO ENVIO MDFe', xMotivo = 'Autorizado o uso do MDF-e',nProt = '941240025120296',nRec ='941240025120296',
--xmlEnvolvido = 
--'<protMDFe xmlns="http://www.portalfiscal.inf.br/mdfe" versao="3.00">
--<infProt Id="MDFe941240025120296">
--<tpAmb>1</tpAmb>
--<verAplic>RS20240911110232</verAplic>
--<chMDFe>41240911455829000790580070001523211016071663</chMDFe>
--<dhRecbto>2024-09-28T17:53:22-03:00</dhRecbto>
--<nProt>941240025120296</nProt>
--<digVal>OAdwgBzzEUf2pZoLQbQMQQoc8T8=</digVal>
--<cStat>100</cStat>
--<xMotivo>Autorizado o uso do MDF-e</xMotivo>
--</infProt>
--</protMDFe>' where Sequencial = 1733897 and ID = 25356331 

--Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:41240611455829000790580070001461241015532360][NroProtocolo:941240012707786]

--DELETE FROM LONTANO_GSe.dbo.MDFe_LOG where ID IN (25075860,25075859) and Sequencial = 1678949
--DELETE FROM LONTANO_GSe.dbo.MDFe where  Sequencial = 1678945


exec MonitoraMDFe 5024159
exec MonitoraMDFe 35008243
exec MonitoraMDFe 50014116
exec MonitoraMDFe  6038009
exec MonitoraMDFe  91063448

--EXEC Lontano_GSe.dbo.GeraMDFeViagem 91063448, 14102, 'CG'


exec MonitoraMDFe 91063412


