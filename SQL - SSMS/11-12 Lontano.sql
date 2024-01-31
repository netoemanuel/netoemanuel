use LONTANO


select * from  Lontano_gse.dbo.NFSe where NumeroLote = 78686

select * from ConhecimentosTransporte where NumConhecto = 1902475 and CodUF = 'MT'
--UPDATE conhecimentosTransporte set SerieConhecto = '1' where sequencial =		80000084157


SELECT GRIS_NaoDescontado, ValorTotalFrete, (QuantidadeSaida/1000)*TarifaFreteEmpresa, Pedagio, ValorICMSFrete, ValorICMSRetido, Sequencial, CodUF, NumConhecto, DataEmissao, SituacaoConhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'ms' AND NumConhecto in (506600,506599,506597,507896)



select * from ConhecimentosTransporte where NumConhecto = 394404 and CodUF = 'MG'
exec MonitoraMDFe 27079673



select * from ConhecimentosTransporte where NumConhecto = 394405and CodUF = 'MG'
exec MonitoraMDFe 27079674


select * from Clientes where CodCliente = 3000656