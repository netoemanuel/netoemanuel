-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 717121  and CodUF = 'MT' -- antigo cod rota 106481
--UPDATE ConhecimentosTransporte SET CodRota = 107299 WHERE Sequencial = 120000025615
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 34002342
--UPDATE PedidosFrete SET CodRota = 107299 WHERE CodPedidoFrete = 12001542
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 12042098
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from LONTANO_GSe.dbo.Descarga_MDFe where Sequencial = 1609924	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Porto%'  -- colocar o destino de descarga
select * FROM LONTANO_GSe.dbo.Cidades_e where CodMunicipioIBGE =  1656830
--update LONTANO_GSe.dbo.Descarga_MDFe set cMunDescarga = 2109007, xMunDescarga = 'Porto Franco' where Sequencial = 1670499	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM LONTANO_GSe.dbo.MDFe where Sequencial in ( 1656830)
--
--Reenviar para autorizar	
EXEC MonitoraMDFe 12042084 
SELECT STATUS, * FROM LONTANO_GSe.dbo.MDFe WHERE Sequencial = 1670213
--update LONTANO_GSe.dbo.MDFe set status = 0 where Sequencial = 1670499
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update LONTANO_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1451004


EXEC MonitoraMDFe 8086559 
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from LONTANO_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1656846)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from LONTANO_GSe.dbo.PagamentoFrete_MDFe where Sequencial = 1656846)
--
--select vComp, * from LONTANO_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1656835
--
--delete from LONTANO_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial =1656846 and tpComp =01

--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from LONTANO_GSe.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN LONTANO_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1656846
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from LONTANO_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN LONTANO_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1656846)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update LONTANO_GSe.dbo.CompPagamentoFrete_MDFe set vComp = 5343.30 where Sequencial = 1656846
--update LONTANO_GSe.dbo.PagamentoFrete_MDFe set vContrato = 5343.30 where Sequencial = 1656846

select * from LONTANO_GSe.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN LONTANO_GSe.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
select * from LONTANO_GSe.dbo.ParcelasPagamentoFrete_MDFe where Sequencial = 1495422 and nParcela = 002
--
select * from LONTANO_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422 and tpComp = 01
--delete from LONTANO_GSe.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01

