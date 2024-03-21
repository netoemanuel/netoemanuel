use RODOMAIOR

select SituacaoConhecto,* from ConhecimentosTransporte where SituacaoConhecto like '%Subs%'
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 558918  -- Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where Sequencial = 410000028504
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 195471 and CodUF = 'MS'  -- Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where Sequencial = 360000007127
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 195472 and CodUF = 'MS'  -- Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where Sequencial = 360000007128
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 195473 and CodUF = 'MS'  -- Emitido
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Substituído' where Sequencial = 360000007129


SELECT PisPasep,* FROM Fornecedores WHERE (CodFornecedor = 65000735) -- 125.22596.96-0
--update Fornecedores set PisPasep = '133.00077.72-8' WHERE (CodFornecedor = 65000735)



select * from Usuarios where CodFilial = '99'
select * from PermissoesAcesso where CodUsuario = 990013
--App_ConsultarRelacao
--App_Dashboard
--App_ImprimirRelacao
--App_PagamentoFretes

select * from PermissoesAcesso where CodUsuario = 991012

--insert into PermissoesAcesso  (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 991012, 'App_ConsultarRelacao','N', 'N', 'N','N', 'N','N', 12451, 'CG', getdate(), NULL, NULL, NULL, NULL
--insert into PermissoesAcesso  (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 991012, 'App_Dashboard','N', 'N', 'N','N', 'N','N', 12451, 'CG', getdate(), NULL, NULL, NULL, NULL
--insert into PermissoesAcesso  (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 991012, 'App_ImprimirRelacao','N', 'N', 'N','N', 'N','N', 12451, 'CG', getdate(), NULL, NULL, NULL, NULL
--insert into PermissoesAcesso  (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 991012, 'App_PagamentoFretes','N', 'N', 'N','N', 'N','N', 12451, 'CG', getdate(), NULL, NULL, NULL, NULL

select * from Motoristas where CPF = '030.694.591-61'
select CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 34025055 --1090288 / 1089827
--UPDATE OrdemEmbarque set CodMotorista = 1089827 where NumOrdemEmbarque = 34025055


select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 78343 and  CodUF = 'MG'  -- Emitido
exec VerificaCTe 660000023482

exec MonitoraMDFe 54001728
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 49517 and  CodUF = 'MS'  -- Emitido
select * from Motoristas where CPF = '384.551.531-72'
select CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 6022012 --5000931 / 1089827
--UPDATE OrdemEmbarque set CodMotorista = 4007979 where NumOrdemEmbarque = 6022012
