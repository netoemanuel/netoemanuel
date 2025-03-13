SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'PR' AND CTRC.Numconhecto = 223309                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 640000070527

SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete	= 1769344

EXEC MonitoraMDFe 86009597

EXEC VerificaCTe 640000070480


SELECT isnull(Rot.UF_Origem,Ori.CodUF) as UF_Origem, isnull(Rot.Cidade_Origem,RotOrig.NomeMunicipioIBGE) as Cidade_Origem, isnull(Rot.CodigoIBGE_Origem,RotOrig.CodMunicipioIBGE) as CodigoIBGE_Origem, isnull(Rot.UF_Destino,Dest.CodUF) as UF_Destino, isnull(Rot.Cidade_Destino,RotDest.NomeMunicipioIBGE) as Cidade_Destino, isnull(Rot.CodigoIBGE_Destino,RotDest.CodMunicipioIBGE) as CodigoIBGE_Destino, Rotas.DescricaoRota, OE.NumOrdemEmbarque, PED.CodRota, Rotas.DescricaoRota 
FROM OrdemEmbarque OE INNER JOIN Veiculos V ON V.CodVeiculo = OE.CodVeiculo 
INNER JOIN PedidosFrete PED ON PED.CodPedidoFrete = OE.CodPedidoFrete 
INNER JOIN Rotas ON Rotas.CodRota = PED.CodRota
INNER JOIN Cidades Ori ON Ori.CodCidade = Rotas.CodCidadeOrigem 
INNER JOIN Cidades Dest ON Dest.CodCidade = Rotas.CodCidadeDestino
LEFT OUTER JOIN Rotas_Repom Rot ON Rot.CodCidadeOrigem = isnull(Ori.CodCidade_Subor,Ori.CodCidade) and Rot.CodCidadeDestino = isnull(Dest.CodCidade_Subor,Dest.CodCidade)
LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotOrig ON RotOrig.CodCidade = isnull(Ori.CodCidade_Subor,Ori.CodCidade) 
LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotDest ON RotDest.CodCidade = isnull(Dest.CodCidade_Subor,Dest.CodCidade)
WHERE OE.NumOrdemEmbarque = 81017651


--GS2000_Business.Forms
--REPOM.SimulacaoPedagioRepom
--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!NumOrdemEmbarque, 0, rsDadosPedagio!CodigoIBGE_Origem, rsDadosPedagio!UF_Origem, rsDadosPedagio!CodigoIBGE_Destino, rsDadosPedagio!UF_Destino, rsDadosPedagio!DescricaoRota, rsDadosPedagio!CodRota
--192.168.0.3   LONTANO       Lontano_GSe   15278         ITA            81017651      0             1500602      PA             1503606      PA            Altamira/PA - Agro 5 Armazens Gerais -> Itaituba/PA - Cianport         107397 

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE oe.NumOrdemEmbarque = 81017651                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC 
--PA-24285


SELECT * from OrdemEmbarque where NumOrdemEmbarque = 81017651  
SELECT IndComplementoSubstituicao, * from OrdemEmbarque_log where NumOrdemEmbarque = 81017651  ORDER by DataLog desc


select * from ConhecimentosTransporte where NumConhecto = 24285 and CodUF = 'PA'

exec VerificaCTe 810000013706

select * from Usuarios where CodUsuario = 13865
select DataCriacao,CodUsuarioCriacao,* FROM ContasPagar where CodUsuarioCriacao = 13865

select SeguroAverbado,GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 651699 and CodUF = 'GO' AND SerieConhecto = 0
--UPDATE ConhecimentosTransporte set SeguroAverbado = 325.43 where NumConhecto = 651699 and CodUF = 'GO' AND SerieConhecto = 0 --3254.39

select * from RequisicaoProdutos where CodRequisicao = 2657525
select * from ItensRequisicaoProdutos where CodRequisicao = 2657525
--UPDATE ItensRequisicaoProdutos SET CodProduto = 117234  where CodRequisicao = 2657525  --117137


SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 747848  and CodUF = 'MT'
SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 22096110  
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque_log where NumOrdemEmbarque = 22096110 ORDER by DataLog desc


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 747848                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 24286   and CodUF = 'PA' and SerieConhecto = '0'  --Emitido
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Cancelado' where NumConhecto = 24286   and CodUF = 'PA' and SerieConhecto = '0'
EXEC VerificaCTe 810000013707

select * from Usuarios where NomeUsuario like 'Paola%'

SELECT CodMotorista,CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 24290   and CodUF = 'PA' and SerieConhecto = '0'  -- M - 1105670	V - 103103
--UPDATE ConhecimentosTransporte SET CodMotorista = 1106523,CodVeiculo = 7279  where NumConhecto = 24290   and CodUF = 'PA' and SerieConhecto = '0' 
SELECT * FROM Veiculos WHERE PlacaVeiculo = 'QAM7C79'  --7279
SELECT * FROM Motoristas WHERE NomeMotorista LIKE 'Eliel%de%Lima%'  --1106523
select DataCriacao,* from ContasPagar where CodUsuarioCriacao =14921 ORDER BY ContasPagar.DataCriacao desc


