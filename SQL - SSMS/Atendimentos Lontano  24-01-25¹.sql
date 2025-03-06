select CodRota,CodClienteDestinatario,* from ConhecimentosTransporte where NumConhecto = 1968987
SELECT * from Veiculos where CodVeiculo = 279585
select * from Fornecedores where CodFornecedor = 15001047
SELECT * from Motoristas WHERE CodMotorista = 2001128
select * from RelatorioEmbarque where NumRelatorioEmbarque = 15005961
SELECT * from PedidosFrete where CodPedidoFrete = 15004854
select CodUsuarioCriacao,CodFilialCriacao, * FROM OrdemEmbarque where NumOrdemEmbarque = 15024917

select Situacao, * FROM OrdemEmbarque_log where NumOrdemEmbarque = 15024917

select * FROM Rotas where CodRota = 115314
select * from Clientes where CodCliente = 15002204

SELECT * from Cidades where CodCidade IN (171944,191490)


SELECT * from PedidosFrete_log where CodPedidoFrete = 15004854 order BY DataLog desc
select * FROM OrdemEmbarque_log where NumOrdemEmbarque = 15024917 order BY DataLog desc

SELECT Cidades.CodUF,* FROM FiliaisAgencias 
INNER JOIN Cidades ON FiliaisAgencias.CodCidade = Cidades.CodCidade 
WHERE FiliaisAgencias.CodFilial = 'STR'


SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 543220                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT COUNT(*) AS Registros FROM Cidades WHERE (CodCidade = 182846) AND (CodPais = 1)

SELECT * FROM Lontano_GSe.dbo.CIDADES_E WHERE (CodCidade = 182846)
SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.CIDADES_E WHERE (CodCidade = 182846)




SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 422202                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from Colaboradores where NomeColaborador LIKE '%Lucas%Moreno%'


SELECT isnull(Rot.UF_Origem,Ori.CodUF) as UF_Origem, isnull(Rot.Cidade_Origem,RotOrig.NomeMunicipioIBGE) as Cidade_Origem, isnull(Rot.CodigoIBGE_Origem,RotOrig.CodMunicipioIBGE) as CodigoIBGE_Origem, isnull(Rot.UF_Destino,Dest.CodUF) as UF_Destino, isnull(Rot.Cidade_Destino,RotDest.NomeMunicipioIBGE) as Cidade_Destino, isnull(Rot.CodigoIBGE_Destino,RotDest.CodMunicipioIBGE) as CodigoIBGE_Destino, Rotas.DescricaoRota, OE.NumOrdemEmbarque, PED.CodRota, Rotas.DescricaoRota FROM OrdemEmbarque OE INNER JOIN Veiculos V ON V.CodVeiculo = OE.CodVeiculo INNER JOIN PedidosFrete PED ON PED.CodPedidoFrete = OE.CodPedidoFrete INNER JOIN Rotas ON Rotas.CodRota = PED.CodRota INNER JOIN Cidades Ori ON Ori.CodCidade = Rotas.CodCidadeOrigem INNER JOIN Cidades Dest ON Dest.CodCidade = Rotas.CodCidadeDestino LEFT OUTER JOIN Rotas_Repom Rot ON Rot.CodCidadeOrigem = isnull(Ori.CodCidade_Subor,Ori.CodCidade) and Rot.CodCidadeDestino = isnull(Dest.CodCidade_Subor,Dest.CodCidade) LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotOrig ON 
RotOrig.CodCidade = isnull(Ori.CodCidade_Subor,Ori.CodCidade) LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotDest ON RotDest.CodCidade = isnull(Dest.CodCidade_Subor,Dest.CodCidade) WHERE OE.NumOrdemEmbarque = 53116348

GS2000_Business.Forms
REPOM.SimulacaoPedagioRepom(frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!NumOrdemEmbarque, 0, rsDadosPedagio!CodigoIBGE_Origem, rsDadosPedagio!UF_Origem, rsDadosPedagio!CodigoIBGE_Destino, rsDadosPedagio!UF_Destino, rsDadosPedagio!DescricaoRota, rsDadosPedagio!CodRota)
192.168.0.3   LONTANO       Lontano_GSe   15003         ARG            53116348      0             3103504      MG             5211909      GO            Araguari/MG - Fertilizantes Tocantins -> Jatai/GO - Sandro Maggioni    116760 