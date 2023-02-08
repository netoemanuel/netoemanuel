
--
SELECT * from ConhecimentosTransporte where NumConhecto = 654966     and CodUF = 'Mg'
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'MG' AND NumConhecto = 367972
SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 30059092
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio, NumCartaoValePedagio
from OrdemEmbarque_Log where NumOrdemEmbarque = 30059092 ORDER BY datalog desc

--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 30059092
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 30059092
--
SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 61186
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC

SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 654966 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000002297 
select * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 100000002297 
SELECT * FROM CartaFrete WHERE Id = 778459
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459

--
SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 4029380
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 18010846 ORDER BY datalog desc
--
SELECT * FROM CartaFrete_Ocorrencia WHERE CodViagemPamcard = 778459 -- 73906459

SELECT * FROM CartaFrete WHERE Id = 1276831
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
--Neste caso a roteirização foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai não achar o pedágio. Posso apagar os dados da roteirização da ordem para você poder refazer a roteirização e pagar pela Sem Parar,
--Mas pode dar divergência no valor que foi destacado no conhecimento.
--
--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL WHERE NumOrdemEmbarque = 30059092
--
--Ticket #3175 - Erro pedágio visto com Jhonny dia 10/08/2022
--falta a informação do CodViagemPamCard na tela do CTCR e Consulta Integração PamCard/SemParar 
--pegar o CodViagemPamcard na SQL acima (TOP100) na coluna descrição ocorrencia que estiver 'Inserir Viagem'.
--a SQL usada pelo Jhonny foi:
--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 48545050, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1181647 AND NumSeq = 13

SELECT ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto = 22008589
--UPDATE ConhecimentosTransporte SET ValorTotalFrete =  1847.20 WHERE Sequencial = 880000103622


