-- Chamado no Milvus #7061 - gerar uma nova chave para MDF-e quando não se tem uma chave autorizada pela Sefaz.

EXEC MonitoraMDFe 78020463
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 78020302 order by DataCriacao desc


--SeqViagem = 1289799  --50230311455829000103580010002358601012842860][NroProtocolo:950230002899955]
--MDFe 50230311455829000103580010002376381012897998
select * from mdfeviagem_ordemembarque where seqviagem = 1289799  --2023-03-08 13:30:19.543
select * from lontano_gse.dbo.mdfe where cuf = 50 and dhemi >= '2023-03-10 18:40:22.850' order by nmdf
select * from lontano_gse.dbo.mdfe where nmdf = 237644 and cuf = 50
select dbo.modulo11('5023031145582900010358001000237644101289799')  --> 50230311455829000103580010002369781012878230
exec monitoramdfe 17026572
update LONTANO_GSe.dbo.mdfe set Id = '50230311455829000103580010002376421012897990', cDV = 0, nMDF = 237644, cMDF = '01289799', status = 0 where Sequencial = 1398483
