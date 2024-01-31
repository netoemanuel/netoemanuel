use RODOMAIOR

select * from Motoristas where CPF = '042.127.371-24'
select * from OrdemEmbarque where NumOrdemEmbarque = 79004068
--UPDATE OrdemEmbarque set CodMotorista = 69000961 where NumOrdemEmbarque = 79004068 -- 34002720



SELECT TipoConhecimento ,* FROM ConhecimentosTransporte where NumConhecto = 22251 and SerieConhecto = 'NE'
SELECT TipoConhecimento ,* FROM ConhecimentosTransporte_log where NumConhecto = 220215  and SerieConhecto = 'NE'
select * from NotasFiscaisConhecimento where SequencialConhecimento = 550000003157

select * from NotasFiscaisConhecimento where SequencialConhecimento = 550000003160
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe  = null  where SequencialConhecimento = 550000003160

exec VerificaCTe 550000003160


exec MonitoraMDFe 35023465


exec VerificaCTe 40000036703 --SP-189755

--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 40000036703
select tpServ,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 40000036703
--UPDATE RODOMAIOR_GSe.dbo.cte set tpServ = 1 , Status = 0 where Sequencial = 40000036703
--exec Grava_CTe 40000036703
select * from rodomaior_gse.dbo.DoctoSubcontratacao_CTe where Sequencial = 40000036703 order by DataCriacao desc


select * from Estadias where NumConhecto = 100091


select TempoEstadiaACobrar, NumSeqConhecto
from ComplementoConhecimento
 --UPDATE ComplementoConhecimento SET TempoEstadiaACobrar = (TempoEstadiaACobrar+'00')
where LEN(ISNULL(TempoEstadiaACobrar,'')) = 6
    and isnumeric(left(TempoEstadiaACobrar,3)) = 0
--Select TempoEstadiaACobrar,* from ComplementoConhecimento_log
--where LEN(ISNULL(TempoEstadiaACobrar,'')) = 6
--    and isnumeric(left(TempoEstadiaACobrar,3)) = 0 order by datalog desc

	select TempoEstadiaACobrar, NumSeqConhecto
from ComplementoConhecimento
 --UPDATE ComplementoConhecimento SET TempoEstadiaACobrar = (TempoEstadiaACobrar+'00')
where LEN(ISNULL(TempoEstadiaACobrar,'')) = 5
    and isnumeric(left(TempoEstadiaACobrar,2)) = 0

	select TempoEstadiaACobrar, NumSeqConhecto
from ComplementoConhecimento
 --UPDATE ComplementoConhecimento SET TempoEstadiaACobrar = (TempoEstadiaACobrar+'00')
where LEN(ISNULL(TempoEstadiaACobrar,'')) = 8
    and isnumeric(left(TempoEstadiaACobrar,2)) = 0

	select TempoEstadiaACobrar, NumSeqConhecto
from ComplementoConhecimento
 --UPDATE ComplementoConhecimento SET TempoEstadiaACobrar = (TempoEstadiaACobrar+'00')
where LEN(ISNULL(TempoEstadiaACobrar,'')) = 9
    and isnumeric(left(TempoEstadiaACobrar,3)) = 0