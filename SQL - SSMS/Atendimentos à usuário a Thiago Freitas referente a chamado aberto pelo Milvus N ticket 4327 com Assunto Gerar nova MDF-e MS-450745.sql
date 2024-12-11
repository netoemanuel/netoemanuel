-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 218895 and CodUF = 'PR' -- antigo cod rota 115568
--UPDATE ConhecimentosTransporte SET CodRota = 115615 WHERE Sequencial = 640000069407
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 64012705
--UPDATE PedidosFrete SET CodRota = 115615 WHERE CodPedidoFrete = 64012705
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 64081512
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Lontano_GSe.dbo.Descarga_MDFe where Sequencial = 1766022	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Lontano_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Mariana%'  -- colocar o destino de descarga
select * FROM Lontano_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5107925
--update Lontano_GSe.dbo.Descarga_MDFe set cMunDescarga = 4123907, xMunDescarga = 'Santa Mariana' where Sequencial = 1766022	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM Lontano_GSe.dbo.MDFe where Sequencial in ( 614263)
--
--Reenviar para autorizar	
EXEC MonitoraMDFe 22089056
SELECT STATUS, * FROM Lontano_GSe.dbo.MDFe WHERE Sequencial = 1730114
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1766022
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update Lontano_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1451004


EXEC MonitoraMDFe 54002365 
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1766022)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from Lontano_GSe.dbo.PagamentoFrete_MDFe where Sequencial = 1766022)
--
--select vComp, * from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1679256
--select vContrato,*  from Lontano_GSe.dbo.PagamentoFrete_MDFe where Sequencial = 1679256
--
--delete from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial =1730114 and tpComp =01

--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Lontano_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1766022
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1766022)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Lontano_GSe.dbo.CompPagamentoFrete_MDFe set vComp = 7430.00 where Sequencial = 1766022
--update Lontano_GSe.dbo.PagamentoFrete_MDFe set vContrato = 7430.00 where Sequencial = 1766022

select * from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
select * from Lontano_GSe.dbo.ParcelasPagamentoFrete_MDFe where Sequencial = 1495422 and nParcela = 002
--
select * from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422 and tpComp = 01
--delete from Lontano_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01


