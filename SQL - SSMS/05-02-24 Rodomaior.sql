use RODOMAIOR

--insert INTO Programas (CodPrograma, NomePrograma, CodSistema, CodModuloSistema, TipoPrograma, FuncaoPrograma, CodProgramaEspecial, SituacaoPrograma, CodUsuario, Definicoes, Pendencias, IndGerencial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, PaginaWeb, Ordenacao, OpcaoMenuSite, Icone) 
--select 'LiberarTaxaAdmOrdem', 'Liberar Taxa Administrativa Etcs', 3, 1, 'Novo', 'Acesso Especial', 'frmOrdemEmbarque', 'Em Produção', 12451, 'Acesso especial para liberaçao do desconto da Taxa Administrativa em embarques com PJs que sejam ETCs (nao TACs). Solicitação Laércio 05-02', NULL, NULL, 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL, NULL, NULL, NULL

select * from Usuarios where NomeUsuario like '%Joilson%'
select NomeUsuario,* from PermissoesAcesso 
join Usuarios on PermissoesAcesso.CodUsuario = Usuarios.CodUsuario
where CodPrograma = 'LiberarTaxaAdmOrdem'

--insert INTO PermissoesAcesso (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 10007, 'LiberarTaxaAdmOrdem', 'N', 'N', 'N', 'N', 'N', 'S', 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL
--insert INTO PermissoesAcesso (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 10008, 'LiberarTaxaAdmOrdem', 'N', 'N', 'N', 'N', 'N', 'S', 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL
--insert INTO PermissoesAcesso (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 10311, 'LiberarTaxaAdmOrdem', 'N', 'N', 'N', 'N', 'N', 'S', 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL
--insert INTO PermissoesAcesso (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 12606, 'LiberarTaxaAdmOrdem', 'N', 'N', 'N', 'N', 'N', 'S', 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL
--insert INTO PermissoesAcesso (CodUsuario, CodPrograma, TipoInclusao, TipoAlteracao, TipoExclusao, TipoConsulta, TipoImprimir, TipoEspecial, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, CodUsuarioAlteracao, CodFilialAlteracao, DataAlteracao, CodUsuarioDuplicado)
--select 10337, 'LiberarTaxaAdmOrdem', 'N', 'N', 'N', 'N', 'N', 'S', 12451, 'CG', GETDATE(), NULL, NULL, NULL, NULL


select CodVeiculo,* from OrdemEmbarque where NumOrdemEmbarque = 18015274 --56
--UPDATE OrdemEmbarque set CodVeiculo = 53 where NumOrdemEmbarque = 18015274 
select * from veiculos where PlacaVeiculo = 'OOI-0053'

select * from ConjuntosVeiculo where CodVeiculo  = 53

exec MonitoraMDFe 69012537

blk

