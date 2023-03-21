--
SELECT CodOrdemEmbarque,* from ConhecimentosTransporte where NumConhecto = 88664    and CodUF = 'GO'
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'GO' AND NumConhecto = 88664
--
SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 76018118
--
--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 30059092
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 30059092
--
SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 76018118
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque_Log where NumOrdemEmbarque = 76018118 ORDER BY datalog desc

--
select EmpresaValePedagio, NumCartaoValePedagio, TipoDispositivoValePedagio, *  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 92001280 
--
SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 88664 
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--
SELECT TOP(100) oe.TipoDispositivoValePedagio, CTRC.SituacaoConhecto, oe.CIOT, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 88664  
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
--
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000002297 
select * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 100000002297 
SELECT * FROM CartaFrete WHERE Id = 778459
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 92001280 ORDER BY datalog desc
--
SELECT * FROM CartaFrete_Ocorrencia WHERE CodViagemPamcard = 778459 -- 73906459
--
SELECT * FROM CartaFrete WHERE Id = 1276831
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
--Neste caso a roteirização foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai não achar o pedágio. Posso apagar os dados da roteirização da ordem para você poder refazer a roteirização e pagar pela Sem Parar,
--Mas pode dar divergência no valor que foi destacado no conhecimento.
--
--
SELECT RotaSemParar, ValorPedagioSemParar  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 92001280

--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL WHERE NumOrdemEmbarque = 19036573
--update OrdemEmbarque set EmpresaValePedagio = null , NumCartaoValePedagio = null  where  NumOrdemEmbarque = 22072863 

--RotaSemParar	ValorPedagioSemParar
--Aripuanã P/ Rondonopolis	514.80
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

