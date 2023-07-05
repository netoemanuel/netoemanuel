use LONTANO


select * from ConhecimentosTransporte where NumConhecto = 115590 and CodUF = 'SP'

exec MonitoraMDFe 6032048


select * from ConhecimentosTransporte where NumConhecto = 167816 and CodUF = 'PR'

exec MonitoraMDFe 91046813

-- Para o CT-e 115590 - SP foram geradas duas MDF-es
-- 1453753 (35230511455829000600580060000396961013421084) - Cancelada no dia "2023-05-30 15:03:29.567" Usuario: 13903 - Ediangela Pereira Maciel
-- 1455525 (35230511455829000600580060000397401013438190) - Encerrada no dia "2023-06-02 18:58:26.767" Usuario: 14284 - Mauro Veronesi / Encerrado - BuscaOrdemEmbarque-BotaoEncerrar


-- Para o CT-e 167816 - PR foram geradas duas MDF-es
--1357791 (41221211455829000790580070001111131012517855) - Encerrada no dia "2023-01-06 16:35:04.343" Usuario: 12475 - Ivan dos Santos Demetrio / Encerradmento - BuscaOrdemEmbarque-BotaoEncerrar
--1361369 (41230111455829000790580070001114521012551670) - Encerrada no dia "2023-01-16 15:50:50.000" Usuario: 14319 - Sandy Kamila Teobaldo Xavier / Encerramento - PagtoCTRCCheque



select * from ConhecimentosTransporte where NumConhecto = 382328 and CodUF = 'MG'

exec VerificaCTe 270000073399


select * from LONTANO_GSe.dbo.tblEmitentes


select * from ConhecimentosTransporte where NumConhecto = 176964 and CodUF = 'PR'

exec VerificaCTe 430000004910