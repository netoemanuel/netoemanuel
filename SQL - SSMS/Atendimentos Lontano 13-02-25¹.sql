SELECT * from ConhecimentosTransporte where NumConhecto = 650160 and CodUF = 'go'
EXEC VerificaCTe 230000046998
--delete FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23214443 and Sequencial = 230000046998

SELECT * from ConhecimentosTransporte where NumConhecto = 747164 and CodUF = 'MT'
EXEC VerificaCTe 370000004623
--delete FROM LONTANO_GSe.dbo.CTe_LOG where ID = 23214491 and Sequencial = 370000004623

EXEC MonitoraMDFe 94062522
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1790335


SELECT isnull(Rot.UF_Origem,Ori.CodUF) as UF_Origem, isnull(Rot.Cidade_Origem,RotOrig.NomeMunicipioIBGE) as Cidade_Origem, isnull(Rot.CodigoIBGE_Origem,RotOrig.CodMunicipioIBGE) as CodigoIBGE_Origem, isnull(Rot.UF_Destino,Dest.CodUF) as UF_Destino, isnull(Rot.Cidade_Destino,RotDest.NomeMunicipioIBGE) as Cidade_Destino, isnull(Rot.CodigoIBGE_Destino,RotDest.CodMunicipioIBGE) as CodigoIBGE_Destino, Rotas.DescricaoRota, OE.NumOrdemEmbarque, OE.TipoDispositivoValePedagio 
FROM OrdemEmbarque OE
INNER JOIN Veiculos V ON V.CodVeiculo = OE.CodVeiculo
INNER JOIN PedidosFrete PED ON PED.CodPedidoFrete = OE.CodPedidoFrete 
INNER JOIN Rotas ON Rotas.CodRota = PED.CodRota
INNER JOIN Cidades Ori ON Ori.CodCidade = Rotas.CodCidadeOrigem 
INNER JOIN Cidades Dest ON Dest.CodCidade = Rotas.CodCidadeDestino
LEFT OUTER JOIN Rotas_Repom Rot ON Rot.CodCidadeOrigem = isnull(Ori.CodCidade_Subor,Ori.CodCidade) and Rot.CodCidadeDestino = isnull(Dest.CodCidade_Subor,Dest.CodCidade)
LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotOrig ON RotOrig.CodCidade = isnull(Ori.CodCidade_Subor,Ori.CodCidade) 
LEFT OUTER JOIN LONTANO_GSe.dbo.Cidades_e RotDest ON RotDest.CodCidade = isnull(Dest.CodCidade_Subor,Dest.CodCidade) WHERE OE.NumOrdemEmbarque = 91066845

--Dim pamcard As New GS2000_Business.Forms
--ret = pamcard.SimulacaoPedagioPamcard
--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, frmPrincipal.NomeBancoGSe, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!NumOrdemEmbarque, rsDadosPedagio!UF_Origem, rsDadosPedagio!Cidade_Origem, rsDadosPedagio!CodigoIBGE_Origem, rsDadosPedagio!UF_Destino, rsDadosPedagio!Cidade_Destino, rsDadosPedagio!CodigoIBGE_Destino, rsDadosPedagio!DescricaoRota, rsDadosPedagio!TipoDispositivoValePedagio
--192.168.0.3   LONTANO       Lontano_GSe   15034         PGA            91066845     PR            Paranaguá      4118204      PR            Ponta Grossa   4119905      Paranagua/PR -> Ponta Grossa/PR           Null


SELECT * from MovimentacaoBancaria where CodMovBancaria = 1634090
--UPDATE MovimentacaoBancaria set CodContaBancaria = 31 where CodMovBancaria = 1634090 --1
SELECT * from MovimentacaoBancaria where CodMovBancaria = 1631365
--UPDATE MovimentacaoBancaria set CodContaBancaria = 31 where CodMovBancaria = 1631365 --1
SELECT * from MovimentacaoBancaria where CodMovBancaria = 1634074
--UPDATE MovimentacaoBancaria set CodContaBancaria = 50 where CodMovBancaria = 1634074 --1
SELECT * from MovimentacaoBancaria where CodMovBancaria = 1636401
--UPDATE MovimentacaoBancaria set CodContaBancaria = 106 where CodMovBancaria = 1636401 --1

select CodContaBancaria,CodContaRemessa,* from ContasPagar where CodContasPagar = 10014026 --1
--UPDATE ContasPagar SET CodContaBancaria = 106, CodContaRemessa = 106 where CodContasPagar = 10014026


SELECT * from Usuarios where NomeUsuario like 'Leticia%'

SELECT * FROM FiliaisTrabalho WHERE (CodUsuario = 15144) AND (CodFilial = 'CG')
--INSERT INTO FiliaisTrabalho values(15144, 'CG',14102,'CG', GETDATE(), NULL,NULL,NULL)