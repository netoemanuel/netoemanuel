	--
SELECT CodOrdemEmbarque,CIOT, * from ConhecimentosTransporte where NumConhecto = 614469 and CodUF = 'GO' --2023-05-02 20:20:00
--update ConhecimentosTransporte set DataEmissao = '2023-05-02 20:20:00' where sequencial = 450000023531
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'SP' AND NumConhecto = 179355
--
--Alterar dispositivo
select TipoDispositivoValePedagio,NumCartaoValePedagio  from OrdemEmbarque where NumOrdemEmbarque = 31118498 -- 0 / 07384514
--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 31118498

--update OrdemEmbarque set TipoDispositivoValePedagio = 0, NumCartaoValePedagio = Null where NumOrdemEmbarque = 31118498
--
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 31118498
--
--Limpar a Roteirzação--
SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 400066 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 98032534 
--update OrdemEmbarque set EmpresaValePedagio = NULL , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar = NULL  where  NumOrdemEmbarque = 98032534 
---voltar os dados:
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4417812013348815, RotaSemParar = 'UNAI MG X UBERLANDIA MG', ValorPedagioSemParar = 266.40  where  NumOrdemEmbarque = 30060345 


--98032534
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	00000000	0	228.60

--85020325
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	4198071136412942	SETE QUEDAS MS X RIO GRANDE RS	355.00


--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812010804786	UBERLÂNDIA MG X LAGOA GRANDE MG	50.80


--98032334
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	0	355.20

--ordem 94059468
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812003383418	PATROCINIO-MG X UBERLANDIA-MG	152.40


--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	0	113.40



SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio,EmpresaValePedagio,NumCartaoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776
 --UPDATE ConhecimentosTransporte set TipoDispositivoValePedagio = null, NumCartaoValePedagio = null where Sequencial = 140000003034

SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 19037203
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao, DataLog
from OrdemEmbarque_Log where NumOrdemEmbarque = 81011801 ORDER BY datalog desc
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque where NumOrdemEmbarque = 40014293
--
SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 191137 
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--update OrdemEmbarque set CIOT ='REPOM' where NumOrdemEmbarque = 84025247

-- quando for olhar apenas um CTRC, no caso for complemento usar essa SQL:
--SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
--inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id AND CF.Sequencial = CTRC.Sequencial
--WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 387207                     
--ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC 
--
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 705798                                  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
	
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
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 11020034 ORDER BY datalog desc
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
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1507337 AND NumSeq = 19
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








