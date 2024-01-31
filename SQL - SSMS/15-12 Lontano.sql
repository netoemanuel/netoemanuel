select TarifaFreteMotorista, * from ConhecimentosTransporte where NumConhecto = 122772 and CodUF = 'SP' -- 195.87
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 200.87 where sequencial = 990000001329


select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 61616 and CodUF = 'GO' -- 195.87
 --update ConhecimentosTransporte set SituacaoConhecto = 'Complemento' where sequencial =  730000132496


 select * from Veiculos where PlacaVeiculo = 'QAM-3804'
 select CodVeiculo, * from RequisicaoProdutos where  CodRequisicao = 2570469 -- 3738
 --UPDATE RequisicaoProdutos set CodVeiculo = 3804 where  CodRequisicao = 2570469 

 select SituacaoConhecto, TipoConhecimento, * from ConhecimentosTransporte where NumConhecto = 1945230 and CodUF = 'MT' -- Substituído / Substituído
 --update ConhecimentosTransporte set SituacaoConhecto = 'Emitido', TipoConhecimento =  'Normal' where sequencial =  880000128697

  select  * from ConhecimentosTransporte where NumConhecto = 698255  and CodUF = 'MT' -- Substituído / Substituído

 exec VerificaCTe 170000023058

 select Status,* from  LONTANO_GSe.dbo.cte where UF = 'MS' and DataCriacao > '2023-12-15 15:00:15.000' and Status = 2
 --delete from LONTANO_GSe.dbo.cte where Sequencial = 170000023058
 --delete from  LONTANO_GSe.dbo.cte where UF = 'MS' and DataCriacao > '2023-12-15 15:00:15.000' and Status = 2
 --exec Grava_CTe 170000023058

--exec Grava_CTe 520000038295
--exec Grava_CTe 520000038297
--exec Grava_CTe 520000038298
--exec Grava_CTe 580000016927

exec VerificaCTe 580000016927
--UPDATE LONTANO_GSe.dbo.cte set status = 0 where Sequencial = 580000016927

exec VerificaCTe 20000150474
--UPDATE LONTANO_GSe.dbo.cte set status = 0 where Sequencial = 20000150474