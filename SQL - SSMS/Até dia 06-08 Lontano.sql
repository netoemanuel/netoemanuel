use LONTANO



select * from LONTANO_GSe.dbo.AverbacaoFrete  order by DataCriacao desc
select * from LONTANO_GSe.dbo.AverbacaoFrete where Situacao <> 'Enviado'  order by DataCriacao desc
---------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 60785  and CodUF = 'GO' and SerieConhecto = '2'
--update ConhecimentosTransporte SET ValorAdiantamento = null, TarifaFreteMotorista = 9.95 where sequencial =  730000131623
---------------------------------------------------------------------------------------------------------------------
select SeguroAverbado, ValorNF,* from ConhecimentosTransporte where NumConhecto = 680246 and CodUF = 'MT' 
--update ConhecimentosTransporte SET SeguroAverbado = 49.30, ValorNF = 98600.00 where sequencial =  20000146997
---------------------------------------------------------------------------------------------------------------------
select ValorAdiantamento, TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 183932  and CodUF = 'PR'
--update ConhecimentosTransporte SET ValorAdiantamento = 6200.00, TarifaFreteMotorista = 236.60 where sequencial =  640000055654
---------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------------------------
exec VerificaCTe 30000153525
select Status, DS_Retorno, NO_Retorno, XML_Enviado, XML_Retorno,DT_Alteracao, * from LONTANO_GSe.dbo.cte where Sequencial = 30000153525
select Status, DS_Retorno, NO_Retorno, XML_Enviado, XML_Retorno,DT_Alteracao, * from LONTANO_GSe.dbo.cte where Status = 5 ORDER by DataCriacao desc
--update LONTANO_GSe.dbo.cte set DS_Retorno = 'Cancelamento de CT-e homologado', NO_Retorno= 101,  where Sequencial = 30000153525 
select Status,  * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 30000153525
select SituacaoConhecto,  * from ConhecimentosTransporte where Sequencial = 30000153525
select Status, DS_Retorno, NO_Retorno, XML_Enviado, XML_Retorno,DT_Alteracao, * from LONTANO_GSe.dbo.cte where status = 5 order by DataCriacao desc


exec ProcuraTrigger 
	@TrgName = 'CANCELamento CT-e'	--> Nome da Trigger (default='' -> todas)
  , @TabName = ''	--> Nome da Tabela (dafault ='' -> todas)
  , @TrgStat = 0	--> Status: -1=Qualquer um / 0=Habilitadas / 1=Desabilitadas

  SELECT T.name AS Tabela, C.name AS Coluna
FROM sys.sysobjects AS T (NOLOCK) 
INNER JOIN sys.all_columns AS C (NOLOCK) ON T.id = C.object_id AND T.XTYPE = 'U' 
WHERE C.NAME LIKE '%CANCELAMENTO%' 
ORDER BY T.name ASC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

select SituacaoFilial, * from FiliaisAgencias where NomeReduzido = 'IBR'
--UPDATE  FiliaisAgencias set CodFilial = 'IBR' where NomeReduzido = 'IBR'