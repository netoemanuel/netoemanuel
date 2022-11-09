--select count(distinct mdfe.Sequencial) QTD   --> 41.092 PRÓPRIOS  -> representam 42.586 CTEs
select distinct mdfe.Sequencial, mdfe.Id 'NomeArquivo', convert(varchar(max),envio.xmlEnvolvido) 'XML_Enviado', convert(varchar(max),retorno.xmlEnvolvido) 'XML_Retorno', 'Autorizado' AS 'Status'
from LONTANO_GSe.dbo.MDFe mdfe
left join LONTANO_GSe.dbo.propVeiculos_MDFe prop on prop.Sequencial = mdfe.Sequencial
join LONTANO_GSe.dbo.MDFe_LOG envio on envio.Sequencial = mdfe.Sequencial and envio.codLog = 10 and envio.ID = (select MAX(ultenvio.id) from LONTANO_GSe.dbo.MDFe_LOG ultenvio where ultenvio.Sequencial = envio.Sequencial and ultenvio.codLog = 10)
join LONTANO_GSe.dbo.MDFe_LOG retorno on retorno.Sequencial = mdfe.Sequencial and retorno.codLog = 22 and retorno.ID = (select MAX(ultretorno.id) from LONTANO_GSe.dbo.MDFe_LOG ultretorno where ultretorno.Sequencial = retorno.Sequencial and ultretorno.codLog = 22)
join LONTANO_GSe.dbo.infCTe_MDFe infcte on infcte.Sequencial = mdfe.Sequencial
join LONTANO_GSe.dbo.CTe cte on cte.ID = infcte.chCTe
join ConhecimentosTransporte ctrc_mdfe on ctrc_mdfe.Sequencial = cte.Sequencial
join Veiculos v on v.CodVeiculo = ctrc_mdfe.CodVeiculo
left join ConhecimentosComplementados ctecomp on ctecomp.SeqConhecimentoComplementado = cte.Sequencial
LEFT join ConhecimentosTransporte ctrccomp on ctrccomp.Sequencial = ctecomp.SeqConhecimentoComplementar
left join ConhecimentosSubstituidos ctesubs on ctesubs.SeqCTRCOriginal = cte.Sequencial
LEFT join ConhecimentosTransporte ctrcsubs on ctrcsubs.Sequencial = ctesubs.SeqCTRCSubstituto
join LONTANO_GSe.dbo.Condutor_MDFe motmdfe on motmdfe.Sequencial = mdfe.Sequencial
left join Temp_FeriasMotoristas ferias on ferias.motorista = motmdfe.CPF and ctrc_mdfe.DataEmissao between ferias.inicio and ferias.fim
where mdfe.Status in (1,9)
	and mdfe.dhEmi between '2021-01-01' and '2022-09-30 23:59:29'
	and (prop.Sequencial is null or prop.CNPJ = '11455829000103')
	and isnull(ferias.motorista,'') = ''								-- SEM MOTORISTAS DE FÉRIAS
	-- NÃO GERAR QUANDO TEM OUTRO MDFE (COMP/SUBST)
	and (isnull(ctrccomp.Sequencial,ISNULL(ctrcsubs.Sequencial,0)) = 0 
		or (isnull(ctrccomp.Sequencial,ISNULL(ctrcsubs.Sequencial,0)) > 0 
			and ISNULL((select COUNT(*) from MDFeViagem_OrdemEmbarque mvoe join lontano_gse.dbo.mdfe mdfe2 on mdfe2.codmanifestocarga = mvoe.seqviagem 
			where mvoe.NumOrdemEmbarque = isnull(ctrccomp.CodOrdemEmbarque,ISNULL(ctrcsubs.CodOrdemEmbarque,0)) and mdfe2.ID <> mdfe.Id and mdfe2.Status in (1,9)),0) = 0))
order by mdfe.Sequencial
