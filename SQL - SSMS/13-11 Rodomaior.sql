use RODOMAIOR


select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)


exec MonitoraMDFe 66023903
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 541256


SELECT *FROM OrigemDadosItensAcerto WHERE CodOrigemDados = 1089479
--delete OrigemDadosItensAcerto WHERE CodOrigemDados = 1089479

--SeqAcerto	CodTipoMovAcerto	CodOrigemDados	Marcador	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DescontarMotorista	ConfSegundaVia	MarcadorComissao
--100021904	14	1089479	NULL	12369	CG	2023-11-08 12:33:59.000	11899	CG	2023-11-13 14:13:34.000	NULL	NULL	NULL

	
--SeqAcerto	CodTipoMovAcerto	CodOrigemDados	Marcador	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DescontarMotorista	ConfSegundaVia	MarcadorComissao
--100021904	14	1089492	NULL	12369	CG	2023-11-08 14:23:32.000	12461	CG	2023-11-09 08:55:09.000	NULL	NULL	NULL
--select * from AcertoViagem where Sequencial = 100021904


select * from ConhecimentosTransporte where NumConhecto = 80761  and CodUF = 'PR' -- PR // ANT
exec VerificaCTe 340000025583 
--delete from RODOMAIOR_GSe.dbo.CTe where Sequencial = 340000025583
--exec Grava_CTe 340000025583
--delete from RODOMAIOR_GSe.dbo.CTe_log  where Sequencial = 410000027280 and id > 6716745