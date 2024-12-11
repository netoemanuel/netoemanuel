SELECT COUNT(*) AS Registros FROM DiarioBordoSintetico where CodMotorista = 1106460 and '11/20/2024' BETWEEN DataInicial AND DataFinal


SELECT * FROM DiarioBordoSintetico where CodMotorista = 1106460 and '11/20/2024' BETWEEN DataInicial AND DataFinal

SELECT * FROM Usuarios where CodUsuario = 14853






SELECT * from ConhecimentosTransporte where NumConhecto = 99000425  and CodUF = 'MT' and SerieConhecto = '2'
--SELECT * from ConhecimentosTransporte_log where NumConhecto = 90292  and CodUF = 'MT' and SerieConhecto = '2'

select * from PedidosEmbarque where NumRelatorioEmbarque  = 2033369 ORDER BY DataCriacao desc
--insert into PedidosEmbarque VALUES (2033369,2027173,1,1,NULL,NULL,NULL,NULL,NULL,'KG',14649,'RDN','2024-11-19 17:01:14.000',NULL,NULL,NULL)
--UPDATE PedidosEmbarque SET CodUsuarioCriacao = 14162, CodFilialCriacao = 'RO' , DataCriacao = '2024-11-25 16:45:06.000'   where CodPedidoFrete = 2027173 and NumRelatorioEmbarque  = 2033369