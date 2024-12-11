select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 215934  and CodUF = 'PR' and SerieConhecto = '0'  --2273.63 / 4547250.00
--UPDATE ConhecimentosTransporte set ValorNF = 45472.50, SeguroAverbado = 22.73 where NumConhecto = 215934  and CodUF = 'PR' and SerieConhecto = '0'

EXEC MonitoraMDFe 83078598
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1756167

select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 736584  and CodUF = 'MT' and SerieConhecto = '0'  --
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Faturado' where NumConhecto = 736584  and CodUF = 'MT' and SerieConhecto = '0'



SELECT CodUsuarioAprovacao, ISNULL(DataAprovacaoCadastro,'2011-01-01') AS DataAprovacaoCadastro, SituacaoCadastral FROM Veiculos WHERE (CodVeiculo = 201336)