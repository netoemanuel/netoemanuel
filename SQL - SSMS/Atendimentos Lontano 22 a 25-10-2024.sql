select * from MovimentacaoBancaria where CodMovBancaria = 1610538
--UPDATE MovimentacaoBancaria set Gerado = 'N' where CodMovBancaria = 1610538
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC ConfereAjuste3Reais '2024-08-01', '2024-10-24 23:59', 'CONFERE'
EXEC ConfereAjuste3Reais '2024-08-01', '2024-10-24 23:59', 'AJUSTA'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--SELECT  * from Programas where  CodPrograma = 'FloatBarMonitorGestaoFrota'
SELECT u.NomeUsuario,* FROM PermissoesAcesso 
join Usuarios u ON u.CodUsuario = PermissoesAcesso.CodUsuario
WHERE (CodPrograma = 'FloatBarMonitorGestaoFrota')
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CT.NumFormulario, 
       CT.ModeloDocumento,
       COUNT(*) AS QtdConhecimentos, 
       STRING_AGG(CAST(CT.Sequencial AS NVARCHAR(MAX)), ', ') AS Sequenciais,
       MAX(CT.DataCriacao) AS DataCriacao
FROM ConhecimentosTransporte CT
WHERE CT.NumFormulario <> 0
GROUP BY CT.NumFormulario, CT.ModeloDocumento
HAVING COUNT(*) > 1
ORDER BY DataCriacao DESC;
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM NotasFiscaisConhecimento where SequencialConhecimento = 730000136754
--delete  FROM NotasFiscaisConhecimento where SequencialConhecimento = 730000136754
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = null, CodModelo = '1' where SequencialConhecimento = 730000136754 -- 35240807526557000533550010010768131783703189 / 55
--UPDATE NotasFiscaisConhecimento set ChaveAcessoNFe = '35240807526557000533550010010768131783703189', CodModelo = '55' where SequencialConhecimento = 730000136754
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from LONTANO_GSe.dbo.cte where Sequencial = 730000136755
--delete from LONTANO_GSe.dbo.cte where Sequencial = 730000136754
--EXEC Grava_CTe 730000136754
exec VerificaCTe 730000136754
--MT-735659  --  671321028117
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * from ConhecimentosTransporte where NumConhecto = 418465 AND CodUF = 'MG'
SELECT * from ConhecimentosTransporte_log where NumConhecto = 418465 AND CodUF = 'MG'
EXEC VerificaCTe 530000171294
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Veiculos where PlacaVeiculo LIKE 'AAA-0000'
SELECT CodVeiculo,* from ConhecimentosTransporte where NumConhecto = 418486 AND CodUF = 'MG' and SerieConhecto = '0' -- 9281
--UPDATE  ConhecimentosTransporte SET CodVeiculo = 114593 where NumConhecto = 418486 AND CodUF = 'MG' and SerieConhecto = '0'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--UPDATE ConhecimentosTransporte SET SerieConhecto = 'RC' where Sequencial IN (
--SELECT DISTINCT ConhecimentosTransporte.Sequencial
----, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodUF + '-' + LTRIM(STR(ConhecimentosTransporte.NumConhecto)) AS CTRC, ConhecimentosTransporte.DataEmissao, ConhecimentosTransporte.Sequencial, Veiculos.PlacaVeiculo, ConhecimentosTransporte.SituacaoConhecto, ConhecimentosTransporte.TarifaFreteEmpresa, ConhecimentosTransporte.TarifaFreteMotorista, ConhecimentosTransporte.ValorAdiantamento, ConhecimentosTransporte.QuantidadeSaida, ConhecimentosTransporte.CodNaturezaCarga, ConhecimentosTransporte.QuantidadeChegada, ConhecimentosTransporte.ValorTotalFrete, ConhecimentosTransporte.CodRota, CASE WHEN ConhecimentosTransporte.Sequencial IN (0) THEN 'X' ELSE NULL END AS Marcador, NaturezaCarga.DescNaturezaCarga, ConhecimentosTransporte.CodigoCFOP, ConhecimentosTransporte.CodFilialComissao, ParamDespRecFilial.Titulo,  dbo.NotaFiscalCTRC(ConhecimentosTransporte.Sequencial) AS NF 
--FROM ConhecimentosTransporte
--INNER JOIN Rotas ON ConhecimentosTransporte.CodRota = Rotas.CodRota 
--INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade
--INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade
--LEFT OUTER JOIN Veiculos ON ConhecimentosTransporte.CodVeiculo = Veiculos.CodVeiculo
--LEFT OUTER JOIN ConhecimentosCliente ON ConhecimentosTransporte.Sequencial = ConhecimentosCliente.SequencialConhecimento 
--LEFT OUTER JOIN NotasFiscaisConhecimento ON ConhecimentosTransporte.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
--LEFT OUTER JOIN PedidosFrete ON ConhecimentosTransporte.CodPedidoFrete = PedidosFrete.CodPedidoFrete
--LEFT OUTER JOIN ParamDespRecFilial ON ConhecimentosTransporte.CodRegiao = ParamDespRecFilial.NumCol 
--LEFT OUTER JOIN OrdemEmbarque ON ConhecimentosTransporte.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque 
--INNER JOIN Clientes cpag ON cpag.CodCliente = ConhecimentosTransporte.CodClientePagto INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
--INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ConhecimentosTransporte.CodNaturezaCarga
--WHERE ConhecimentosTransporte.CodUF = 'SP' AND ConhecimentosTransporte.SerieConhecto = 'RF' AND Clientes_Complemento.CodClienteMatriz = 1000904 AND Veiculos.Propriedade = 'Terceiro' )
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodVeiculo,CodFilialEmitente,* from ConhecimentosTransporte where NumConhecto = 418486 AND CodUF = 'MG' and SerieConhecto = '0' -- 9281 / UBL
--UPDATE  ConhecimentosTransporte SET CodFilialEmitente = 'FRM' where NumConhecto = 418486 AND CodUF = 'MG' and SerieConhecto = '0'
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






