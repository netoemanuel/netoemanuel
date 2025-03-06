select * from Motoristas where CodMotorista = 1000194
select * FROM Motoristas_Veiculos where CodMotorista = 1000194 order BY DataCriacao desc
select * FROM Motoristas_Veiculos where CodMotorista = 1000194 AND DataCriacao = '2022-09-06 11:42:29.000'
--DELETE FROM Motoristas_Veiculos where CodMotorista = 1000194 AND DataCriacao = '2022-09-06 11:42:29.000'

--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1000194	924555	2022-09-06 00:00:00	NULL	10153	CG	2022-09-06 11:42:29.000	NULL	NULL	NULL	NULL

SELECT * from ConhecimentosTransporte where NumConhecto = 744215 and CodUF = 'MT'

EXEC VerificaCTe 20000159721
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 20000159721
select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 20000159721 and ID = 23176442
--DELETE from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 20000159721 and ID = 23176442


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 58301                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from Motoristas where CodMotorista = 1000060
select * from Veiculos where CodVeiculo = 5206
select * FROM Motoristas_Veiculos where CodVeiculo = 5206 order BY DataCriacao desc
select * FROM Motoristas_Veiculos where CodVeiculo = 5206 AND DataCriacao = '2025-01-15 07:30:07.000' and CodMotorista = 1000060
--DELETE FROM Motoristas_Veiculos where CodVeiculo = 5206 AND DataCriacao = '2025-01-15 07:30:07.000' and CodMotorista = 1000060

--CodMotorista	CodVeiculo	DataCadastro	Observacoes	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodColaborador
--1000060	5206	2025-01-15 00:00:00	NULL	15384	RO	2025-01-15 07:30:07.000	NULL	NULL	NULL	NULL


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 744305                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	= 1737933


EXEC MonitoraMDFe 97065947