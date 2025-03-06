EXEc MonitoraMDFe 6038918
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1778201
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1778201
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '935250005949605', nProt = '935250005949605' where Sequencial = 1778201 and ID = 25598138 
----coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_log SET Status = 2, cstat = 204 where Sequencial = 1778201 and ID = 25598138 


SELECT Observacoes,ObservacoesCTRC,* from PedidosFrete where CodPedidoFrete = 25011337
select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 543340 and CodUF = 'MS' AND SerieConhecto = '0'
--UPDATE ConhecimentosTransporte SET ObsConhecto = '**PARA PAGAMENTO DO SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DE DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA**' where NumConhecto = 543340 and CodUF = 'MS' AND SerieConhecto = '0'
select Observacoes, * FROM OrdemEmbarque where NumOrdemEmbarque = 25127071
--UPDATE  OrdemEmbarque SET Observacoes = '**PARA PAGAMENTO DO SALDO DE FRETE, NECESSARIO TICKET DE PESAGEM DE DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA**' where NumOrdemEmbarque = 25127071


select * from ConhecimentosTransporte where NumConhecto = 543534 and CodUF = 'MS' AND SerieConhecto = '0'
select * from MDFeViagem_OrdemEmbarque WHERE NumOrdemEmbarque in ( 85023126) ORDER by DataCriacao desc
EXEC MonitoraMDFe 85023126


SELECT * FROM ComboBox_Financeiro WHERE (NomeComboBox = 'cboGrupoCCusto') ORDER BY Codigo
----INSERT INTO ComboBox_Financeiro values (15,'cboGrupoCCusto','RS')
----INSERT INTO ComboBox_Financeiro values (16,'cboGrupoCCusto','MA')
----INSERT INTO ComboBox_Financeiro values (17,'cboGrupoCCusto','TO')


select * from Veiculos where PlacaVeiculo = 'QAQ9F06'
select CodVeiculo,CodMotorista,* from ConhecimentosTransporte where NumConhecto = 23285  and CodUF = 'PA' AND SerieConhecto = '0'  -- 7279 / 1106386
--UPDATE ConhecimentosTransporte SET CodMotorista = 1106441, CodVeiculo = 9506 where NumConhecto = 23285  and CodUF = 'PA' AND SerieConhecto = '0'

select * from Veiculos where PlacaVeiculo = 'QAM3H28'
select CodVeiculo,CodMotorista,* from ConhecimentosTransporte where NumConhecto = 23284   and CodUF = 'PA' AND SerieConhecto = '0'  -- 7247	/ 2006300
--UPDATE ConhecimentosTransporte SET CodMotorista = 1106441, CodVeiculo = 3728 where NumConhecto = 23284   and CodUF = 'PA' AND SerieConhecto = '0' 


select * from ContasPagas where CodContasPagar = 10012830  --1018.15
--UPDATE ContasPagas SET ValorTotalPago = 877.77 where CodContasPagar = 10012830
SELECT * from MovimentosCaixa where CodMovCaixa = 101844783 --2212.15
--UPDATE  MovimentosCaixa set ValorMovimento = (ValorMovimento - 140.38) where CodMovCaixa = 101844783  
select * from ContasPagar where CodContasPagar = 10012830


EXEC VerificaCTe 220000083762
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 220000083762
select * FROM LONTANO_GSe.dbo.CTe_LOG where ID =23195067 and Sequencial =  220000083762
--delete FROM LONTANO_GSe.dbo.CTe_LOG where ID =23195067 and Sequencial =  220000083762

select * from ConhecimentosTransporte where NumConhecto = 424047    and CodUF = 'MG' AND SerieConhecto = '0'  
EXEC VerificaCTe 270000080322
--UPDATE LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 220000083762
select * FROM LONTANO_GSe.dbo.CTe_LOG where ID =23195466 and Sequencial =  270000080322
--delete FROM LONTANO_GSe.dbo.CTe_LOG where ID =23195466 and Sequencial =  270000080322


select * from ConhecimentosTransporte where NumConhecto in (424088,424080 )   and CodUF = 'MG' AND SerieConhecto = '0'  
select * from ConhecimentosTransporte where NumConhecto in (424088 )   and CodUF = 'MG' AND SerieConhecto = '0'  
--UPDATE ConhecimentosTransporte SET NumRelatorioEmbarque =27012589, CodPedidoFrete =27008224  where NumConhecto in (424088 )   and CodUF = 'MG' AND SerieConhecto = '0'  --53027021 / 53116188

select CodTipoReceita,* from ContasReceber where CodContasReceber = 53129718  --43
--UPDATE ContasReceber SET CodTipoReceita = 2  where CodContasReceber = 53129718

	
--UPDATE ConhecimentosTransporte SET ValorNF = 94262.98, SeguroAverbado = 47.13 where NumConhecto in (542314 )   and CodUF = 'MS' AND SerieConhecto = '0'  


select * FROM MovimentosCaixa where CodMovCaixa = 101798663
--UPDATE MovimentosCaixa SET CodCaixa = 41 where CodMovCaixa = 101798663