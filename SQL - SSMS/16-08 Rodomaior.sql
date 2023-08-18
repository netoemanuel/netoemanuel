exec VerificaCTe 10000023486

select SituacaoConhecto,* from ConhecimentosTransporte where Sequencial = 10000023486
select nCT,dhEmi,DT_Alteracao,Status,DataCriacao,NO_Retorno,DS_Retorno,* from RODOMAIOR_GSe.dbo.CTe where Sequencial = 10000023486
select nCT,dhEmi,DT_Alteracao,Status,NO_Retorno,DS_Retorno,* from RODOMAIOR_GSe.dbo.CTe where Status = 5 order by DataCriacao desc --Sequencial = 10000023486
select Status,* from RODOMAIOR_GSe.dbo.CTe_LOG where Sequencial = 10000023486
select Status,* from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial = 10000023486
