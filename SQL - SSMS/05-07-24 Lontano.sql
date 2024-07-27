select top (100)* from LONTANO_GSe.dbo.tblLog_operacao order BY DT_Hs desc -- where NM_Metodo = 'MDFeRecepcao' 
EXEC MonitoraMDFe 44062718
--UPDATE LONTANO_GSe.dbo.mdfe SET Status =0 where Sequencial = 1678477

SELECT * from ConhecimentosTransporte where NumConhecto in (205761,205762,205755) and CodUF = 'PR' and SerieConhecto = '0' -- DBC
--UPDATE ConhecimentosTransporte SET CodFilialEmitente = 'CAM' where NumConhecto in (205761,205762,205755) and CodUF = 'PR' and SerieConhecto = '0'


SELECT DISTINCT ConhecimentosTransporte.Sequencial, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC,
ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, 
ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida,
ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, 
CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, 
ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
FROM ConhecimentosTransporte 
INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento
LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento 
LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete 
LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente 
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
WHERE ConhecimentosTransporte.SerieConhecto = 'RC' 
AND ConhecimentosTransporte.DataEmissao BETWEEN '04/01/2024 00:00:00' AND '04/30/2024 23:59:29' 
AND Veiculos.Propriedade = 'Próprio' ORDER BY ConhecimentosTransporte.Sequencial

SELECT TarifaFreteMotorista,* from ConhecimentosTransporte where Sequencial IN (10000024568,10000024569,10000024570,10000024571,10000024572,10000024573,10000024574,10000024575,10000024576
,10000024577,10000024578,10000024579,10000024580,10000024581,10000024582,10000024583,10000024584,10000024585,10000024586,10000024587,10000024588,10000024589,10000024590
,10000024591,10000024592,10000024593,10000024595,10000024596,10000024597,10000024598,10000024599,10000024600)
--UPDATE ConhecimentosTransporte set TarifaFreteMotorista = 1.00 where Sequencial IN (10000024568,10000024569,10000024570,10000024571,10000024572,10000024573,10000024574,10000024575,10000024576
--,10000024577,10000024578,10000024579,10000024580,10000024581,10000024582,10000024583,10000024584,10000024585,10000024586,10000024587,10000024588,10000024589,10000024590
--,10000024591,10000024592,10000024593,10000024595,10000024596,10000024597,10000024598,10000024599,10000024600)

EXEC VerificaCTe 530000166604
--select top (300)* from LONTANO_GSe.dbo.AverbacaoFrete   ORDER BY DataCriacao DESC where SequencialCTe = 40000040701
select * from ConhecimentosTransporte where NumConhecto = 131409  and SerieConhecto = '0' and CodUF = ''
select * from LONTANO_GSe.dbo.MDFe where Id = '35240711455829000600580060000536941015538536'
SELECT nProt,* from LONTANO_GSe.dbo.MDFe_LOG where Sequencial = 1678459
--UPDATE LONTANO_GSe.dbo.MDFe_LOG set nProt = 935240039087710 where Sequencial = 1678459

EXEC MonitoraMDFe 27083070
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1679167
--DELETE from LONTANO_GSe.dbo.MDFe WHERE Sequencial in (1679402,1679358)

select * from ConhecimentosTransporte where NumConhecto = 719466   and SerieConhecto = '0' and CodUF = 'MT'
EXEC MonitoraMDFe 12042330
SELECT * FROM LONTANO_GSe.dbo.Eventos_MDFe where Sequencial = 1678994
EXEC MonitoraMDFe 48009186
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1679285
select * from ConhecimentosTransporte where NumConhecto = 719547   and SerieConhecto = '0' and CodUF = 'MT'
EXEC VerificaCTe 110000019299
--EXEC Grava_CTe 
--UPDATE LONTANO_GSe.dbo.CTe SET Status =1 WHERE Sequencial = 110000019299
--DELETE from LONTANO_GSe.dbo.CTe_LOG WHERE ID = 22825801 and Sequencial = 110000019299
EXEC MonitoraMDFe 12042302
--DELETE from LONTANO_GSe.dbo.MDFe WHERE Sequencial in (1679511)

select * FROM Usuarios where NomeUsuario LIKE '%Elias%'
select * from Usuarios where CodUsuario =	13573
select * from PermissoesAcesso where CodUsuario = 13573
select * from Usuarios where CodUsuario = 15189
select * from PermissoesAcesso where CodUsuario = 15189
select Email,* from Colaboradores where CodColaborador = 15189
select * from Usuarios where CodUsuario = 15221
select * from PermissoesAcesso where CodUsuario = 15221
--UPDATE PermissoesAcesso set TipoInclusao = 'N', TipoAlteracao = 'N', TipoExclusao = 'N' where CodUsuario = 15221

select * from LONTANO_GSe.dbo.MDFe where Id = '50240711455829000103580010002929191015551207'
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1679801
EXEC MonitoraMDFe 5022227
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 2 where Sequencial = 1678955
EXEC MonitoraMDFe 5022225
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 2 where Sequencial = 1678954
EXEC MonitoraMDFe 5022257


