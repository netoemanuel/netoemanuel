select * from Usuarios where CodUsuario in (12589,12461)

select * from Colaboradores where CodColaborador in (12589,12461)

--Tem que ter:
--- App_Dashboard (menuzão do portal WEB da GS)
--- App_ConsultarCTe (inserir documentos/imagens)
--- App_ConferenciaDocCte (consultar/aprovar imagens)
select * from PermissoesAcesso where CodPrograma = 'App_Dashboard' and CodUsuario = '10005'

--INSERT into PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--values (130,'App_Dashboard','S','S','S','S','S','S',12451,'CG',getdate (),NULL,NULL,NULL,NULL)
--INSERT into PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--values (130,'App_ConsultarCTe','S','S','S','S','S','S',12451,'CG',getdate (),NULL,NULL,NULL,NULL)

--INSERT into PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--values (129,'App_Dashboard','S','S','S','S','S','S',12451,'CG',getdate (),NULL,NULL,NULL,NULL)
--INSERT into PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--values (129,'App_ConsultarCTe','S','S','S','S','S','S',12451,'CG',getdate (),NULL,NULL,NULL,NULL)

select * from PermissoesAcesso where CodUsuario in (129)
select * from PermissoesAcesso where CodUsuario in (130)

select * from Usuarios where CodUsuario in (130,129)



select * from TalaoCheques where ChequeInicial = 54024503

select * from ChequesEmitidos_log where NumeroCheque = 54024503