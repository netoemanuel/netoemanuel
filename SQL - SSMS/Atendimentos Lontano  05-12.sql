select * from ConhecimentosTransporte where NumConhecto in (90189) and CodUF = 'MT' AND SerieConhecto = '2'
SELECT * from ConhecimentosComplementados where 530000172789 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

select * from ConhecimentosTransporte where Sequencial = 530000172791


SELECT * from HistoricoConjuntosVeiculo where CodVeiculo = 6814 ORDER BY DataCriacao desc

SELECT * from Usuarios where CodUsuario = 13937

select * from ConhecimentosTransporte where NumConhecto in (21610,22252,22257,22444) AND CodUF = 'PA'
select * from ConhecimentosTransporte_log where NumConhecto in (21610,22252,22257,22444) AND CodUF = 'PA' ORDER BY AcaoLog desc


select * FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 150000022052 
select * from ConhecimentosTransporte_log where NumConhecto in (21610,22252,22257,22444) AND CodUF = 'PA'
select * FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 810000012776
select * from ConhecimentosTransporte_log where NumConhecto in (21610,22252,22257,22444) AND CodUF = 'PA'
select * FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 150000022820
select * from ConhecimentosTransporte_log where NumConhecto in (21610,22252,22257,22444) AND CodUF = 'PA'
select * FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 150000023036 ORDER BY dhLog DESC
select * from ConhecimentosTransporte_log where NumConhecto in (22444) AND CodUF = 'PA'

EXEC VerificaCTe 150000023036

EXEC VerificaCTe 810000012776


select CIOT,CodUsuarioCriacao, CodFilialCriacao, * from OrdemEmbarque where NumOrdemEmbarque = 26038465
select CIOT, * from OrdemEmbarque_log where NumOrdemEmbarque = 26038465

select NM_Fantasia,DT_Validade_certificado,DS_Senha_certificado from LONTANO_GSe.dbo.tblEmitentes
select NM_Fantasia,DT_Validade_certificado,DS_Senha_certificado from LONTANO_NFe.dbo.tblEmitentes