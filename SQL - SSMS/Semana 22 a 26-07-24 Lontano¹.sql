
SELECT DataEmissao,* from ConhecimentosTransporte where NumConhecto IN (632673, 604244 ) and CodUF = 'GO' and SerieConhecto = '0'

--select * from PedidosFrete where CodPedidoFrete IN (3013015,3014171)
select ICMSDestacado,* from PedidosFrete_log where CodPedidoFrete IN (3013015) order BY DataLog desc
select ICMSDestacado, * from PedidosFrete_log where CodPedidoFrete IN (3014171) order BY DataLog desc

EXEC VerificaCTe 510000032179



SELECT DataEmissao,* from ConhecimentosTransporte where NumConhecto IN (722249) and CodUF = 'MT' and SerieConhecto = '0'

exec VerificaCTe 20000155145

--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial IN (20000155145)
--delete from LONTANO_GSe.dbo.CTe_LOG WHERE ID  = 22865712 and Sequencial = 20000155145

EXEC VerificaCTe 510000032219

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'go' AND CTRC.Numconhecto = 633979                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 633979     and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 28186731 
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 28186731 
--update OrdemEmbarque set EmpresaValePedagio = '' , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 28186731 


--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--							4417812010804034		0					281.70

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812015911321			2					119.70


select EixosSemParar,* from OrdemEmbarque where NumOrdemEmbarque IN( 64076147,28186731)


exec MonitoraMDFe 15022626
exec MonitoraMDFe 15022627
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 WHERE Sequencial = 1685857 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nProt =935240043288155, nRec = 935240043288155 WHERE Sequencial = 1685857 and ID = 25140890

SELECT TOP(200) * from LONTANO_GSe.dbo.tblLog_operacao order by DT_Hs desc

select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1685857

--UPDATE LONTANO_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 1685857


exec MonitoraMDFe 15022627

--delete  from LONTANO_GSe.dbo.MDFe_LOG where Sequencial = 1691522 and ID > 25144655

--delete  from LONTANO_GSe.dbo.MDFe where Sequencial = 619793 


SELECT CodRecDesp, * from MovimentosCaixa where CodMovCaixa = 101728020 -- 35
--UPDATE MovimentosCaixa set CodRecDesp = 16 where CodMovCaixa = 101728020


EXEC MonitoraMDFe 6037150

SELECT * from CaramuruControle where ID = '6001869650'

EXEC VerificaCTe 20000155202
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial IN (20000155202)



SELECT RelacaoPostos.CodRelacao, RelacaoPostos.CodFornecedor, (LTRIM(RelacaoPostos.CodFornecedor) + ' - ' + Fornecedores.RazaoSocial) AS Posto, DataRelacao, MAX(ItensRelacaoPostos.DataCriacao) AS DataAlteracao, RelacaoPostos.Observacoes, SUM(ItensRelacaoPostos.Valor) AS TotalRelacao
FROM RelacaoPostos WITH (NOLOCK)
INNER JOIN ItensRelacaoPostos WITH (NOLOCK) ON ItensRelacaoPostos.CodRelacao = RelacaoPostos.CodRelacao 
INNER JOIN Fornecedores WITH (NOLOCK) ON RelacaoPostos.CodFornecedor = Fornecedores.CodFornecedor WHERE (RelacaoPostos.Situacao <> 'Pendente') AND (RelacaoPostos.CodRelacaoFrete IS NULL)
GROUP BY RelacaoPostos.CodRelacao, RelacaoPostos.CodFornecedor, Fornecedores.RazaoSocial, DataRelacao, RelacaoPostos.Observacoes, RelacaoPostos.DataAlteracao 
ORDER BY RelacaoPostos.CodFornecedor, RelacaoPostos.CodRelacao

--SELECT * from RelacaoPostos where CodRelacao = 143714
--delete  from RelacaoPostos where CodRelacao = 143714
--CodRelacao	DataRelacao	CodFornecedor	Observacoes	TotalRelacao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Situacao	CodRelacaoFrete	TipoRelacao
--143714	2024-07-12 00:00:00	1016765		1966.36	991088	99	2024-07-12 13:49:37.567	991088		2024-07-12 13:51:10.680	Finalizada	NULL	Fretes/Despesas

