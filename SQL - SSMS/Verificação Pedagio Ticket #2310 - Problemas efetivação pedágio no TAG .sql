--
SELECT CodOrdemEmbarque, * from ConhecimentosTransporte where NumConhecto = 588052 and CodUF = 'GO'
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'SP' AND NumConhecto = 179355
--
SELECT EmpresaValePedagio, ValorPedagioSemParar, TipoDispositivoValePedagio,CIOT FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776

SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776
select TipoDispositivoValePedagio, NumCartaoValePedagio,* from ConhecimentosTransporte where Sequencial = 24076776

--
--Alterar dispositivo
--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 53095092

--update OrdemEmbarque set TipoDispositivoValePedagio = 0 where NumOrdemEmbarque = 53095092
--
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 63017330
--
--Limpar a Roteirzação--
SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 2159621
--update OrdemEmbarque set EmpresaValePedagio = Null , NumCartaoValePedagio = Null, RotaSemParar = Null, ValorPedagioSemParar = Null  where  NumOrdemEmbarque = 2159621 

--#10966 com Assunto: "FAVOR VERIFICAR REFERENTE PAGAMENTO DE PEDAGIO CTE 683079".
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	1	287.10

--#10421 - Pedágio ct-e GO-588052
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--		NULL			  4417812011092605			 0					90.00


SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio,EmpresaValePedagio,NumCartaoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776
 --UPDATE ConhecimentosTransporte set TipoDispositivoValePedagio = null, NumCartaoValePedagio = null where Sequencial = 140000003034

SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 19037203
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao, DataLog
from OrdemEmbarque_Log where NumOrdemEmbarque = 50011430 ORDER BY datalog desc
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque where NumOrdemEmbarque = 53095092
--
SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 588052
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--update OrdemEmbarque set CIOT ='REPOM' where NumOrdemEmbarque = 72049216

SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 683079                     
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC --SP-118393

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
from OrdemEmbarque_Log where NumOrdemEmbarque = 89002414 ORDER BY datalog desc
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
--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 48545050, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--
SELECT ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto = 22008589
--UPDATE ConhecimentosTransporte SET ValorTotalFrete =  1847.20 WHERE Sequencial = 880000103622
--

select * from LogRoteirizacaoPedagio where NumOrdemEmbarque =50011430
