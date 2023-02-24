--
SELECT CodOrdemEmbarque,* from ConhecimentosTransporte where NumConhecto = 659056   and CodUF = 'MT'
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND NumConhecto = 659056
--
SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 22073083
--
--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 30059092
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 30059092
--
SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 22073083
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio, NumCartaoValePedagio
from OrdemEmbarque_Log where NumOrdemEmbarque = 22073083 ORDER BY datalog desc
--
select EmpresaValePedagio, NumCartaoValePedagio, TipoDispositivoValePedagio, *  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 22073059 
--
SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 659056
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--
SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 659056 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta�DESC
--
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000002297 
select * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 100000002297 
SELECT * FROM CartaFrete WHERE Id = 778459
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 22073059 ORDER BY datalog desc
--
SELECT * FROM CartaFrete_Ocorrencia WHERE CodViagemPamcard = 778459 -- 73906459
--
SELECT * FROM CartaFrete WHERE Id = 1276831
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
--Neste caso a roteiriza��o foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai n�o achar o ped�gio. Posso apagar os dados da roteiriza��o da ordem para voc� poder refazer a roteiriza��o e pagar pela Sem Parar,
--Mas pode dar diverg�ncia no valor que foi destacado no conhecimento.
--
--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL WHERE NumOrdemEmbarque = 22073059
--update OrdemEmbarque set EmpresaValePedagio = null , NumCartaoValePedagio = null  where  NumOrdemEmbarque = 22072863 
--
--Ticket #3175 - Erro ped�gio visto com Jhonny dia 10/08/2022
--falta a informa��o do CodViagemPamCard na tela do CTCR e Consulta Integra��o PamCard/SemParar 
--pegar o CodViagemPamcard na SQL acima (TOP100) na coluna descri��o ocorrencia que estiver 'Inserir Viagem'.
--a SQL usada pelo Jhonny foi:
--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 48545050, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERA��O REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--
SELECT ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto = 22008589
--UPDATE ConhecimentosTransporte SET ValorTotalFrete =  1847.20 WHERE Sequencial = 880000103622
--

