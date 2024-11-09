
SELECT * from Usuarios where NomeUsuario LIKE '%Bergam%'
select * from Usuarios where CodUsuario = 10366
SELECT CodUsuarioDuplicado,DataAlteracao,CodUsuarioAlteracao,* from PermissoesAcesso where CodUsuario in (10366 ) ORDER BY CodPrograma desc
--SELECT * FROM RegistroAcessoProgramas where CodUsuario = 12233 AND DataAcesso BETWEEN '2024-08-24 10:10:45.000' and '2024-08-24 12:15:45.000'
SELECT * from PermissoesAcesso where CodUsuario in (10732,10366 ) AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard')
SELECT * from PermissoesAcesso where CodUsuario in (12988,10366 ) AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard')
--SELECT * from Colaboradores where CodColaborador in (12988,10366 )
select * from Usuarios where CodUsuario = 122

--INSERT INTO PermissoesAcesso (CodUsuario,CodPrograma,TipoInclusao,TipoAlteracao,TipoExclusao,TipoConsulta,TipoImprimir,TipoEspecial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,CodUsuarioDuplicado)
--select 12988,'App_ConferenciaDocCte','S','S','S','S','S','N',12451,	'CG',GETDATE(),NULL,	NULL,	NULL,	NULL

--Tem que ter:
--- App_Dashboard (menuzão do portal WEB da GS)
--- App_ConsultarCTe (inserir documentos/imagens)
--- App_ConferenciaDocCte (consultar/aprovar imagens)

SELECT * from PermissoesAcesso where CodUsuario in (128) AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard') order by DataLog desc--AND CodPrograma IN ('App_ConferenciaDocCte','App_Dashboard'

SELECT CodUsuarioDuplicado,* from PermissoesAcesso_log where CodUsuario in (12606 ) ORDER BY DataLog desc


SELECT * from Usuarios_log where CodUsuario = 11803 ORDER BY DataLog desc
SELECT * from Usuarios where CodUsuario = 128


SELECT * from ConhecimentosTransporte where NumConhecto = 122358 and CodUF = 'GO'

EXEC VerificaCTe 10000026898