select TOP (50) TipoRequisicao,* from ContasPagar_RequisicaoProdutos R

join ContasPagar C on c.CodContasPagar = R.CodContasPagar
join RequisicaoProdutos RP ON RP.CodRequisicao = R.CodRequisicao
WHERE C.CodRequisicao = 1514651

SELECT DISTINCT RequisicaoProdutos.*, DepositosFilial.DescDeposito AS DescDeposito, Veiculos.PlacaVeiculo, Fornecedores.RazaoSocial 
FROM RequisicaoProdutos
LEFT OUTER JOIN ItensRequisicaoProdutos ON RequisicaoProdutos.CodRequisicao = ItensRequisicaoProdutos.CodRequisicao
LEFT OUTER JOIN DepositosFilial ON RequisicaoProdutos.CodFilial = DepositosFilial.CodFilial AND RequisicaoProdutos.CodDeposito = DepositosFilial.CodDeposito 
LEFT OUTER JOIN Veiculos ON RequisicaoProdutos.CodVeiculo = Veiculos.CodVeiculo
LEFT OUTER JOIN Fornecedores ON RequisicaoProdutos.CodFornecedor = Fornecedores.CodFornecedor
WHERE (RequisicaoProdutos.DataRequisicao BETWEEN '06/01/2024 00:00:00' AND '07/03/2024 23:59:29') and   TipoRequisicao is null
ORDER BY RequisicaoProdutos.DataRequisicao DESC

select * from ContasPagar_RequisicaoProdutos 
 where CodRequisicao = 1514651
 select * from RequisicaoProdutos_log
 where CodRequisicao = 1514651 

select * from ConhecimentosTransporte where NumConhecto = 631452   and SerieConhecto = '0' and CodUF = 'GO'
EXEC VerificaCTe 510000032110
--EXEC Grava_CTe 510000032110
--UPDATE LONTANO_GSe.dbo.cte SET Status =0 where Sequencial = 510000032110

select * from ConhecimentosTransporte where NumConhecto = 409916 and SerieConhecto = '0' and CodUF = 'MG'
select * from ConhecimentosTransporte_log where NumConhecto = 409916 and SerieConhecto = '0' and CodUF = 'MG'
exec VerificaCTe 300000055921

select * from ConhecimentosTransporte where NumConhecto =409906  and SerieConhecto = '0' and CodUF = 'MG'

exec VerificaCTe 880000143236
EXEC VerificaCTe 260000025148

select top (50)Status,* FROM LONTANO_GSe.dbo.CTe where Status = 5 ORDER by DataCriacao desc
select Status,* FROM LONTANO_GSe.dbo.CTe where Sequencial = 880000143236
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 5 where Sequencial = 880000143236
select Status,* FROM LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 880000143236
--UPDATE LONTANO_GSe.dbo.Eventos_CTe SET Status = 5 where Sequencial_CTe = 880000143236 and 
select Status,* FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 880000143236 and ID = 22829176
--UPDATE LONTANO_GSe.dbo.CTe_LOG set status = 5, codLog = 32, cStat = 135, xMotivo = '135 - Evento registrado e vinculado a CT-e.' where Sequencial = 880000143236 and ID = 22829176
--DELETE FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 880000143236 and ID = 22829177


select * from ConhecimentosTransporte where NumConhecto = 409929 and SerieConhecto = '0' and CodUF = 'MG'


select Status,cMunIni,xMunIni,* FROM LONTANO_GSe.dbo.CTe where Sequencial = 300000055923  --UNAI / 3170404
--DELETE from LONTANO_GSe.dbo.CTe where Sequencial = 300000055923
--EXEC Grava_CTe 300000055923

select * from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE like '%PARACATU%'  -- colocar o destino de descarga
select * FROM LONTANO_GSe.dbo.Cidades_e where CodMunicipioIBGE =  1656830
 --UPDATE LONTANO_GSe.dbo.CTe SET cMunIni =3147006, xMunIni = 'Paracatu', Status =  0 where Sequencial = 300000055929

SELECT * from LONTANO_GSe.dbo.DoctoSubcontratacao_CTe where Sequencial = 300000055923

exec VerificaCTe 300000055923--Rejeicao: Municipio de inicio e fim de prestacao do CT-e de subcontratacao devem ser iguais ao CT-e subcontratado [chCte:31240750293973000134570010000034221000034498]

select * from ConhecimentosTransporte where NumConhecto = 402197 and SerieConhecto = '0' and CodUF = 'MG'

exec VerificaCTe 300000055645


select * from ConhecimentosTransporte where NumConhecto = 207430  and SerieConhecto = '0' and CodUF = 'PR'
EXEC VerificaCTe 490000024062
--EXEC Grava_CTe 490000024062
--UPDATE LONTANO_GSe.dbo.CTe SET  Status =  0 where Sequencial = 490000024062