SELECT * from ItensRelacaoPostos where CodRelacao  = 143714
--DELETE from ItensRelacaoPostos where CodRelacao  = 143714
--CodRelacao	SeqItem	CodTipoItem	SeqConhecto	NumDocumento	Data	Observacoes	Valor	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	Ip	Browser	SessaoId	DataServidor	TempoProcessoinsercao	PesoChegada
--143714	1	2	560000030294		2024-07-12 00:00:00		1966.36	991088		2024-07-12 13:50:54.833	NULL	NULL	NULL	45.167.145.109	Chrome	1	2024-07-12 13:50:54.607	605	NULL



select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 722695  and CodUF = 'MT' and SerieConhecto = '0'
select ObsConhecto,* from ConhecimentosTransporte where ObsConhecto = 'PARA PAGAMENTO DE SALDO NECESSÁRIO CARTA FRETE OU CIOT E TICKET DE DESCARGA.'
--UPDATE ConhecimentosTransporte set ObsConhecto = 'PARA PAGAMENTO DE SALDO NECESSÁRIO CARTA FRETE OU CIOT E TICKET DE DESCARGA.' where NumConhecto = 722695  and CodUF = 'MT' and SerieConhecto = '0'
SELECT Observacoes,* from OrdemEmbarque WHERE NumOrdemEmbarque = 38009000
--UPDATE OrdemEmbarque SET Observacoes = 'PARA PAGAMENTO DE SALDO NECESSÁRIO CARTA FRETE OU CIOT E TICKET DE DESCARGA.' WHERE NumOrdemEmbarque = 38009000
SELECT ObservacoesCTRC,Observacoes,* from PedidosFrete where CodPedidoFrete = 38000721
SELECT ObservacoesCTRC,Observacoes,* from PedidosFrete_log where CodPedidoFrete = 38000721 ORDER by DataLog desc

select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 722730   and CodUF = 'MT' and SerieConhecto = '0'
select ObsConhecto,* from ConhecimentosTransporte where ObsConhecto = 'PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA'
--UPDATE ConhecimentosTransporte set ObsConhecto = 'PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA' where NumConhecto = 722730   and CodUF = 'MT' and SerieConhecto = '0'
SELECT Observacoes,* from OrdemEmbarque WHERE NumOrdemEmbarque = 38008994
--UPDATE OrdemEmbarque SET Observacoes = 'PARA PAGAMENTO DO SALDO DE FRETE NECESSARIO TICKET DE PESAGEM DA DESCARGA E VIA DO CIOT ASSINADO PELO MOTORISTA' WHERE NumOrdemEmbarque = 38008994
SELECT ObservacoesCTRC,Observacoes,* from PedidosFrete where CodPedidoFrete = 38000671
SELECT ObservacoesCTRC,Observacoes,* from PedidosFrete_log where CodPedidoFrete = 38000671 ORDER by DataLog desc


SELECT TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 411094  and CodUF = 'MG' and SerieConhecto = '0' -- Substituído
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Normal' where NumConhecto = 411094  and CodUF = 'MG' and SerieConhecto = '0'



SELECT ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 410872  and CodUF = 'MG' and SerieConhecto = '0' -- Substituído
--UPDATE ConhecimentosTransporte set ValorNF = 14878.12, SeguroAverbado = 7.44 where NumConhecto = 410872  and CodUF = 'MG' and SerieConhecto = '0' 


 

EXEC MonitoraMDFe 64076058
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1691997 
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240015482607', nProt = '941240015482607' where Sequencial = 000000 and ID = 00000000 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 2, cstat = 204 where Sequencial = 1691997

SELECT * from ConhecimentosTransporte where NumConhecto = 723038  and CodUF = 'MT' and SerieConhecto = '0' -- Substituído

SELECT * from ConhecimentosTransporte_log where NumConhecto = 723038  and CodUF = 'MT' and SerieConhecto = '0' -- Substituído


EXEC VerificaCTe 20000155292

EXEC Grava_CTe 20000155292