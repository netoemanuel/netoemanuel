

select * from ContasPagar_Log where CodContasPagar = 1907199 
--update ContasPagar set Saldo= 585.67 , ValorDocumento = 14956.47, ValorPagar = 14956.47  where CodContasPagar = 1907199 
select * from ContasPagas where CodContasPagar = 1907199
select * from Usuarios where NomeUsuario like '%Rosilda%'
--select * from ContasPagar where CodContasPagar = 2210713 
--select * from ContasPagas_log where CodContasPagar = 2210713
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT COUNT(*) AS Registros FROM ContasPagar_RequisicaoProdutos 
--INNER JOIN ContasPagar ON ContasPagar.CodContasPagar = ContasPagar_RequisicaoProdutos.CodContasPagar 
--WHERE (ContasPagar_RequisicaoProdutos.CodRequisicao = 2579037) AND (ContasPagar_RequisicaoProdutos.CodContasPagar <> 2210714)

--SELECT * FROM ContasPagar_RequisicaoProdutos 
--INNER JOIN ContasPagar ON ContasPagar.CodContasPagar = ContasPagar_RequisicaoProdutos.CodContasPagar 
--WHERE (ContasPagar_RequisicaoProdutos.CodRequisicao = 2579037) AND (ContasPagar_RequisicaoProdutos.CodContasPagar <> 2210714)

select * from RequisicaoProdutos where CodRequisicao = 2579037 -- 1816
--UPDATE RequisicaoProdutos  set CodVeiculo = 1882 where CodRequisicao = 2579037

select * from ItensRequisicaoProdutos where CodRequisicao = 2579037  --1816
--UPDATE  ItensRequisicaoProdutos set CodVeiculo = 1882 where CodRequisicao = 2579037 


select * from ConhecimentosTransporte where NumConhecto = 398793 and CodUF = 'MG'

select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 530000162128



EXEC MonitoraMDFe 10085289 
SELECT STATUS, * FROM Lontano_GSe.dbo.MDFe WHERE Sequencial = 1611972
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1611972

--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1611972)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from Lontano_GSe.dbo.PagamentoFrete_MDFe where Sequencial = 1611972)
--
--select vComp, * from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1609929
--
--delete from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1611972 and tpComp =01

--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Lontano_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1611972
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1611972)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Lontano_GSe.dbo.CompPagamentoFrete_MDFe set vComp = 17311.15 where Sequencial = 1611972
--update Lontano_GSe.dbo.PagamentoFrete_MDFe set vContrato = 17311.15 where Sequencial = 1611972


--delete from LONTANO_GSe.dbo.mdfe where Sequencial = 1611971