SELECT SituacaoConhecto,* FROM ConhecimentosTransporte WHERE Sequencial = 530000175739
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000114
SELECT TOP(50) SequencialRPS,  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116889
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114726   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 116889
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 116876
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 116889

SELECT SequencialRPS, * FROM LONTANO_GSe.dbo.NFSe WHERE Sequencial = 530000175726
--UPDATE LONTANO_GSe.dbo.NFSe SET SequencialRPS  = 584 WHERE Sequencial = 530000175726  --582

SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'GO' AND NumConhecto = 654037
--EXEC Grava_CTe 50000021044
select * from ConhecimentosCliente where SequencialConhecimento = 50000021044
--delete from ConhecimentosCliente where SequencialConhecimento = 50000021044
--SequencialConhecimento	NumConhecimentoCliente	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumeroOC	NumeroPO
--50000021044	6472	1	14448	IPR	2025-03-06 08:40:22.000	NULL	NULL	NULL	NULL	NULL



SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'MS' AND NumConhecto = 548301 
EXEC VerificaCTe 330000020524
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23266967 and Sequencial = 330000020524

SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'MG' AND NumConhecto = 427280 
--EXEC Grava_CTe 300000056856
EXEC VerificaCTe 300000056856
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23267226 and Sequencial = 300000056856

select * from ConhecimentosCliente where SequencialConhecimento = 300000056856
--delete from ConhecimentosCliente where SequencialConhecimento = 300000056856
--SequencialConhecimento	NumConhecimentoCliente	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumeroOC	NumeroPO
--300000056856	7498	1	15101	UNA	2025-03-06 08:27:48.000	NULL	NULL	NULL	NULL	NULL

SELECT ValorNF,SeguroAverbado, * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'GO' AND NumConhecto = 652764 
--UPDATE ConhecimentosTransporte SET ValorNF = 98173.12, SeguroAverbado = 49.08  WHERE SerieConhecto = '0' AND CodUF = 'GO' AND NumConhecto = 652764 


SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'MS' AND NumConhecto = 548371 
EXEC VerificaCTe 970000043762
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 970000043762
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23268316 and Sequencial = 970000043762


SELECT Sequencial from ConhecimentosTerceiros where CodMotorista = 1105964 and DataEmbarque BETWEEN '2025-01-27 00:00:00' and '2025-02-24 00:00:00' ORDER BY ConhecimentosTerceiros.DataEmbarque asc  --1105964
SELECT * from ConhecimentosTerceiros WHERE NumConhecto IN ('65218','483830','65080')


SELECT * from ConhecimentosTerceiros where Sequencial IN (87239,87242,87262,87281,87287,87305,87336,87369,87384,87410
,87455,87506,87532,87568,87616,88042,87652,87660,87696,87753,87766,87828,87239,87209,87149)  ORDER BY ConhecimentosTerceiros.DataEmbarque asc

--UPDATE ConhecimentosTerceiros SET CodMotorista = 1106458 where Sequencial IN (87239,87242,87262,87281,87287,87305,87336,87369,87384,87410
--,87455,87506,87532,87568,87616,88042,87652,87660,87696,87753,87766,87828,87239,87209,87149) 

SELECT CIOT,* FROM ConhecimentosTransporte WHERE NumConhecto = 750288  and CodUF = 'MT' and SerieConhecto = '0'

SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte ctrc
JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial AND cf.CodAdmPagtoFrete = 12 
WHERE
cf.codViagemRepom IS NOT NULL AND CTRC.Sequencial = 120000027669
SELECT * FROM ConhecimentosTransporte ctrc
JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial AND cf.CodAdmPagtoFrete = 12 
WHERE
cf.codViagemRepom IS NOT NULL AND CTRC.Sequencial = 120000027669

select * from CartaFrete where Sequencial = 120000027669
--UPDATE CartaFrete  set codViagemRepom = null where Sequencial = 120000027669  --7183310

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 750288                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC


select * from CartaFrete_Ocorrencia where IdCartaFrete = 1771385  and NumSeq = 22
--UPDATE CartaFrete_Ocorrencia set CodViagemPamcard = null where IdCartaFrete = 1771385  and NumSeq = 22  --7183310


SELECT SituacaoConhecto,* FROM ConhecimentosTransporte WHERE NumConhecto = 748222  and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Complemento' WHERE NumConhecto = 748222  and CodUF = 'MT' and SerieConhecto = '0'

EXEC MonitoraMDFe 47021269
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1796033 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0  where Sequencial = 1796033
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941250006873513', nProt = '941250006873513' where Sequencial = 1796033 and ID = 25712134 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1796033 and ID = 25712134 


SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'MT' AND NumConhecto = 750385 
EXEC VerificaCTe 110000019891
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23270711 and Sequencial = 110000019891

SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'SP' AND NumConhecto = 142522 
EXEC VerificaCTe 150000023644
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 150000023644

--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23270902 and Sequencial = 150000023644

SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '0' AND CodUF = 'SP' AND NumConhecto = 142523 
EXEC VerificaCTe 350000009920
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 350000009920

--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23270885 and Sequencial = 350000009920

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 749677                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
