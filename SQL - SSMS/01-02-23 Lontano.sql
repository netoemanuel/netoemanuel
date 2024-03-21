use LONTANO

SELECT Status, * FROM LONTANO_GSe.dbo.CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_MDFe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 701643 and CodUF = 'MT'
--update  ConhecimentosTransporte set ObsConhecto = 'FRETE 1 PERNA, NÃO NECESSÁRIO O TICKET DE BALANÇA E CANHOTO CTE E NFE ASSINADO. CND: 0047313635 COD. AUT.: 2AM2ABB2UKTLB2AK' where sequencial = 500000006361
select Observacoes,* from PedidosFrete where CodPedidoFrete = 50000640
select Observacoes,* from OrdemEmbarque where NumOrdemEmbarque = 50012629
--UPDATE  OrdemEmbarque set Observacoes = 'FRETE 1 PERNA, NÃO NECESSÁRIO O TICKET DE BALANÇA E CANHOTO CTE E NFE ASSINADO.     CND: 0047313635 COD. AUT.: 2AM2ABB2UKTLB2AK' where NumOrdemEmbarque = 50012629
select * from LONTANO_GSe.dbo.cte where Sequencial = 500000006361
--DELETE from LONTANO_GSe.dbo.cte where Sequencial = 500000006361
exec VerificaCTe 500000006361
--exec Grava_CTe 500000006361
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF,GRIS_NaoDescontado,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 611566 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF =  84342.83, SeguroAverbado = 42.17, GRIS_NaoDescontado =  65.78 where Sequencial = 230000042679

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from MovimentacaoBancaria where CodMovBancaria = 1575562
--UPDATE MovimentacaoBancaria set CodContaBancaria = 50 where CodMovBancaria = 1575562
select * from MovimentacaoBancaria where CodMovBancaria = 1575563
--UPDATE MovimentacaoBancaria set CodContaBancaria = 50 where CodMovBancaria = 1575563

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select CodContasPagar,* from RelacaoFretes where CodRelacaoFrete = 28015121
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 28015121 and ValorPago <> ValorConferido

select * from ContasPagar where CodContasPagar = 28015124

select * from ContasPagas where CodContasPagar = 28015124



SELECT Status, * FROM LONTANO_GSe.dbo.Eventos_CTe WHERE DataCriacao > '2024-01-31 00:00:01' AND Status NOT IN (1, 5, 9)


exec VerificaCTe 330000019292




