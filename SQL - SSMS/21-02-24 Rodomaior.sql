use RODOMAIOR

exec VerificaCTe 170000013730
exec MonitoraMDFe 17014665
select * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 569758

select Situacao,* from ContasPagar where CodContasPagar = 1401333
--UPDATE ContasPagar set saldo = 0.00 where CodContasPagar =1401333
--UPDATE ContasPagar set Situacao = 'Liquidada'where CodContasPagar =1401333
select * from ContasPagas where CodContasPagar =1401333

select * from ContasPagas_log where CodContasPagar =1401333

select * from Fornecedores where RazaoSocial like '%Granponto%'
select SituacaoFornecedor, DataSituacao,DataCriacao,CodTipoFornecedor,* from Fornecedores where CodFornecedor in (1090413,1003231)
select SituacaoFornecedor, DataSituacao,CodTipoFornecedor,* from Fornecedores_Log where CodFornecedor in (1090413,1003231)
select * from Usuarios where CodUsuario = 11388


