
SELECT * from ConhecimentosTransporte where NumConhecto = 90292  and CodUF = 'MT' and SerieConhecto = '2'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 90292  and CodUF = 'MT' and SerieConhecto = '2'

select * from PedidosEmbarque where CodPedidoFrete = 88004194 ORDER BY DataCriacao desc
--insert into PedidosEmbarque VALUES (88010076,88004194,1,1,NULL,NULL,NULL,NULL,NULL,'KG',14649,'RDN','2024-11-19 17:01:14.000',NULL,NULL,NULL)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where SerieConhecto = 'NS' ORDER by DataCriacao desc
--UPDATE ConhecimentosTransporte set SerieConhecto = 'NE' where Sequencial in (640000069025,640000069028,640000069051,640000069049,640000069027)

--GS2000_Business.forms
--EmitePedagioRepom
--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, CStr(NumOrdemEmbarques), CStr(SeqConhecto)
--192.168.0.3   LONTANO       Lontano_GSe   14102         CG            38009640      380000009696

--MT-739082
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.Sequencial  = 380000009696                              
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 38009640  
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Repom Sa	752239905	5	NOVA OLIMPIA-MT X CHAPADÃO DO SUL-MS	718.92	2024-12-31 00:00:00
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 38009640 ORDER BY datalog desc
--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL where  NumOrdemEmbarque = 38009640 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * from ConhecimentosTransporte where NumConhecto = 739129  and CodUF = 'MT'-- and SerieConhecto = '2'

--MT-739129
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.Sequencial  = 160000023296                              
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 50014345  

SELECT EmpresaValePedagio,RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 50014345 ORDER BY datalog desc

--update OrdemEmbarque set  RotaSemParar = NULL, ValorPedagioSemParar = NULL where  NumOrdemEmbarque = 50014345 

SELECT COUNT(*) AS Registros FROM PedidosFrete P WHERE (P.CodPedidoFrete = 26003507) AND (ISNULL(P.RoteirizacaoAutomatica,'S') = 'N')
SELECT RoteirizacaoAutomatica, * FROM PedidosFrete P WHERE (P.CodPedidoFrete = 26003507) AND (ISNULL(P.RoteirizacaoAutomatica,'S') = 'N')



SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio,ciot,NumeroCartao FROM OrdemEmbarque WHERE NumOrdemEmbarque = 7039488  --752271940
--update OrdemEmbarque set  NumeroCartao =  null where  NumOrdemEmbarque = 7039488 


SELECT * from ConhecimentosTransporte where NumConhecto = 739129  and CodUF = 'MT'-