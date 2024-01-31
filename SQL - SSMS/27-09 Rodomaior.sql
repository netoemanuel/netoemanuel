USE RODOMAIOR

select CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 186636  and CodUF = 'MS'
------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Veiculos where CodVeiculo =  323728
select * from ConjuntosVeiculo where CodVeiculo =  323728
--antigo
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--323728	1	83987	83988	NULL	NULL	11091	DOU	2019-06-13 09:36:45.000	12615	AMB	2023-09-02 15:58:47.000	NULL

select * from Veiculos where CodVeiculo =  323728
select * from ConjuntosVeiculo where CodVeiculo =  323728

select * from Veiculos where CodVeiculo =  26225
select * from ConjuntosVeiculo where CodVeiculo =  26225

EXEC MonitoraMDFe 14002014
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial = 525478

--UPDATE ConjuntosVeiculo set CodVeiculoAdicional1 = 83987, CodVeiculoAdicional2 = 83988, DataAlteracao  = GETDATE ()  where CodVeiculo =  26225

--novo
--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Eixos
--26225	1	257328	257329	NULL	NULL	12567	DOU	2022-12-20 14:58:06.000	12694	DOU	2023-03-31 10:54:40.000	NULL

------------------------------------------------------------------------------------------------------------------------------------------------------------------
--exec VerificaCTe 310000013333
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 --SELECT DISTINCT 
	--	 AcertoViagem.Sequencial, Veiculos.PlacaVeiculo, Veiculos.DescVeiculo, AcertoViagem.CodMotorista, Motoristas.NomeMotorista, 
	--	 AcertoViagem.DataInicial, AcertoViagem.DataFinal, AcertoViagem.CodVeiculo, AcertoViagem.DataAcerto, AcertoViagem.CodColaborador, Colaboradores.NomeColaborador,
	--	 AcertoViagem.KmInicial, AcertoViagem.KmFinal, AcertoViagem.QuantCombustivel, TiposMovimentoAcerto.DescTipoMovAcerto, ItensAcertoViagem.ValorCalculado,
	--	 ItensAcertoViagem.ValorConfirmado, ItensAcertoViagem.SeqAcerto, AcertoViagem.ValorComissao, AcertoViagem.PercentComissao, TiposMovimentoAcerto.OrdemTela, 
	--	 DocumentosPendentes.valororigem, TiposMovimentoAcerto.TipoValorConfirmado
 --FROM   
	--	 (((((RODOMAIOR.dbo.ItensAcertoViagem ItensAcertoViagem
	--	 INNER JOIN RODOMAIOR.dbo.AcertoViagem AcertoViagem ON ItensAcertoViagem.SeqAcerto=AcertoViagem.Sequencial) 
	--	 INNER JOIN RODOMAIOR.dbo.TiposMovimentoAcerto TiposMovimentoAcerto ON ItensAcertoViagem.CodTipoMovAcerto=TiposMovimentoAcerto.CodTipoMovAcerto)
	--	 LEFT OUTER JOIN RODOMAIOR.dbo.DocumentosPendentes DocumentosPendentes ON (ItensAcertoViagem.SeqAcerto=DocumentosPendentes.SeqAcerto) 
	--	 AND (ItensAcertoViagem.CodTipoMovAcerto=DocumentosPendentes.CodTipoMovAcerto)) 
	--	 INNER JOIN RODOMAIOR.dbo.Veiculos Veiculos ON AcertoViagem.CodVeiculo=Veiculos.CodVeiculo) 
	--	 INNER JOIN RODOMAIOR.dbo.Motoristas Motoristas ON AcertoViagem.CodMotorista=Motoristas.CodMotorista)
	--	 INNER JOIN RODOMAIOR.dbo.Colaboradores Colaboradores ON AcertoViagem.CodColaborador=Colaboradores.CodColaborador
 --WHERE  
	--	AcertoViagem.MesAno = '08/2023' AND AcertoViagem.CodVeiculo = 900
	--	AND ItensAcertoViagem.ValorCalculado<>0 
	--	AND ((TiposMovimentoAcerto.TipoValorConfirmado='Sugerido' 
	--	OR TiposMovimentoAcerto.TipoValorConfirmado='Digitado') 
	--	OR TiposMovimentoAcerto.TipoValorConfirmado='Calculado'
	--	AND DocumentosPendentes.valororigem<>0)
 --ORDER BY
	--	AcertoViagem.CodVeiculo, AcertoViagem.Sequencial, TiposMovimentoAcerto.OrdemTela

------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Veiculos where PlacaVeiculo in ( 'GEN-9999', 'NRL-8008', 'XXX-0000')
select * from Veiculos where CodVeiculo = 2
select * from ConjuntosVeiculo where CodVeiculo = 2
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--2,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL


select * from Veiculos where CodVeiculo = 808
select * from ConjuntosVeiculo where CodVeiculo = 808
--insert into ConjuntosVeiculo
--(CodVeiculo,CodTipoConjunto,CodVeiculoAdicional1,CodVeiculoAdicional2,CodVeiculoAdicional3,ComprimentoConjunto,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodUsuarioAlteracao,CodFilialAlteracao,DataAlteracao,Eixos)
--select
--808,	3,	310879,	NULL,	NULL,	NULL,	12451,	'CG',	GETDATE(),	NULL,	NULL,	NULL,	NULL

------------------------------------------------------------------------------------------------------------------------------------------------------------------


select * from Veiculos where PlacaVeiculo = 'QCG-7295'

select CodOrdemEmbarque, * from ConhecimentosTransporte where CodVeiculo = 364579 order by DataCriacao desc --  42646 MT

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 42646                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


------------------------------------------------------------------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 74004440
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (525487,525469,525465,525460,525451)

exec MonitoraMDFe 15037063
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (525223)

exec MonitoraMDFe 9022737
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (525439,525438)

exec MonitoraMDFe 58004128 -- gerada especifico por mim 
--delete from RODOMAIOR_GSe.dbo.MDFe where Sequencial in (525584)