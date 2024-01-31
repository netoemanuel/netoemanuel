use LONTANO


select   top (100)  Status,* from LONTANO_GSe.dbo.Eventos_CTe order by DataCriacao desc

exec VerificaCTe 530000157105

select   Status,* from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 530000157105
--------------------------------------------------------------------------------------------------------------------------
--insert into Programas
--(CodPrograma,NomePrograma,CodSistema,CodModuloSistema,TipoPrograma,FuncaoPrograma,CodProgramaEspecial,SituacaoPrograma,CodUsuario,Definicoes,Pendencias,IndGerencial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,PaginaWeb,Ordenacao,OpcaoMenuSite,Icone)
--select 'frmRelContasPagarAbertoForn',	'Rel. Contas Pagar Aberto Até a Data P/ Fornecedor',	7,	3,	'Novo','Relatório',NULL,'Em Produção',	14102,NULL,NULL,NULL,14102,'CG',	GETDATE(),	NULL,NULL,NULL,NULL,NULL,NULL,NULL
--insert into Programas
--(CodPrograma,NomePrograma,CodSistema,CodModuloSistema,TipoPrograma,FuncaoPrograma,CodProgramaEspecial,SituacaoPrograma,CodUsuario,Definicoes,Pendencias,IndGerencial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,PaginaWeb,Ordenacao,OpcaoMenuSite,Icone)
--select 'frmRelContasPagarAberto',	'Relatório Contas Pagar Aberto',	7,	3	,'Novo',	'Consulta'	,NULL,	'Em Produção',	14102,	NULL,	NULL,	NULL,	14102,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL
--insert into Programas
--(CodPrograma,NomePrograma,CodSistema,CodModuloSistema,TipoPrograma,FuncaoPrograma,CodProgramaEspecial,SituacaoPrograma,CodUsuario,Definicoes,Pendencias,IndGerencial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,PaginaWeb,Ordenacao,OpcaoMenuSite,Icone)
--select 'frmRelContasReceberAbertoCli',	'Relatório Contas Receber Aberto Por Cliente',	7,	3,	'Novo',	'Relatório',	NULL,	'Em Produção',	14102,	NULL,	NULL,	NULL,	14102,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL, NULL,	NULL,NULL
--insert into Programas
--(CodPrograma,NomePrograma,CodSistema,CodModuloSistema,TipoPrograma,FuncaoPrograma,CodProgramaEspecial,SituacaoPrograma,CodUsuario,Definicoes,Pendencias,IndGerencial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,PaginaWeb,Ordenacao,OpcaoMenuSite,Icone)
--select 'frmRelContasReceberAberto',	'Relatório Contas Receber Aberto',	7,	3,	'Novo',	'Consulta',	NULL,	'Em Produção',	14102,	NULL,	NULL,	NULL,	14102,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL