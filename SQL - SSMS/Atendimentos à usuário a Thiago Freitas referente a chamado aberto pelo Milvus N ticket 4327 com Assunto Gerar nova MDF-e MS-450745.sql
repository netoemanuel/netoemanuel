-- Gerar nova MDF-e MS-450745 - Novo Motorista, Novo Veiculo!

-- 1 º Mudar o Codigo da Rota em ConhecimentosTransporte e PedidosFrete
SELECT CodRota,CodPedidoFrete,* from ConhecimentosTransporte where NumConhecto = 451845 and CodUF = 'MS' -- antigo cod rota 74846
--UPDATE ConhecimentosTransporte SET CodRota = 520668  WHERE Sequencial = 820000007708
SELECT CodRota, * from PedidosFrete where CodPedidoFrete = 82000573
--UPDATE PedidosFrete SET CodRota = 520668  WHERE CodPedidoFrete = 82000573
SELECT * from Veiculos where PlacaVeiculo = 'RLA1J68'
--Apos isso, usar o SQL para substituir o mototista e o veiculo e depois seguir o passo a passo abaixo

EXEC MonitoraMDFe 82009767
-- Caso dê a Rejeição "612"	Necessario Trocar o	Codigo do Municipio de Descarga e o nome do municipio
select * from LONTANO_GSe.dbo.Descarga_MDFe where Sequencial = 1325322
select * FROM LONTANO_GSe.dbo.Cidades_e where CodMunicipioIBGE = 3518701
select * from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%GUARUJA%'
--update LONTANO_GSe.dbo.Descarga_MDFe set cMunDescarga = 3518701, xMunDescarga = 'Guarujá' where Sequencial = 1325322	
						
-- 	Reenviar para autorizar	
EXEC MonitoraMdfe 82009767	
SELECT STATUS, * FROM LONTANO_GSe.dbo.MDFe WHERE CodManifestoCarga = 1221703
--update LONTANO_GSe.dbo.MDFe set status = 0 where CodManifestoCarga = 1221703

--Caso de a rejeição abaixo apenas alterar o campo "tpTransp" para 1 ou 3
--744 Rejeição: O tipo de transportador deve ser ETC ou CTC quando informado CNPJ do proprietário do veículo de tração

