--XML MDFe

select distinct mdfe.Sequencial, mdfe.Id 'NomeArquivo', convert(varchar(max),envio.xmlEnvolvido) 'XML_Enviado', convert(varchar(max),retorno.xmlEnvolvido) 'XML_Retorno', 'Autorizado' AS 'Status'
from LONTANO_GSe.dbo.MDFe mdfe
join LONTANO_GSe.dbo.MDFe_LOG envio on envio.Sequencial = mdfe.Sequencial and envio.codLog = 10 and envio.ID = (select MAX(ultenvio.id) from LONTANO_GSe.dbo.MDFe_LOG ultenvio where ultenvio.Sequencial = envio.Sequencial and ultenvio.codLog = 10)
join LONTANO_GSe.dbo.MDFe_LOG retorno on retorno.Sequencial = mdfe.Sequencial and retorno.codLog = 22 and retorno.ID = (select MAX(ultretorno.id) from LONTANO_GSe.dbo.MDFe_LOG ultretorno where ultretorno.Sequencial = retorno.Sequencial and ultretorno.codLog = 22)
left join LONTANO_GSe.dbo.propVeiculos_MDFe prop on prop.Sequencial = mdfe.Sequencial
where mdfe.Status in (1,9)
	and mdfe.dhEmi between '2024-09-03' and '2024-09-15 23:59:29'
	and mdfe.UF = 'MG'
	and prop.Sequencial is null

select * from LONTANO_GSe.dbo.MDFe


--XML CTe
SELECT
--count (cte.Sequencial) 
 --   ctrc.Sequencial, NF.ChaveAcessoNFe AS 'NomeArquivo' , '' XML_Enviado, '' XML_Retorno, 'Autorizado' AS status -- Sem Tabela CT-e = Recibos
ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status -- 264709  -- CT-e
from ConhecimentosTransporte ctrc
JOIN Rotas on rotas.CodRota = ctrc.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
--JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ctrc.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = ctrc.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = ctrc.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = ctrc.CodClientePagto
WHERE
    ctrc.SerieConhecto = '0' AND 
	ctrc.DataEmissao BETWEEN '01/01/2021 00:00:00' AND '01/31/2021 23:59:29'	
	--AND NF.ChaveAcessoNFe is not null
--ctrc.SerieConhecto = '0' AND ctrc.DataEmissao BETWEEN '12/01/2024 00:00:00' AND '12/31/2024 23:59:29' 
--AND (ctrc.SituacaoConhecto <> 'Cancelado' AND ctrc.SituacaoConhecto <> 'Substituído')
ORDER BY ctrc.DataEmissao

--Exportação XML CT-e
SELECT 
ctrc.Sequencial, cte.ID AS 'NomeArquivo' , cte.XML_Enviado, cte.XML_Retorno, 'Autorizado' AS status -- 264709
FROM ConhecimentosTransporte ctrc
INNER JOIN CTRC_PIS_COFINS on CTRC_PIS_COFINS.Sequencial = ctrc.Sequencial
INNER JOIN Rotas ON ctrc.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ctrc.Sequencial
LEFT OUTER JOIN Veiculos ON ctrc.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ctrc.Sequencial = ConhecimentosCliente.SequencialConhecimento 
LEFT OUTER JOIN NotasFiscaisConhecimento ON ctrc.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
LEFT OUTER JOIN PedidosFrete ON ctrc.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN ParamDespRecFilial ON ctrc.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ctrc.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ctrc.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ctrc.CodNaturezaCarga
WHERE

ctrc.SerieConhecto = '0' 
AND ctrc.DataEmissao BETWEEN '12/01/2024 00:00:00' AND '12/31/2024 23:59:29'
AND (ctrc.SituacaoConhecto <> 'Cancelado' AND ctrc.SituacaoConhecto <> 'Substituído')
ORDER BY ctrc.Sequencial

