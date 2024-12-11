 	--
SELECT CodOrdemEmbarque,CIOT, * from ConhecimentosTransporte where NumConhecto = 713585 and CodUF = 'MT' --2023-05-02 20:20:00
--update ConhecimentosTransporte set DataEmissao = '2023-05-02 20:20:00' where sequencial = 450000023531
--
SELECT CodOrdemEmbarque,* FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND NumConhecto = 737412 
--
--update OrdemEmbarque set TipoDispositivoValePedagio = 0 where NumOrdemEmbarque = 38009561
--update OrdemEmbarque set TipoDispositivoValePedagio = 0, NumCartaoValePedagio = '4417812020196629',EmpresaValePedagio = 'Banco Bradesco S/A' where NumOrdemEmbarque = 6037236
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 31118498

--Limpar a Roteirzação--
SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 137936   and CodUF = 'SP'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 7040052  
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL where  NumOrdemEmbarque = 9042502 
--update OrdemEmbarque set EmpresaValePedagio = '' , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 50014345 
---voltar os dados:
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 0000000000000000, RotaSemParar = Null, ValorPedagioSemParar = null ,TipoDispositivoValePedagio = 0  where  NumOrdemEmbarque = 7040052 --PAMCARD
--update OrdemEmbarque set EmpresaValePedagio = 'Centro de Gestao de Meios de P' , NumCartaoValePedagio = '00000000', RotaSemParar = null, ValorPedagioSemParar = null ,TipoDispositivoValePedagio = 1, DataContratoValePedagio = '2026-01-01 00:00:00'  where  NumOrdemEmbarque = 81016322 -- TAG 
--update OrdemEmbarque set EmpresaValePedagio = 'Repom Sa' , NumCartaoValePedagio = 752770537, RotaSemParar = null, ValorPedagioSemParar = null ,TipoDispositivoValePedagio = 5  where  NumOrdemEmbarque = 26038452 --REPOM


--7040052
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Centro de Gestao de Meios de P	0741840099	1	MORRO AGUDO X GUARUJA	1287.86	2025-01-01 00:00:00

--81016322
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Banco Bradesco S/A		00000000						0						2				888.30				2026-01-01 00:00:00

--26038452
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Banco Bradesco S/A			752770537				0						0					693.00				2025-12-30 00:00:00
--95033729
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Banco Bradesco S/A	000000000						0						0						43.40			2027-06-30 00:00:00

--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	754691590	5	NULL	NULL	2024-12-31 00:00:00

--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	755092186	5	NULL	NULL	2025-01-01 00:00:00
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	754996569	5	NULL	NULL	2024-12-31 00:00:00

--9042502
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa					751690256					5						0					442.80				2024-11-30 00:00:00

--6038522
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Centro de Gestao de Meios de P	0739439366	1	CUBATAO-SP X RONDONOPOLIS-MT ALTERADA 2024	478.98	2024-12-31 00:00:00
--6038521
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Centro de Gestao de Meios de P	0743351111	1	cubatão x rondonopolis-mt nova 2024 americana	478.98	2024-12-31 00:00:00

--19040049
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	000000000	5	NULL	NULL	2024-12-31 00:00:00
--19040048
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	000000000	5	NULL	NULL	2024-12-30 00:00:00


SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio,EmpresaValePedagio,NumCartaoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776
 --UPDATE ConhecimentosTransporte set TipoDispositivoValePedagio = null, NumCartaoValePedagio = null where Sequencial = 140000003034
--
SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 24083819
--

SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque where NumOrdemEmbarque = 36019859
--
SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE oe.NumOrdemEmbarque = 8087806
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--update OrdemEmbarque set CIOT ='REPOM' where NumOrdemEmbarque = 84025247

SELECT * from RelacaoFretes where CodRelacaoFrete = 23007695
select top (50)Observacoes, * from RelacaoFretes where  DataCriacao > '2024-05-30' and CodFornecedor = 1001300

SELECT TOP(20)NumConhecto, * FROM ConhecimentosRelacaoFretes crf
INNER JOIN ConhecimentosTransporte ct ON ct.Sequencial = crf.NumSeqConhecto
INNER JOIN OrdemEmbarque oe ON oe.NumOrdemEmbarque = ct.CodOrdemEmbarque
WHERE oe.CIOT = 'REPOM' 
ORDER BY crf.DataCriacao DESC


-- quando for olhar apenas um CTRC, no caso for complemento usar essa SQL:
--SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
--inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id AND CF.Sequencial = CTRC.Sequencial
--WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 387207                     
--ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC 
--
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	=1713296
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete	=1713297

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 50777                                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 50777                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT * from CartaFrete_Ocorrencia where IdCartaFrete = 1721646 and NumSeq = 8
--delete from CartaFrete_Ocorrencia where IdCartaFrete = 1721646 and NumSeq = 8
--IdCartaFrete	NumSeq	SeqConsulta	DataCriacao	CodUsuarioCriacao	CodFilialCriacao	DescricaoOcorrencia	ConteudoXml	tipoOcorrencia	Erro	Valido	CodAdmPagtoFrete	Protocolo	CodViagemPamcard
--1721646	8	1	2024-12-06 18:52:27.400	14102	CG	INSERIR VIAGEM	EFU2G01	ERRO	FALHA AO CARREGAR O RELATÓRIO.	1	7	NULL	NULL