EXEC VerificaCTe 300000055929
--UPDATE LONTANO_GSe.dbo.CTe SET  Status =  0 where Sequencial = 640000064649


select * from ConhecimentosTransporte where NumConhecto = 19287  and SerieConhecto = '0' and CodUF = 'PA'

EXEC MonitoraMDFe 81014419


--viafacil.SemParar
--?frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, CStr(frmPrincipal.CodUsuario), frmPrincipal.CodFilial, rsDadosPedagio!Placa, rsDadosPedagio!NomeCidade, rsDadosPedagio!CodOrdemEmbarque, rsDadosPedagio!Sequencial, rsDadosPedagio!NumConhecto, rsDadosPedagio!Notas, Funcao
--192.168.0.3   LONTANO       15136         BBD           JYR0A76       Bebedouro      35007498      0             0             0            simulação


select * from ConhecimentosTransporte where NumConhecto = 631615  and SerieConhecto = '0' and CodUF = 'GO'

EXEC VerificaCTe 30000160768


EXEC MonitoraMDFe 51040438  -- Rejeicao: Duplicidade de MDF-e [nProt:952240006121472][dhAut:2024-07-04T14:22:00-03:00]
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1680944


SELECT * FROM LONTANO_GSe.dbo.MDFe_LOG where Sequencial = 1680944 order BY dhlog desc
--UPDATE LONTANO_GSe.dbo.MDFe_LOG set nRec = 952240006121472, nProt = 952240006121472  where Sequencial = 1680944 and ID = 25088768
--952240006121472

select * from ConhecimentosTransporte where NumConhecto = 719958  and SerieConhecto = '0' and CodUF = 'MT'
EXEC VerificaCTe 400000010896

--UPDATE LONTANO_GSe.dbo.CTe SET  Status =  0 where Sequencial = 400000010896

--delete FROM LONTANO_GSe.dbo.CTe_LOG where Sequencial = 400000010896 AND ID = 22831703

select * from ConhecimentosTransporte where NumConhecto = 631616  and SerieConhecto = '0' and CodUF = 'GO'

EXEC VerificaCTe 510000032121


select * from ConhecimentosTransporte where NumConhecto = 528096  and SerieConhecto = '0' and CodUF = 'MS'

EXEC VerificaCTe 450000026020

--UPDATE LONTANO_GSe.dbo.CTe SET  Status =  0 where Sequencial = 450000026020


exec MonitoraMDFe 2168546

SELECT SUM(NaoFaturado + Vencidos + AVencer - SemAcerto) AS SaldoReceber, SUM(SemAcerto) AS RecebidosSemAcerto, SUM(Vencidos) AS Vencidos, sUM(NaoFaturado) AS NaoFaturados, SUM(AVencer) AS AVencer FROM FretesReceber('07/05/2024 08:43:58', 31000620, '', '','N', '', 0)


select * 
from ConhecimentosRelacaoFretes CRF 
INNER JOIN ConhecimentosTransporte CTRC ON CRF.NumSeqConhecto = CTRC.Sequencial 
WHERE (CRF.NumSeqConhecto = 890000031454) AND (CRF.CodTipoPagamento = 2) AND (ISNULL(CRF.ValorConferido, 0) <> 0) AND (ISNULL(CRF.IndAbonoQuebra, '') <> 'S')
AND (dbo.CalculoQuebra(890000031454, 49710, 49710, 49420.43, 'Saída', 'ValorQuebra') > 0)

EXEC MonitoraMDFe 9041715

SELECT * FROM LONTANO_GSe.dbo.MDFe_LOG where Sequencial = 1680944 order BY dhlog desc
--UPDATE LONTANO_GSe.dbo.MDFe_LOG set nRec = 951240008790505, nProt = 951240008790505  where Sequencial = 1681431 and ID = 25091709
--951240008790505

EXEC MonitoraMDFe 8087675

SELECT * FROM LONTANO_GSe.dbo.MDFe_LOG where Sequencial = 1681444 order BY dhlog desc

SELECT nRec, nProt, * FROM LONTANO_GSe.dbo.MDFe_LOG WHERE Sequencial = 1681444 ORDER BY dhLog DESC


select * from ConhecimentosTransporte where NumConhecto = 528176  and SerieConhecto = '0' and CodUF = 'MS'

EXEC VerificaCTe 830000068282
exec MonitoraMDFe 83076810

--UPDATE LONTANO_GSe.dbo.MDFe_LOG set nRec = 951240008790505, nProt = 951240008790505  where Sequencial = 1681431 and ID = 25091709

--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1681599

exec MonitoraMDFe 2168580
exec MonitoraMDFe 22086698

EXEC MonitoraMDFe 64075829

EXEC MonitoraMDFe 6036984

--DELETE from LONTANO_GSe.dbo.MDFe_LOG  WHERE ID = 25092991 and Sequencial = 1681695