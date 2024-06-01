--update ConhecimentosTransporte set NumConhecto = 64380 where Sequencial = 410000052467 -- corrigir o Numero CTe

--update lontano_gse.dbo.LoteNFSe set SequencialRPS = 27949, status = 1 where ID_NFSe = 108934
--update ConhecimentosTransporte set NumConhecto = 64379 where Sequencial = 280000180696 -- corrigir o Numero CTe


--update LONTANO_GSe.dbo.nfse 
--	set 
--		DataRecebimentoRps = GETDATE(), 
--		DataConsultaNfse = GETDATE(), 
--		SituacaoProtocolo = 4, 
--		NumeroNfse = 64378, 
--		Protocolo = '64378', 
--		CodigoVerificacao = '999999990'--,
--		--Conteudo = ''
--	where Sequencial in (410000052466)
--update lontano_gse.dbo.LoteNFSe set SequencialRPS = 27948, status = 1 where ID_NFSe = 108919
--update ConhecimentosTransporte set NumConhecto = 64378 where Sequencial = 410000052466 -- corrigir o Numero CTe

--update LONTANO_GSe.dbo.nfse 
--	set 
--		DataRecebimentoRps = GETDATE(), 
--		DataConsultaNfse = GETDATE(), 
--		SituacaoProtocolo = 4, 
--		NumeroNfse = 64377, 
--		Protocolo = '64377', 
--		CodigoVerificacao = '999999990'--,
--		--Conteudo = ''
--	where Sequencial in (410000052465)
--update lontano_gse.dbo.LoteNFSe set SequencialRPS = 27947, status = 1 where ID_NFSe = 108912
--update ConhecimentosTransporte set NumConhecto = 64377 where Sequencial = 410000052465 -- corrigir o Numero CTe
--update ConhecimentosTransporte set NumConhecto = 64381 where Sequencial = 410000052468 -- corrigir o Numero CTe
--update ConhecimentosTransporte set NumConhecto = 64380 where Sequencial = 410000052467 -- corrigir o Numero CTe
--update ConhecimentosTransporte set NumConhecto = 64379 where Sequencial = 280000180696 -- corrigir o Numero CTe
--update ConhecimentosTransporte set NumConhecto = 64378 where Sequencial = 410000052466 -- corrigir o Numero CTe
--update ConhecimentosTransporte set NumConhecto = 64382 where Sequencial = 280000180698
SELECT * FROM ConhecimentosTransporte where NumConhecto = 64406 
SELECT * FROM ConhecimentosTransporte_log where Sequencial = 410000052468

SELECT * FROM ConhecimentosTransporte where Sequencial = 410000052467  -- 64380