select * FROM Usuarios where CodUsuario = 12434


SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 64075944 ORDER BY datalog desc

 --SQL RDM para verificar cancelamento CIOT pois as NFSes lá, não tem intagração ou seja nao é cancelada como na Lontano
SELECT count(*)
FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE 
CTRC.SerieConhecto = 'E' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto in (10135) 
--nova validação paa encontrar somente CIOT CANCELADOS
and DescricaoOcorrencia = 'CANCELAR CIOT' AND ConteudoXml LIKE '%StatusCode":200%' AND ConteudoXml LIKE '%canceled successfully%' AND tipoOcorrencia = 'RETORNO'


select * FROM CartaFrete_Parcela_Pamcard where NumOrdemEmbarque = 8087806


select NumeroCartao,* from OrdemEmbarque where NumOrdemEmbarque = 7037862 
--UPDATE OrdemEmbarque set NumeroCartao = 751781147 where NumOrdemEmbarque = 7037862 -- NUMERO CARTÃO REPOM ANTIGO 751781287
select CIOT, * from OrdemEmbarque_log where NumOrdemEmbarque = 72049216 order by DataLog desc
--
select ciot,* from OrdemEmbarque_log where NumOrdemEmbarque = 25109296 order by DataLog desc
--
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000002297 
select * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 100000002297 
SELECT * FROM CartaFrete WHERE Id = 778459
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
select CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 41057445
--

--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1388581 -- 73906459
--
SELECT * FROM CartaFrete WHERE Id = 80195288
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 80195288
--
--Neste caso a roteirização foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai não achar o pedágio. Posso apagar os dados da roteirização da ordem para você poder refazer a roteirização e pagar pela Sem Parar,
--Mas pode dar divergência no valor que foi destacado no conhecimento.
--
SELECT RotaSemParar, ValorPedagioSemParar  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 74011946
SELECT RotaSemParar, ValorPedagioSemParar  FROM OrdemEmbarque_log WHERE NumOrdemEmbarque = 74011946
--
--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL, NumCartaoValePedagio = null  WHERE NumOrdemEmbarque = 44061232
--update OrdemEmbarque set EmpresaValePedagio = null , NumCartaoValePedagio = null  where  NumOrdemEmbarque = 63009078 
--

--Ticket #3175 - Erro pedágio visto com Jhonny dia 10/08/2022
--falta a informação do CodViagemPamCard na tela do CTCR e Consulta Integração PamCard/SemParar 
--pegar o CodViagemPamcard na SQL acima (TOP100) na coluna descrição ocorrencia que estiver 'Inserir Viagem'.
--a SQL usada pelo Jhonny foi:

--Quando nao aparecer nada na grid, ver a conversa com Jhonny dia 19/12/2023 msg "deve ter perdido o log que mostra que a viagem foi comprada"
--#14244 < ERRO GS - ENVIAR PEDAGIO SEM PARAR CTE 610937 >
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1027744 AND NumSeq = 19
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 62094996, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1507337 AND NumSeq = 19

--IdCartaFrete	NumSeq	SeqConsulta	DataCriacao	CodUsuarioCriacao	CodFilialCriacao	DescricaoOcorrencia	ConteudoXml	tipoOcorrencia	Erro	Valido	CodAdmPagtoFrete	Protocolo	CodViagemPamcard
--1507337	19	1	2023-12-19 17:00:13.807	14102	CG	INSERIR VIAGEM	QPB5197	ENVIO		1	7	NULL	NULL
--
----------------------------------------------------------------------------------------------------------------------------------
--REPOM
--Erro ao Gerar CIOT
--CÓDIGO: 728 - 'TOTALFREIGHTVALUE' SHOULD NOT BE EMPTY.; CÓDIGO: 728 - 'TOTALFREIGHTVALUE' MUST BE GREATER THAN '0'.;
--Erro devido a ter saldo pago na guia 2 os CT-es do do chamado são complemento 
-- Erro ao pagar Estadia REPOM 
--Quando tiver ess retorno:
--CÓDIGO: 728 - 'PAYMENT.EXPECTEDDELIVERYDATE' MUST BE GREATER THAN OR EQUAL TO '8/31/2023 12:00:00 AM'.; 
--Fazer:
--Alterar a data da emissão do CT-e para uma data mais recente e depois de ser feito o pagamento, voltar a data original
SELECT DataEmissao,  * from ConhecimentosTransporte where NumConhecto = 180455   and CodUF = 'PR' --2023-08-24 00:00:00  -- EXEMPLO caso dia 31/08/2023
--update ConhecimentosTransporte set DataEmissao = '2023-06-09 08:55:53.000' where sequencial = 430000005373 -- 2023-10-31 13:15:00