--frmRateioDespesasVeiculos

    --If UCase(frmPrincipal.NomeBanco) = UCase("LONTANO") Then
    --    SQL = "SELECT Classificacao, DescCentroCusto FROM CentroCusto WHERE (Classificacao > '1.02') AND (Classificacao <= '1.02.01.01')"
    --    SQL = SQL & " OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02' OR Classificacao = '1.02.03.02') ORDER BY Classificacao"
    --Else
    --    SQL = "SELECT Classificacao, DescCentroCusto FROM CentroCusto WHERE (Classificacao > '1.02') AND (Classificacao <= '1.02.01.01')"
    --    SQL = SQL & " OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02') ORDER BY Classificacao"
    --End If

SELECT Classificacao, DescCentroCusto
FROM CentroCusto 
WHERE
(Classificacao > '1.02')
AND (Classificacao <= '1.02.01.01') OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02' OR Classificacao = '1.02.03.02')
ORDER BY Classificacao



SELECT Classificacao, DescCentroCusto 
FROM CentroCusto
WHERE (Classificacao > '1.02') 
AND (Classificacao <= '1.02.01.01') OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02')
ORDER BY Classificacao
SELECT Classificacao, DescCentroCusto FROM CentroCusto WHERE (Classificacao > '1.02') AND (Classificacao <= '1.02.01.01') OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02' OR Classificacao = '1.02.03.02') ORDER BY Classificacao
SELECT CentroCusto.CodFilial, CentroCusto.CodCentroCusto, (CentroCusto.CodFilial + '-' + LTRIM(STR(CentroCusto.CodCentroCusto))) AS CentroCusto, CentroCusto.DescCentroCusto, CentroCusto.Classificacao, CentroCusto.TipoCentroCusto, CentroCusto.SituacaoCentroCusto, (ComboBox_Financeiro.Descricao) AS GrupoCentroCusto 
FROM CentroCusto
LEFT OUTER JOIN ComboBox_Financeiro ON CentroCusto.CodGrupoCCusto = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboGrupoCCusto'
ORDER BY CentroCusto.CodFilial, CentroCusto.CodCentroCusto

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SELECT Classificacao FROM CentroCusto WHERE (DescCentroCusto = 'Cavalos Frota Campo Grande' OR DescCentroCusto = 'Cavalos Frota Rondonopolis') AND (SituacaoCentroCusto = 'A')

