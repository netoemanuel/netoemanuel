select * from Usuarios where CodUsuario = 122
SELECT CodUsuarioDuplicado,DataAlteracao,* from PermissoesAcesso where CodUsuario in (13080)
SELECT * from PermissoesAcesso where CodUsuario in (10732,13080) AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard')

--INSERT INTO PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--select 13080,'App_Dashboard','S','S','S','S','S','N',12451,	'CG',GETDATE(),NULL,	NULL,	NULL,	NULL

--Tem que ter:
--- App_Dashboard (menuzão do portal WEB da GS)
--- App_ConsultarCTe (inserir documentos/imagens)
--- App_ConferenciaDocCte (consultar/aprovar imagens)