-- NFs Conhecimentos
SELECT ChaveAcessoNFe AS NomeArquivo, NFe.CodVenda
FROM NotasFiscaisConhecimento NF 
LEFT OUTER JOIN Lontano_GSe.dbo.NFe NFe ON NFe.ID COLLATE Latin1_General_CI_AI = NF.ChaveAcessoNFe
WHERE (NF.SequencialConhecimento in (select
CT.Sequencial 
from ConhecimentosTransporte CT 
JOIN NotasFiscaisConhecimento NF ON CT.Sequencial = nf.SequencialConhecimento 
JOIN Rotas on rotas.CodRota = CT.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
--JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = CT.Sequencial
JOIN PedidosFrete ped ON ped.CodPedidoFrete = CT.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto
JOIN LONTANO_GSe.dbo.NFe NFe ON NFe.ID = NF.ChaveAcessoNFe
where 
    CT.SerieConhecto = '2' AND 
	CT.DataEmissao BETWEEN '01/01/2025 00:00:00' AND '01/31/2025 23:59:29'	))

--and CT.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
--and CT.TipoConhecimento = 'Normal')) 
and CodVenda is not null
and ChaveAcessoNFe is not null
--and CodVenda in (3306975, 3317052)
ORDER BY NF.SerieNF, NF.NumeroNF



-- SQL PLanilha
SELECT
    DataEmissao AS 'Data Emissão',
    ctrc.CodUF + ' - ' + CONVERT(VARCHAR(MAX), ctrc.NumConhecto) AS 'Nº Documento', 
	SerieConhecto AS 'Série',
    --dbo.CNPJ_CPF_Masc(cte.CNPJ) AS 'CNPJ Emissor',
    dbo.CNPJ_CPF_Masc(cpag.CNPJ_CPF) AS 'CNPJ Tomador',
    ctrc.CodigoCFOP AS 'CFOP',
    --CONVERT(VARCHAR(44), cte.ID) AS 'Chave CT-e',
    CONVERT(VARCHAR(44), NotasFiscaisConhecimento.ChaveAcessoNFe) AS 'Chave NFe Transportada',
	--CONVERT(VARCHAR(44), NotasFiscaisConhecimento.ChaveAcessoNFe) AS 'Chave NFe Transportada',
    FORMAT(CTRC_PIS_COFINS.PIS, 'N2', 'pt-br') AS 'PIS',
    FORMAT(CTRC_PIS_COFINS.COFINS, 'N2', 'pt-br') AS 'CONFIS',
    -- CASE 
    --     WHEN ctrc.CST = '09' THEN 'CST 09 - OPERAÇÃO COM SUSPENSÃO DA CONTRIBUIÇÃO'
    --     WHEN ctrc.CST = '01' THEN 'CST 01 - OPERAÇÃO TRIBUTÁVEL COM ALÍQUOTA BÁSICA'
    --     ELSE ctrc.CST
    -- END AS 'CST ICMS',
    --CASE WHEN isnull(pedidosfrete.IndExportacao,'') = 'S' 
    --    THEN 'CST 09 - OPERAÇÃO COM SUSPENSÃO DA CONTRIBUIÇÃO'
    --    ELSE 'CST 01 - OPERAÇÃO TRIBUTÁVEL COM ALÍQUOTA BÁSICA'
    --END AS 'CST PIS/COFINS-1',
    --CASE WHEN CHARINDEX('Pis/Cofins suspenso',CONVERT(VARCHAR(MAX),cte.infadfisco)) > 0
    --    THEN 'CST 09 - OPERAÇÃO COM SUSPENSÃO DA CONTRIBUIÇÃO'
    --    ELSE 'CST 01 - OPERAÇÃO TRIBUTÁVEL COM ALÍQUOTA BÁSICA'
    --END AS 'CST PIS/COFINS-2',
    ctrc.SituacaoConhecto AS 'Situação',
    IndExportacao AS 'Ind Exportação',
    FORMAT(ctrc.ValorTotalFrete, 'N2', 'pt-br') AS 'Valor Total',
    ISNULL(FORMAT(ctrc.Pedagio, 'N2', 'pt-br'), '0.00') AS 'Valor Pedagio',  
    ISNULL(FORMAT(ctrc.ValorICMSFrete, 'N2', 'pt-br'), '0.00') AS 'Valor ICMS'
