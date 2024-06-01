select * from Usuarios where CodUsuario = 13080
SELECT * from PermissoesAcesso where CodUsuario in (10732,0000) AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard')

--INSERT INTO PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--select 13080,'App_Dashboard','S','S','S','S','S','N',12451,	'CG',GETDATE(),NULL,	NULL,	NULL,	NULL

--Tem que ter:
--- App_Dashboard (menuzão do portal WEB da GS)
--- App_ConsultarCTe (inserir documentos/imagens)
--- App_ConferenciaDocCte (consultar/aprovar imagens)