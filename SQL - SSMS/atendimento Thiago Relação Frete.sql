use LONTANO

select * from LONTANO_GSe.dbo.NFe where id = '51221101549753000385550210002205061147913292'
select * from LONTANO_GSe.dbo.NFe where id = '51221102413479000113550010001462031180577821'
select * from LONTANO_GSe.dbo.NFe where id = '51221137523586000189550050002727391821711584'
select * from LONTANO_GSe.dbo.NFe where id = '51221106368697000134550010000243431900325196'
select * from LONTANO_GSe.dbo.NFe where id = '51221137523586000189550050002729031100272609'
select * from LONTANO_GSe.dbo.NFe where id = '51221103983626000153550010000293701000919569'
select * from LONTANO_GSe.dbo.NFe where id = '51221100109683000110550010000903831011719500'
USE LONTANO

select * from Usuarios where NomeUsuario like '%Daiane%'

select * from Colaboradores where CodColaborador =14322
select * from PermissoesAcesso where CodUsuario in (14322)

SELECT prot.NumProtocolo FROM Protocolo_RelacaoFretes prf JOIN ProtocoloEnvioDocumentos prot ON prot.NumProtocolo = prf.NumProtocolo WHERE prf.CodRelacaoFrete = 1192432 AND prot.CodFilialOrigem = 'CAM'


SELECT RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos,
ComboBox_Financeiro.Descricao AS Situacao, ComboBox_Financeiro1.Descricao AS IndDiferenca, ISNULL(RelacaoFretes.TotalRelacao, 0) + ISNULL(RelacaoFretes.OutrasDespesas, 0) - ISNULL(RelacaoFretes.Desconto, 0) AS TotalPago, 
CASE WHEN RelacaoFretes.CodRelacaoFrete IN (0) THEN 'X' ELSE NULL END AS Marcador,  Ultpas.Localizacao, UltPas.DataHoraPassagem 
FROM RelacaoFretes 
INNER JOIN ContasPagar ON RelacaoFretes.CodContasPagar = ContasPagar.CodContasPagar 
INNER JOIN Fornecedores ON Fornecedores.CodFornecedor = RelacaoFretes.CodFornecedor
LEFT OUTER JOIN ConhecimentosRelacaoFretes ON RelacaoFretes.CodRelacaoFrete = ConhecimentosRelacaoFretes.CodRelacaoFrete
LEFT OUTER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto 
LEFT OUTER JOIN ComboBox_Financeiro ON RelacaoFretes.CodSituacao = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboSituacaoRelacaoFrete' 
LEFT OUTER JOIN ComboBox_Financeiro ComboBox_Financeiro1 ON RelacaoFretes.CodIndicadorDiferenca = ComboBox_Financeiro1.Codigo AND ComboBox_Financeiro1.NomeComboBox = 'cboIndicadorDiferenca'
LEFT OUTER JOIN ValoresRelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN ConhecimentosTransporte CTRC2 ON ValoresRelacaoFretes.CodComplemento = CTRC2.Sequencial
LEFT OUTER JOIN TiposValores ON TiposValores.CodTipoValor = ValoresRelacaoFretes.CodTipoValor 
LEFT OUTER JOIN UltimoRegPassagem UltPas ON UltPas.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
LEFT OUTER JOIN Protocolo_RelacaoFretes Prot on Prot.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
AND Prot.NumProtocolo = (SELECT MAX(UltProt.NumProtocolo) FROM Protocolo_RelacaoFretes UltProt WHERE UltProt.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete) 
WHERE RelacaoFretes.CodRelacaoFrete = 1192432
GROUP BY RelacaoFretes.CodRelacaoFrete, RelacaoFretes.CodFornecedor, Fornecedores.RazaoSocial, Prot.NumProtocolo, RelacaoFretes.DataEntradaRelacao, RelacaoFretes.DataPrevistaPagamento, RelacaoFretes.DataChegadaDocumentos,
ComboBox_Financeiro.Descricao, ComboBox_Financeiro1.Descricao, RelacaoFretes.TotalRelacao, RelacaoFretes.OutrasDespesas, RelacaoFretes.Desconto, UltPas.DataHoraPassagem, UltPas.Localizacao 
ORDER BY RelacaoFretes.CodRelacaoFrete

select * from Protocolo_RelacaoFretes where CodRelacaoFrete = 1192432


SELECT prot.NumProtocolo FROM Protocolo_RelacaoFretes prf JOIN ProtocoloEnvioDocumentos prot ON prot.NumProtocolo = prf.NumProtocolo WHERE prf.CodRelacaoFrete = 1192432 AND prot.CodFilialOrigem = 'CG'
SELECT prot.NumProtocolo FROM Protocolo_RelacaoFretes prf JOIN ProtocoloEnvioDocumentos prot ON prot.NumProtocolo = prf.NumProtocolo WHERE prf.CodRelacaoFrete = 1192432 AND prot.CodFilialOrigem = 'CAM'