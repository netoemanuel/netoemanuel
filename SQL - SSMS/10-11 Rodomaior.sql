use  RODOMAIOR


--SELECT *FROM OrigemDadosItensAcerto WHERE CodOrigemDados = 1089492
--UPDATE OrigemDadosItensAcerto set WHERE CodOrigemDados = 1089492
	
--SeqAcerto	CodTipoMovAcerto	CodOrigemDados	Marcador	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DescontarMotorista	ConfSegundaVia	MarcadorComissao
--100021904	14	1089492	NULL	12369	CG	2023-11-08 14:23:32.000	12461	CG	2023-11-09 08:55:09.000	NULL	NULL	NULL
--select * from AcertoViagem where Sequencial = 100021904

select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)

--SELECT OrdemServico.CodOS, OrdemServico.NumeroNF, DataOS, OrdemServico.CodVeiculo, MotivoOS,
--(CASE WHEN ContasPagar.CodFornecedor IS NOT NULL THEN CAST(ContasPagar.CodFornecedor AS VARCHAR) 
--+ ' - ' + Fornecedores.RazaoSocial ELSE CAST(Oficinas.CodOficina AS VARCHAR) + ' - ' + NomeOficina END) AS DepForn,
--SUM(ValorServico) as ValorServico, Marcador, SUM(ValorApropriacao) as ValorPecas, SUM(ValorApropriacao)+SUM(ValorServico) as ValorTotal
--FROM OrdemServico 
--LEFT OUTER JOIN RequisicaoProdutos ON RequisicaoProdutos.CodOS = OrdemServico.CodOS 
--LEFT OUTER JOIN ItensRequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao
--INNER JOIN ServicosOrdemServico ON ServicosOrdemServico.CodOS = OrdemServico.CodOS INNER JOIN Oficinas ON Oficinas.CodOficina = OrdemServico.CodOficina 
--LEFT OUTER JOIN ContasPagar_OrdemServico ON OrdemServico.CodOS = ContasPagar_OrdemServico.CodOS LEFT OUTER JOIN ContasPagar ON ContasPagar.CodContasPagar = ContasPagar_OrdemServico.CodContasPagar
--LEFT OUTER JOIN Fornecedores ON ContasPagar.CodFornecedor = Fornecedores.CodFornecedor
--INNER JOIN OrigemDadosItensAcerto ON CodTipoMovAcerto = 14 
--and CodOrigemDados = OrdemServico.CodOS WHERE CodTipoMovAcerto = 14 
--AND SeqAcerto = 100021904 and TipoOficina = 'Terceiros'
--GROUP BY OrdemServico.CodOS, OrdemServico.NumeroNF, DataOS, OrdemServico.CodVeiculo, MotivoOS, (CASE WHEN ContasPagar.CodFornecedor IS NOT NULL THEN CAST(ContasPagar.CodFornecedor AS VARCHAR) + ' - ' + Fornecedores.RazaoSocial ELSE CAST(Oficinas.CodOficina AS VARCHAR) + ' - ' + NomeOficina END), Marcador ORDER BY DataOS
--select * from OrdemServico where CodOS = 1089492


select * from ConhecimentosTransporte where NumConhecto = 5097 and SerieConhecto = 'NE'  -- PR // ANT
--update ConhecimentosTransporte set  CodUF= 'MS', CodFilialEmitente = 'CVD' where sequencial =  950000003422

select * from ConhecimentosTransporte where NumConhecto = 5098 and SerieConhecto = 'NE'  -- PR // ANT
--update ConhecimentosTransporte set  CodUF= 'MS', CodFilialEmitente = 'CVD' where sequencial =  950000003423

exec MonitoraMDFe 53005148



select DataCriacao, * from Fornecedores where IndDesabilitaCriticaANTT <> 'N' order by DataCadastro desc

select DataCriacao,CodUsuarioCriacao, * from Fornecedores where CodFornecedor = 51000799
select  * from Fornecedores_log where CodFornecedor = 51000799
select * from PermissoesAcesso where CodUsuario = 12915
select * from PermissoesAcesso where CodUsuario in ( 12915,12561) and CodPrograma = 'DesabilitarCriticasANTT'


select IndDesabilitaCriticaANTT, * from Fornecedores where DataCriacao >'2023-11-10 06:10:31.000'
select IndDesabilitaCriticaANTT, * from Fornecedores_log where DataLog >'2023-11-10 06:10:31.000' and AcaoLog = 'I'
select IndDesabilitaCriticaANTT, * from Fornecedores_log where DataLog >'2023-09-01 06:10:31.000' and AcaoLog = 'I' and IndDesabilitaCriticaANTT = 'S'



--select * from ConhecimentosTransporte where NumConhecto = 80698  and CodUF = 'PR' -- PR // ANT
--exec VerificaCTe 410000027279
----delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027279
----exec Grava_CTe 410000027279

select * from ConhecimentosTransporte where NumConhecto = 80700  and CodUF = 'PR' -- PR // ANT

exec VerificaCTe 410000027281
delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027281
--exec Grava_CTe 410000027281
--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027281

select * from ConhecimentosTransporte where NumConhecto = 80699  and CodUF = 'PR' -- PR // ANT
exec VerificaCTe 410000027280
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027280
--exec Grava_CTe 410000027280
--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027280

select * from ConhecimentosTransporte where NumConhecto = 80694  and CodUF = 'PR' -- PR // ANT
--UPDATE ConhecimentosTransporte set CodigoCFOP = '5.352' where Sequencial = 410000027276
--update RODOMAIOR_GSe.dbo.CTe set CFOP = 5352 where Sequencial = 410000027276
exec VerificaCTe 410000027276  -- CFOP
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027276
--exec Grava_CTe 410000027276

--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027276

select * from ConhecimentosTransporte where NumConhecto = 80699  and CodUF = 'PR' -- PR // ANT
exec VerificaCTe 410000027280  -- CFOP
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027280
--exec Grava_CTe 410000027280
--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027280 and id > 6716745


select * from ConhecimentosTransporte where NumConhecto = 80701  and CodUF = 'PR' -- PR // ANT
exec VerificaCTe 410000027282  -- CFOP
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 410000027282
--exec Grava_CTe 410000027282
--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027280 and id > 6716745