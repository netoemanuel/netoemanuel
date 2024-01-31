use RODOMAIOR

select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes where CodRelacaoFrete = 92000442 

select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes_log where CodRelacaoFrete = 92000442 order by DataLog desc

select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes_log where CodRelacaoFrete = 92000532 order by DataLog desc

select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes where CodRelacaoFrete = 92000442

select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes where CodRelacaoFrete = 92000532


--insert into  Programas  (CodPrograma,NomePrograma,CodSistema,CodModuloSistema,TipoPrograma,FuncaoPrograma,CodProgramaEspecial,SituacaoPrograma,CodUsuario,Definicoes,Pendencias,IndGerencial,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,PaginaWeb,Ordenacao,OpcaoMenuSite,Icone)
--select 'ApagaDescontoRelacao',	'Apaga Desconto da Relação de Fretes',	6,	1,	'Novo',	'Acesso Especial',	'frmRelacaoFretes',	'Em Produção', 12451,	NULL,NULL,NULL,	12451,	'CG', GETDATE(),	NULL,NULL,NULL,NULL,NULL,NULL,NULL


SELECT  * FROM RelacaoFretes WHERE (CodRelacaoFrete = 92000532) AND (ISNULL(TotalRelacao,0) >= 0) AND (Desconto IS NOT NULL) AND (ISNULL(CodIndicadorDiferenca,1) = 1) AND (CodSituacao = 1)

SELECT CodIndicadorDiferenca, CodSituacao, TotalRelacao, Desconto,* FROM RelacaoFretes WHERE (CodRelacaoFrete = 92000532)


select top(100)  CodRelacaoFreteDiferenca, * from relacaofretes where isnull(valordiferenca,0) > 0 and (OutrasDespesas + ValorDiferenca) <> 0 and CodRelacaoFreteDiferenca is null and  CodRelacaoFreteDiferenca  IS NOT NULL order by DataEntradaRelacao desc


select ValorDiferenca, CodRelacaoFreteDiferenca, CodContasPagar, * from RelacaoFretes where CodRelacaoFrete = 92000532
--UPDATE RelacaoFretes set CodIndicadorDiferenca = 1, CodSituacao = 1  where CodRelacaoFrete = 92000532

select Situacao,* from ContasPagar where CodContasPagar =92000532

--UPDATE ContasPagar set Situacao = 'Liberada' where CodContasPagar =92000532 -- Liquidada


select ValorDiferenca, CodRelacaoFreteDiferenca, * from RelacaoFretes where CodRelacaoFrete IN( 92000442,92000532)