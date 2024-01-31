use LONTANO


exec MonitoraMDFe 22081038
select * from LONTANO_GSe.dbo.Descarga_MDFe where Sequencial = 1588965
select qCarga, vCarga, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1588965
exec MonitoraMDFe 22081068

select * from ConhecimentosTransporte where NumConhecto in (699706, 699708, 699734) and CodUF = 'MT'

select * from ConhecimentosTransporte where NumConhecto in (395484) and CodUF = 'MG'

exec VerificaCTe 270000075747

select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 270000075747

select CodContasPagar, * from InfracaoTransito where CodUsuarioCriacao = 14102
select CodContasPagar, * from InfracaoTransito_log where CodUsuarioLog = 14102

select CodMovCaixa, * from ContasPagar_log where CodContasPagar = 1895646
select CodMovCaixa, * from ContasPagar where CodContasPagar = 1895646

select CodMovCaixa, * from ContasPagas where CodContasPagar = 1895646
select CodMovCaixa, * from ContasPagas_Log where CodContasPagar = 1895646

select * from MovimentosCaixa where CodMovCaixa = 101649833
select * from MovimentosCaixa_log where CodMovCaixa = 101649833


select * from Temp_BaixasMultiplas
--delete from Temp_BaixasMultiplas where Situacao = 'Agendada PAG-FOR'