SELECT COUNT(*) AS QuantRegistros FROM CentroCusto 
INNER JOIN Veiculos ON Veiculos.CodFilialCCusto = CentroCusto.CodFilial AND Veiculos.CodCentroCusto = CentroCusto.CodCentroCusto
WHERE (SituacaoCentroCusto = 'A') AND (CentroCusto.Classificacao LIKE '1.02.01.01%') AND (DescCentroCusto <> 'Cavalos Frota Campo Grande') AND (DescCentroCusto <> 'Cavalos Frota Rondonopolis')

SELECT * FROM CentroCusto 
INNER JOIN Veiculos ON Veiculos.CodFilialCCusto = CentroCusto.CodFilial AND Veiculos.CodCentroCusto = CentroCusto.CodCentroCusto
WHERE (SituacaoCentroCusto = 'A') AND (CentroCusto.Classificacao LIKE '1.02.01.01%') AND (DescCentroCusto <> 'Cavalos Frota Campo Grande') AND (DescCentroCusto <> 'Cavalos Frota Rondonopolis')

SELECT COUNT(*) AS QuantRegistros
FROM CentroCusto 
INNER JOIN Veiculos ON Veiculos.CodFilialCCusto = CentroCusto.CodFilial AND Veiculos.CodCentroCusto = CentroCusto.CodCentroCusto 
WHERE (SituacaoCentroCusto = 'A') AND (CentroCusto.Classificacao LIKE '1.02.01%') AND (DescCentroCusto <> 'Frota CG')

SELECT COUNT(*) AS QuantRegistros FROM CentroCusto INNER JOIN Veiculos ON Veiculos.CodFilialCCusto = CentroCusto.CodFilial AND Veiculos.CodCentroCusto = CentroCusto.CodCentroCusto WHERE (SituacaoCentroCusto = 'A') AND (CentroCusto.Classificacao LIKE '1.02.01.01%') AND (DescCentroCusto <> 'Cavalos Frota Campo Grande') AND (DescCentroCusto <> 'Cavalos Frota Rondonopolis')


SELECT Classificacao, DescCentroCusto FROM CentroCusto WHERE (Classificacao > '1.02') AND (Classificacao <= '1.02.01.01') OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02' OR Classificacao = '1.02.03.02') ORDER BY Classificacao

SELECT Classificacao, DescCentroCusto FROM CentroCusto WHERE (Classificacao > '1.02') AND (Classificacao <= '1.02.01.01') OR (Classificacao = '1.02.01.02' OR Classificacao = '1.02.02' OR Classificacao = '1.02.03.02') ORDER BY Classificacao

SELECT CentroCusto.CodFilial, CentroCusto.CodCentroCusto, (CentroCusto.CodFilial + '-' + LTRIM(STR(CentroCusto.CodCentroCusto))) AS CentroCusto, CentroCusto.DescCentroCusto, CentroCusto.Classificacao, CentroCusto.TipoCentroCusto, CentroCusto.SituacaoCentroCusto, 
(ComboBox_Financeiro.Descricao) AS GrupoCentroCusto FROM CentroCusto 
LEFT OUTER JOIN ComboBox_Financeiro ON CentroCusto.CodGrupoCCusto = ComboBox_Financeiro.Codigo AND ComboBox_Financeiro.NomeComboBox = 'cboGrupoCCusto'
WHERE Classificacao = '1.02.03.02'

select Classificacao,* from Veiculos where Classificacao = '1.02.03.02'

SELECT * from CentroCusto where DescCentroCusto like 'Cavalos Frota%'

select * from CaramuruControle where ID = '6001904537'
select top (20)  * from CaramuruControle order by DataCriacao desc