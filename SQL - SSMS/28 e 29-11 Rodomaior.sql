select * from ConhecimentosTransporte where NumConhecto = 45235  and CodUF = 'MT'

select * from Veiculos where CodVeiculo = 408767
select * from ConjuntosVeiculo where CodVeiculo = 408767

select * from Veiculos where PlacaVeiculo = 'JAL7G90'
select * from ConjuntosVeiculo where CodVeiculo = 376060



SELECT DataCriacao, CodUsuarioCriacao,* FROM ContasReceber WHERE CodContasReceber = 1182556 
SELECT * FROM ContasRecebidas WHERE CodContasReceber = 1182556
SELECT CodTipoMovCaixa, CodTipoDocCaixa,* FROM MovimentosCaixa WHERE CodMovCaixa = 10119509


SELECT DescTipoReceita, NivelContaReceita, SituacaoConta FROM PlanoContasReceita WHERE (CodTipoReceita = 31)

select CodTipoCaixa,  * from Caixas where CodTipoCaixa = 7

select * from ComboBox_Financeiro order by NomeComboBox desc


select * from ConhecimentosTransporte where NumConhecto = 3421
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = 0 where Sequencial = 970000003803

exec MonitoraMDFe 79004035


select * from ConhecimentosTransporte where NumConhecto in ( 3426, 3427) and CodUF = 'PA'

select * from ConhecimentosTransporte_log where NumConhecto in ( 3426, 3427) and CodUF = 'PA'