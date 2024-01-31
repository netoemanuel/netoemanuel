use RODOMAIOR


exec VerificaCTe 50000024680
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial  = 50000024680



select BaseCalculoICMS, ValorTotalFrete,CodPedidoFrete,* from ConhecimentosTransporte where NumConhecto = 73194 and CodUF = 'MG'


select * from PedidosFrete where CodPedidoFrete = 31003570
--UPDATE  ConhecimentosTransporte set BaseCalculoICMS = 15547.49, ValorTotalFrete = 13245.072  where sequencial = 310000013263



select BaseCalculoICMS, ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto = 73194 and CodUF = 'MG'

select CodClienteMatriz,* from Clientes_Complemento where CodCliente = 31000211

select * from PermissoesAcesso_Log where CodUsuario = 10380 
--delete from PermissoesAcesso_Log where CodUsuario = 10380 


blk