-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete, CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 62366   and CodUF = 'MT' -- antigo cod rota 510410
--UPDATE ConhecimentosTransporte SET CodRota = 16772 WHERE Sequencial = 510000013984
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 10007763
--UPDATE PedidosFrete SET CodRota = 16772 WHERE CodPedidoFrete = 51000383
--
--SELECT * from Veiculos where PlacaVeiculo = '45024463'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo
--
--select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque  in (62018685, 62018687)
--update OrdemEmbarque set CodFornecedor = 62000991 where NumOrdemEmbarque  in (62018685, 62018687)
--select * from Fornecedores where RazaoSocial = 'MEJADO TRANSPORTES LTDA'
--
EXEC MonitoraMDFe 51017036
--
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
--
select * from Rodomaior_Gse.dbo.Descarga_MDFe where Sequencial = 640811	 --and SeqDescarga = 1 -- para saber qual está (DESCARGA)
select CodUFIBGE,* from Rodomaior_Gse.dbo.Cidades_e where NomeMunicipioIBGE like '%Sorriso%'  -- colocar o destino de descarga
select * FROM Rodomaior_Gse.dbo.Cidades_e where CodMunicipioIBGE =  5107925
--update Rodomaior_Gse.dbo.Descarga_MDFe set cMunDescarga = 5107925, xMunDescarga = 'Sorriso' where Sequencial = 640811	
--
--Casos precise mexer no percurso, alterar o mesmo no prtojeto e depois deletar e gerar uma nova MDF-e
--
--DELETE FROM Rodomaior_Gse.dbo.MDFe where Sequencial in ( 614263)
--
--Reenviar para autorizar	
EXEC MonitoraMDFe 22089056
SELECT STATUS, * FROM Rodomaior_Gse.dbo.MDFe WHERE Sequencial = 1730114
--update Rodomaior_Gse.dbo.MDFe set status = 0 where Sequencial = 640811
--
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração
--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3--
--update Rodomaior_Gse.dbo.MDFe set status = 0, tpTransp = 3  where CodManifestoCarga = 1451004


EXEC MonitoraMDFe 54002365 
--746 CAMPO vComp TEM QUE SER IGUAL AO vContrato (olhar na duas tabelas abaixo para ver se nao tem 2 valores)
DECLARE @VCOMP AS NUMERIC SET @VCOMP  = (select  vComp from Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1730110)
DECLARE @VCONTRATO AS NUMERIC SET @VCONTRATO = (select vContrato  from Rodomaior_Gse.dbo.PagamentoFrete_MDFe where Sequencial = 1730110)
--
--select vComp, * from Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1679256
--select vContrato,*  from Rodomaior_Gse.dbo.PagamentoFrete_MDFe where Sequencial = 1679256
--
--delete from Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe where Sequencial =1730114 and tpComp =01

--738 CAMPO vComp E vContrato TEM QUE SER IGUAL AO SOMATORIO DO vAdiant + vParcela
select vAdiant, vParcela from Rodomaior_Gse.dbo.ParcelasPagamentoFrete_MDFe PP
INNER JOIN Rodomaior_Gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1730110
DECLARE @SOMATORIO AS NUMERIC SET @SOMATORIO = (select vAdiant + vParcela AS SOMATORIO from Rodomaior_Gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Rodomaior_Gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1730110)
SELECT @SOMATORIO AS SOMATORIO, @VCOMP AS VCOMP, @VCONTRATO AS VCONTRATO

--update Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe set vComp = 18262.01 where Sequencial = 1730114
--update Rodomaior_Gse.dbo.PagamentoFrete_MDFe set vContrato = 18262.01 where Sequencial = 1730114

select * from Rodomaior_Gse.dbo.ParcelasPagamentoFrete_MDFe PP INNER JOIN Rodomaior_Gse.dbo.PagamentoFrete_MDFe PF ON PP.Sequencial = PF.Sequencial where PP.Sequencial = 1594367
select * from Rodomaior_Gse.dbo.ParcelasPagamentoFrete_MDFe where Sequencial = 1495422 and nParcela = 002
--
select * from Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1495422 and tpComp = 01
--delete from Rodomaior_Gse.dbo.CompPagamentoFrete_MDFe where Sequencial = 1459941 and tpComp = 01


