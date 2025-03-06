EXEC MonitoraMDFe 76085646
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1767043 
--UPDATE LONTANO_GSe.dbo.MDFe set Status = 0 where Sequencial = 1767043
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '950240015150473', nProt = '950240015150473' where Sequencial = 1767043 and ID = 25540876 
--coloca cstat = 204 e status do mdfe = 2
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1767043 and ID = 25540876 


SELECT * FROM ConhecimentosTransporte WHERE Sequencial = 530000173272
SELECT * FROM ConhecimentosTransporte WHERE SerieConhecto = '2' AND CodUF = 'MG' AND NumConhecto = 99000111
SELECT TOP(50)  * FROM LONTANO_GSe.dbo.NFSe WHERE CodMunicipioIbge = 3170206 ORDER BY DataCriacao DESC
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114610
SELECT  * FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114599   -- autorizada.
--DELETE FROM LONTANO_GSe.dbo.NFSe_Ocorrencia WHERE IdNfse = 114610
SELECT * FROM LONTANO_GSe.dbo.LoteNFSe WHERE ID_NFSe = 114605
--UPDATE LONTANO_GSe.dbo.LoteNFSe SET SequencialRPS = 6, Status = 0 WHERE ID_NFSe = 114610


SELECT * FROM Motoristas where CodMotorista = 88001098
SELECT * from ConhecimentosTransporte where NumConhecto IN (22516,22517,22518,22519) AND CodUF = 'PA' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set CodMotorista = 88001098 where NumConhecto IN (22516,22517,22518,22519) AND CodUF = 'PA' and SerieConhecto = '0'

--2003501
--2003501
--1106386
--1106386

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '2' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 58242                                      
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 530000173308
--UPDATE ConhecimentosRelacaoFretes SET BeneficiarioPagamento = 'P' where NumSeqConhecto = 530000173308

SELECT * FROM AutorizacaoPagtoMotorista WHERE Sequencial = 530000173308 ORDER BY DataCriacao DESC


SELECT CTRC.CodUF, CTRC.NumConhecto, CTRC.SerieConhecto, O.NumOrdemEmbarque, FA.CodControleFilial, ISNULL(CF.CIOT, '0') AS CIOT, CF.Id,
'11455829000103' AS DocPagador,  REPLACE(REPLACE(REPLACE(f.CNPJ_CPF,'.',''),'-',''),'/','') AS docRecebedorProprietario, REPLACE(REPLACE(REPLACE(m.CPF,'.',''),'-',''),'/','') AS docRecebedorMotorista
FROM Conhecimentostransporte CTRC
INNER JOIN OrdemEmbarque O ON O.NumOrdemEmbarque = CTRC.CodOrdemEmbarque
INNER JOIN cartafrete CF ON CF.NumOrdemEmbarque = O.NumOrdemEmbarque AND CF.Sequencial = CTRC.Sequencial
INNER JOIN FiliaisAgencias FA ON FA.CodFilial = CTRC.CodFilialEmitente
INNER JOIN Fornecedores f ON f.CodFornecedor = CTRC.CodFornecedor
INNER JOIN Motoristas m ON m.CodMotorista = CTRC.CodMotorista
WHERE CTRC.SituacaoConhecto <> 'Cancelado' AND  CTRC.Sequencial =  530000173308         
 AND CF.CodAdmPagtoFrete IN (5, 14)



SELECT 
    ComboBox_Financeiro.Descricao, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ConhecimentosRelacaoFretes.ValorPago, 
    ConhecimentosRelacaoFretes.ValorConferido, 
    (ConhecimentosRelacaoFretes.ValorPago - ConhecimentosRelacaoFretes.ValorConferido) AS Diferenca, 
    ConhecimentosRelacaoFretes.NumSeqConhecto, 
    ConhecimentosRelacaoFretes.CodTipoPagamento, 
    CASE 
        WHEN OrdemEmbarque.CIOT in ('IRIOM', 'EFRETE PIX') THEN 
            CASE 
                WHEN BeneficiarioPagamento = 'M' THEN 'Motorista'  
                WHEN BeneficiarioPagamento = 'P' THEN 'Proprietário' 
                ELSE NULL 
            END 
        ELSE NULL 
    END AS Beneficiario 
FROM 
    ConhecimentosRelacaoFretes 
    INNER JOIN RelacaoFretes ON ConhecimentosRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
    INNER JOIN ComboBox_Financeiro ON ComboBox_Financeiro.Codigo = ConhecimentosRelacaoFretes.CodTipoPagamento 
        AND ComboBox_Financeiro.NomeComboBox = 'cboTipoPagamento' 
    INNER JOIN Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor 
    INNER JOIN ConhecimentosTransporte ON ConhecimentosTransporte.Sequencial = ConhecimentosRelacaoFretes.NumSeqConhecto 
    LEFT JOIN OrdemEmbarque ON OrdemEmbarque.NumOrdemEmbarque = ConhecimentosTransporte.CodOrdemEmbarque 
WHERE 
    ConhecimentosRelacaoFretes.NumSeqConhecto = 530000173308

UNION 

SELECT 
    TiposValores.DescTipoValor, 
    RelacaoFretes.CodRelacaoFrete, 
    RelacaoFretes.CodFornecedor, 
    Fornecedores.RazaoSocial, 
    RelacaoFretes.DataEntradaRelacao, 
    ValoresRelacaoFretes.ValorPago, 
    ISNULL(ValoresRelacaoFretes.ValorConferido, 0), 
    (ValoresRelacaoFretes.ValorPago - ISNULL(ValoresRelacaoFretes.ValorConferido, 0)) AS Diferenca, 
    -1, 
    -1, 
    NULL 
FROM 
    ValoresRelacaoFretes 
    INNER JOIN RelacaoFretes ON ValoresRelacaoFretes.CodRelacaoFrete = RelacaoFretes.CodRelacaoFrete 
    INNER JOIN TiposValores ON ValoresRelacaoFretes.CodTipoValor = TiposValores.CodTipoValor 
    INNER JOIN Fornecedores ON RelacaoFretes.CodFornecedor = Fornecedores.CodFornecedor 
WHERE 
    ValoresRelacaoFretes.CodComplemento = 530000173308 

ORDER BY 
    RelacaoFretes.DataEntradaRelacao;
