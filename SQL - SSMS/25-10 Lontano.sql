use LONTANO


select * from LONTANO_GSe.dbo.NFe where id = '41231024692714000176550110000366291092693207'

blk

wtf 423

KILL 423

--SELECT COUNT(*) AS Registros FROM ConhecimentosComplementados cc, ConhecimentosTransporte ct WHERE (cc.SeqConhecimentoComplementar = 160000022208) AND (ct.Sequencial = cc.SeqConhecimentoComplementado)

select * from LONTANO_GSe.dbo.NFe where id = '41231024692714000176550110000366291092693207'
select top(1000)* from LONTANO_GSe.dbo.tblLog_operacao where DS_Descricao like '%XML_NFe\412310246927140%' order by DT_Hs desc