use LONTANO

select * from ContasPagas where CodContasPagar = 28014916

select * from ContasPagar where CodContasPagar = 28014916

--UPDATE ContasPagar set saldo = 1.20 where CodContasPagar = 28014916 -- 1.20
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 28014913
select * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 28014913 order by DataLog desc
select * from ConhecimentosTransporte where Sequencial = 280000174883




select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1562857
select * from ConhecimentosTransporte where NumConhecto = 607346 and CodUF = 'GO'
exec MonitoraMDFe 24079844 -- Rejeição: Existe MDF-e não encerrado para esta placa, tipo de emitente e UF descarregamento [chMDFe Não Encerrada:52231111455829000367580030003671951014468705][NroProtocolo:952230009320927]
--delete from LONTANO_GSe.dbo.MDFe where Sequencial = 1565491

select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 503778 and CodUF = 'MS'
--UPDATE ConhecimentosTransporte set ValorNF = 129036.60, SeguroAverbado = 64.51, GRIS_NaoDescontado = null where Sequencial = 830000065305 


SELECT SituacaoConhecto, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao FROM ConhecimentosTransporte WHERE (Sequencial = 280000137007)


--select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 604171 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF = 109282.80, SeguroAverbado = 54.64, GRIS_NaoDescontado = 76.49 where Sequencial = 280000176345 

--select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 603869 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF =  86607.52, SeguroAverbado = 43.30, GRIS_NaoDescontado = 67.55 where Sequencial = 280000176256 

--select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 690488 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set ValorNF = 98125.00, SeguroAverbado = 49.06, GRIS_NaoDescontado = 186.43 where Sequencial = 480000006062 

select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 692206 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set ValorNF = 120660.86, SeguroAverbado = 60.33, GRIS_NaoDescontado = 132.72 where Sequencial = 890000029933 