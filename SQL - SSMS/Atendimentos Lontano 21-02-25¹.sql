blk

SELECT * FROM Temp_RelPecasServicosFrotaAnalitico WHERE CodUsuario = 0

SELECT CodFilialComissao,CodFilialEmitente,* from ConhecimentosTransporte where NumConhecto in (222337,222338) and CodUF = 'PR'

SELECT CodFilialComissao,CodFilialEmitente,* from ConhecimentosTransporte where NumConhecto in (747474) and CodUF = 'MT' AND SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET CodFilialComissao = 'FRM', CodFilialEmitente = 'FRM'  where NumConhecto in (747474) and CodUF = 'MT' AND SerieConhecto = '0'


SELECT CodFilialComissao,CodFilialEmitente,TipoCalculoLucro,* from ConhecimentosTransporte where NumConhecto in (222337,222338,222329) and CodUF = 'PR'

--UPDATE ConhecimentosTransporte set TipoCalculoLucro = 'Exportação'  where NumConhecto in (222337,222338) and CodUF = 'PR'  --Exportação

