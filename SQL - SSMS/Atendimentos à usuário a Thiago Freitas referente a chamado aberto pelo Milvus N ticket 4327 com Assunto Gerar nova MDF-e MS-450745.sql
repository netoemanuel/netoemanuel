-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 703590  and CodUF = 'MT' -- antigo cod rota 98387
--UPDATE ConhecimentosTransporte SET CodRota = 99263    WHERE Sequencial = 260000023728
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 80001208
--UPDATE PedidosFrete SET CodRota = 99263  WHERE CodPedidoFrete = 80001208
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 89038718
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Rodomaior_GSe.dbo.Descarga_MDFe where Sequencial = 1609924	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Rodomaior_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%gaúcha%'  -- colocar o destino de descarga
select * FROM Rodomaior_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5103858
--update Rodomaior_GSe.dbo.Descarga_MDFe set cMunDescarga = 5103858, xMunDescarga = 'Gaúcha do Norte' where Sequencial = 1609929	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM Rodomaior_GSe.dbo.MDFe where Sequencial in ( 1609924)
--
--Reenviar para autorizar	
EXEC MonitoraMDFe 2051435 
SELECT STATUS, * FROM Rodomaior_GSe.dbo.MDFe WHERE Sequencial = 574704
--update Rodomaior_GSe.dbo.MDFe set status = 0 where Sequencial = 574704
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update Rodomaior_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1451004


EXEC MonitoraMDFe 8086559 
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 574704)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from Rodomaior_GSe.dbo.PagamentoFrete_MDFe where Sequencial = 574704)
--
--select vComp, * from Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1609929
--
--delete from Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial =1609929 and tpComp =01

--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Rodomaior_GSe.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Rodomaior_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 574704
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Rodomaior_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Rodomaior_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 574704)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe set vComp = 5295.08 where Sequencial = 574704
--update Rodomaior_GSe.dbo.PagamentoFrete_MDFe set vContrato = 5295.08 where Sequencial = 574704

select * from Rodomaior_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Rodomaior_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
select * from Rodomaior_GSe.dbo.ParcelasPagamentoFrete_MDFe where Sequencial = 1495422 and nParcela = 002
--
select * from Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422 and tpComp = 01
--delete from Rodomaior_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01

