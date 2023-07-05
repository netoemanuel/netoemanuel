-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 485993  and CodUF = 'MS' -- antigo cod rota 86525
--UPDATE ConhecimentosTransporte SET CodRota = 87566  WHERE Sequencial = 520000036990
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 52003526
--UPDATE PedidosFrete SET CodRota = 87566  WHERE CodPedidoFrete = 52003526
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 52047967
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Lontano_GSe.dbo.Descarga_MDFe where Sequencial = 1476784	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Lontano_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Bataguassu%'  -- colocar o destino de descarga
select * FROM Lontano_GSe.dbo.Cidades_e where CodMunicipioIBGE =  1476784
--update Lontano_GSe.dbo.Descarga_MDFe set cMunDescarga = 5001904, xMunDescarga = 'Bataguassu' where Sequencial = 1476784	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM Lontano_GSe.dbo.MDFe where Sequencial = 1455852
--
--Reenviar para autorizar	
EXEC MonitoraMdfe 89035633	
SELECT STATUS, * FROM Lontano_GSe.dbo.MDFe WHERE Sequencial = 1476784
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1476784
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3
--
--update Lontano_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1251340
--
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1475779)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato from Lontano_gse.dbo.PagamentoFrete_MDFe where Sequencial = 1475779)
--
--select vComp, * from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1387296
--
--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1392881 and tpComp =01
--
--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1475779
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1475779)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO
--
--update Lontano_gse.dbo.CompPagamentoFrete_MDFe set vComp = 14305.00 where Sequencial = 1475779
--update Lontano_gse.dbo.PagamentoFrete_MDFe set vContrato = 14305.00 where Sequencial = 1475779


select * from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01
--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01

