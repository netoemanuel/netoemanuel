-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,CodVeiculo, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 700782   and CodUF = 'MT' -- antigo cod rota 950050
--UPDATE ConhecimentosTransporte SET CodRota = 630427   WHERE Sequencial = 630000016615
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 78000985
--UPDATE PedidosFrete SET CodRota = 630427   WHERE CodPedidoFrete = 63001464
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 63018095
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Lontano_GSe.dbo.Descarga_MDFe where Sequencial = 1594414	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Lontano_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%Chapadao%'  -- colocar o destino de descarga
select * FROM Lontano_GSe.dbo.Cidades_e where CodMunicipioIBGE =  5002951
--update Lontano_GSe.dbo.Descarga_MDFe set cMunDescarga = 5002951, xMunDescarga = 'Chapadão do Sul' where Sequencial = 1594419	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM Lontano_GSe.dbo.MDFe where Sequencial in ( 1594396)
--
--Reenviar para autorizar	
EXEC MonitoraMDFe 8086559 
SELECT STATUS, * FROM Lontano_GSe.dbo.MDFe WHERE Sequencial = 1594414
--update Lontano_GSe.dbo.MDFe set status = 0 where Sequencial = 1594419
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3
--
--update Lontano_GSe.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1451004
EXEC MonitoraMDFe 8086559 
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1594367)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from Lontano_gse.dbo.PagamentoFrete_MDFe where Sequencial = 1594367)
--
--select vComp, * from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422
--
--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial =1594367 and tpComp =01

--vComp	Sequencial	tpComp	vComp	xComp	CodFilialCriacao	CodUsuarioCriacao	DataCriacao	CodFilialAlteracao	CodUsuarioAlteracao	DataAlteracao
--11.25	1571890	01	11.25	NULL	CG	10277	2023-11-24 10:40:42.287	NULL	NULL	NULL


--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Lontano_gse.dbo.CompPagamentoFrete_MDFe set vComp = 12015.74 where Sequencial = 1594367
--update Lontano_gse.dbo.PagamentoFrete_MDFe set vContrato = 12015.74 where Sequencial = 1594367

select * from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Lontano_gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
select * from Lontano_gse.dbo.ParcelasPagamentoFrete_MDFe where Sequencial = 1495422 and nParcela = 002
--
select * from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422 and tpComp = 01
--delete from Lontano_gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01

