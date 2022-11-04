use Lontano
--
SELECT * from ConhecimentosTransporte where NumConhecto = 644505  and CodUF = 'MT'
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'MT' AND NumConhecto = 644505
SELECT RotaSemParar, ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 22070309
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 10079503 ORDER BY datalog desc
--
SELECT TOP(1000) oe.CIOT, CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'GO' AND CTRC.Numconhecto = 545670 
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--
SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 10079503
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 22070309 ORDER BY datalog desc
--
SELECT * FROM CartaFrete_Ocorrencia WHERE CodViagemPamcard = 74462576 -- 73906459
--
--Neste caso a roteiriza��o foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai n�o achar o ped�gio. Posso apagar os dados da roteiriza��o da ordem para voc� poder refazer a roteiriza��o e pagar pela Sem Parar,
--Mas pode dar diverg�ncia no valor que foi destacado no conhecimento.
--
--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL WHERE NumOrdemEmbarque = 9036138
--
--Ticket #3175 - Erro ped�gio visto com Jhonny dia 10/08/2022
--falta a informa��o do CodViagemPamCard na tela do CTCR e Consulta Integra��o PamCard/SemParar 
--pegar o CodViagemPamcard na SQL acima (TOP100) na coluna descri��o ocorrencia que estiver 'Inserir Viagem'.
--a SQL usada pelo Jhonny foi:
--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1181647 AND NumSeq = 13
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 48545050, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERA��O REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1181647 AND NumSeq = 13

SELECT ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto = 22008589
--UPDATE ConhecimentosTransporte SET ValorTotalFrete =  1847.20 WHERE Sequencial = 880000103622