FROM ConhecimentosTransporte ctrc
INNER JOIN CTRC_PIS_COFINS ON CTRC_PIS_COFINS.Sequencial = ctrc.Sequencial
INNER JOIN Rotas ON ctrc.CodRota = Rotas.CodRota 
INNER JOIN Cidades ON Rotas.CodCidadeOrigem = Cidades.CodCidade 
INNER JOIN Cidades Cidades1 ON Rotas.CodCidadeDestino = Cidades1.CodCidade 
--JOIN LONTANO_GSe.dbo.CTe cte ON cte.Sequencial = ctrc.Sequencial
LEFT OUTER JOIN Veiculos ON ctrc.CodVeiculo = Veiculos.CodVeiculo 
LEFT OUTER JOIN ConhecimentosCliente ON ctrc.Sequencial = ConhecimentosCliente.SequencialConhecimento 
LEFT OUTER JOIN NotasFiscaisConhecimento ON ctrc.Sequencial = NotasFiscaisConhecimento.SequencialConhecimento
LEFT OUTER JOIN PedidosFrete ON ctrc.CodPedidoFrete = PedidosFrete.CodPedidoFrete
LEFT OUTER JOIN ParamDespRecFilial ON ctrc.CodRegiao = ParamDespRecFilial.NumCol 
LEFT OUTER JOIN OrdemEmbarque ON ctrc.CodOrdemEmbarque = OrdemEmbarque.NumOrdemEmbarque
INNER JOIN Clientes cpag ON cpag.CodCliente = ctrc.CodClientePagto 
INNER JOIN Clientes_Complemento ON Clientes_Complemento.CodCliente = cpag.CodCliente
INNER JOIN NaturezaCarga ON NaturezaCarga.CodNaturezaCarga = ctrc.CodNaturezaCarga
WHERE 
    ctrc.SerieConhecto = '2' AND 
	ctrc.DataEmissao BETWEEN '01/01/2025 00:00:00' AND '01/31/2025 23:59:29'	
	
ORDER BY ctrc.DataEmissao



-- Importação XML Faltantes com base na planilha excel auxilio feito por Láercio
select --COUNT(*) 
    CT.Sequencial --, NF.ChaveAcessoNFe AS 'NomeArquivo' , '' XML_Enviado, '' XML_Retorno, 'Autorizado' AS status  -- duvida
    , cte.ID 'Chave CTe'
    , isnull(ped.IndExportacao,'') 'Exp'
    , ct.SituacaoConhecto 'Situação CTRC'
    , ct.TipoConhecimento 'Tipo CTRC'
from OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\XML Cte faltantes - 2 trimestre 2024.xlsx','SELECT * FROM [Abril$A1:P10000]') P 
JOIN LONTANO_GSe.dbo.CTe cte ON P.[Chave CT-e] = cte.ID COLLATE Latin1_General_CI_AS
JOIN ConhecimentosTransporte CT ON cte.Sequencial = CT.Sequencial
JOIN NotasFiscaisConhecimento NF ON CT.Sequencial = nf.SequencialConhecimento AND nf.Sequencial = 1
JOIN Rotas on rotas.CodRota = CT.CodRota
JOIN Cidades dest1 ON dest1.CodCidade = Rotas.CodCidadeDestino
LEFT JOIN Cidades dest2 on dest2.CodCidade = dest1.CodCidade_Subor
JOIN PedidosFrete ped ON ped.CodPedidoFrete = CT.CodPedidoFrete
JOIN Clientes_Complemento comp ON comp.CodCliente = CT.CodClientePagto
JOIN Clientes cli ON cli.CodCliente = CT.CodClientePagto
-- JOIN LONTANO_GSe.dbo.NFe NFe ON NFe.ID = NF.ChaveAcessoNFe
-- JOIN OPENROWSET('Microsoft.ACE.OLEDB.12.0','Excel 8.0;DATABASE=C:\EDI\XML Cte faltantes - 2 trimestre 2024.xlsx','SELECT * FROM [Abril$A1:P10000]') P ON P.[Chave CT-e] = cte.ID COLLATE Latin1_General_CI_AS
where CT.DataEmissao BETWEEN '2024-04-01' AND '2024-04-30 23:59:29' 
 	and CT.SerieConhecto = '0' 
 	-- and isnull(ped.IndExportacao,'') = 'S'
 	-- and CT.SituacaoConhecto NOT IN ('Cancelado','Substituído') 
 	-- and CT.TipoConhecimento = 'Normal'