SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	=1713296
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1713297 and NumSeq = 21
--DELETE FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1713297 and NumSeq = 21

--IdCartaFrete	NumSeq	SeqConsulta	DataCriacao	CodUsuarioCriacao	CodFilialCriacao	DescricaoOcorrencia	ConteudoXml	tipoOcorrencia	Erro	Valido	CodAdmPagtoFrete	Protocolo	CodViagemPamcard
--1713297	21	1	2024-11-19 08:43:54.930	14102	CG	INSERIR VIAGEM	SWT0B27	ERRO	FALHA AO CARREGAR O RELATÓRIO.	1	7	NULL	NULL


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 138531                                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


--Limpar a Roteirzação--
SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 138531  and CodUF = 'SP'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 6038522  
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL where  NumOrdemEmbarque = 6038522 


--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Centro de Gestao de Meios de P	0739439366	1	CUBATAO-SP X RONDONOPOLIS-MT ALTERADA 2024	478.98	2024-12-31 00:00:00


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * from ConhecimentosTransporte where NumConhecto = 65068  and CodUF = 'PR'  -- NS
--UPDATE ConhecimentosTransporte set SerieConhecto = 'NE' where Sequencial = 640000069010


SELECT * from ConhecimentosTransporte where NumConhecto = 2026623  and CodUF = 'MT' and SerieConhecto = '1'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 2026623  and CodUF = 'MT' and SerieConhecto = '1'

select * from PedidosEmbarque where CodPedidoFrete = 88004203 ORDER BY DataCriacao desc
--insert into PedidosEmbarque VALUES (88010075,88004203,1,1,NULL,NULL,NULL,NULL,NULL,'KG',14316,'RDN','2024-11-19 14:39:23.000',NULL,NULL,NULL)
 