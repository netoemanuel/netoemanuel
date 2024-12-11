;
WITH Embarques (Tipo, Sequencial, CodFreteTerceiro, CodVeiculo, DataEmissao, UF_Serie, NumConhecto, CodCliente, CodRota, QuantidadeSaida, LocalOrigem, LocalDestino, ChaveCTe) AS
(
    SELECT TOP (1) 'Próprio',
                  ctrc.Sequencial,
                  NULL AS CodFreteTerceiro,
                  ctrc.CodVeiculo,
                  ctrc.DataEmissao,
                  ctrc.CodUF,
                  ctrc.NumConhecto,
                  ctrc.CodClientePagto,
                  ctrc.CodRota,
                  ctrc.QuantidadeSaida,
                  NULL,
                  NULL,
                  cte.ID
    FROM ConhecimentosTransporte ctrc
    LEFT JOIN LONTANO_GSe.dbo.CTe cte ON cte.Sequencial = ctrc.Sequencial
    WHERE ctrc.CodVeiculo = 3756
      AND ctrc.SituacaoConhecto NOT IN ('Cancelado', 'Substituto')
      AND ctrc.TipoConhecimento <> 'Substituto'
    ORDER BY ctrc.DataEmissao DESC
    
    UNION 

    SELECT TOP(1) 'Terceiro',
                  cter.Sequencial,
                  fre.CodFreteTerceiro,
                  cter.CodVeiculo,
                  cter.DataEmbarque,
                  cter.SerieConhecto COLLATE Latin1_General_CI_AI,
                  cter.NumConhecto,
                  fre.CodCliente,
                  fre.CodRota,
                  cter.QuantSaida,
                  fre.LocalOrigem,
                  fre.LocalDestino,
                  NULL
    FROM ConhecimentosTerceiros cter
    JOIN FretesTerceiros fre ON fre.CodFreteTerceiro = cter.CodFreteTerceiro
    WHERE cter.CodVeiculo = 3756
    ORDER BY cter.DataEmbarque DESC
)
SELECT top(1)
       ctrc.Sequencial,
       ctrc.CodFreteTerceiro,
       loc.datachamada AS lblMostraDados_0,
       CASE
           WHEN loc.PeriodoChamada = 'M' THEN 'Manhã'
           WHEN loc.periodochamada = 'T' THEN 'Tarde'
           WHEN loc.periodochamada = 'N' THEN 'Noite'
       END AS lblMostraDados_1,
       loc.HoraChamada AS lblMostraDados_2,
       loc.CodCidadeAtual AS lblMostraDados_3,
       loc.CodCidadeDestino AS lblMostraDados_4,
       loc.Situacao AS lblMostraDados_5,
       loc.IndicadorCarga AS lblMostraDados_6,
       ('Conhecimento: ' + CTRC.UF_Serie + '-' + CONVERT(VARCHAR(12), CTRC.NumConhecto) + 
       '   Emissão: ' + FORMAT(CTRC.DataEmissao, 'dd/MM/yy', 'pt-br') + 
       '   Qtde Saída: ' + Format(CTRC.QuantidadeSaida, 'N', 'pt-br') + 
       CASE
           WHEN ISNULL(docto.Sequencial, 0) > 0 THEN 
                '   Imagem Doctos.: ' + 
                CASE 
                    WHEN Aprovadas > 0 THEN (CONVERT(VARCHAR, Aprovadas) + ' aprovada(s) ') 
                    ELSE '' 
                END + 
                CASE 
                    WHEN Reprovadas > 0 THEN (CONVERT(VARCHAR, Reprovadas) + ' reprovada(s) ') 
                    ELSE '' 
                END + 
                CASE 
                    WHEN EmAnalise > 0 THEN (CONVERT(VARCHAR, EmAnalise) + ' em análise') 
                    ELSE '' 
                END 
           ELSE '' 
       END) AS lblMostraDados_7,
       ('Rota: ' + CASE 
                      WHEN ISNULL(ctrc.CodRota, 0) = 0 THEN (ISNULL(ctrc.LocalOrigem, '') + ' -> ' + ISNULL(ctrc.LocalDestino, '')) COLLATE Latin1_General_CI_AS 
                      ELSE Rotas.DescricaoRota 
                   END) AS lblMostraDados_8,
       CASE 
           WHEN ISNULL(MDFe.[Status], 0) = 9 THEN 'MDF-e Encerrado em: ' + Format(Enc.DataCriacao, 'dd/MM/yy', 'pt-br') + ' por ' + uEnc.NomeUsuario + ' (filial ' + enc.CodFilialCriacao COLLATE Latin1_General_CI_AS + ')' 
           ELSE '' 
       END AS lblEncerramentoMDFe_9,
       CASE 
           WHEN Tipo = 'Próprio' THEN 
                CASE 
                    WHEN (MDFe.Sequencial IS NULL OR MDFe.[Status] = 1) THEN (LEFT(cli.NomeCliente, 20) + '  -  ' + LEFT(cid.NomeCidade, 15) + '  -  ' + Cid.CodUF) 
                    ELSE '' 
                END 
           ELSE (LEFT(cli.NomeCliente, 20) + '  -  ' + LEFT(cid.NomeCidade, 15) + '  -  ' + Cid.CodUF) 
       END AS lblMostraClienteCidadeUF
FROM Embarques ctrc
JOIN Rotas ON Rotas.CodRota = ctrc.CodRota
JOIN Clientes cli ON cli.CodCliente = ctrc.CodCliente
JOIN Cidades cid ON cid.CodCidade = cli.CodCidade
LEFT JOIN LONTANO_GSe.dbo.infCTe_MDFe ON infCTe_MDFe.chCTe = ctrc.ChaveCTe
LEFT JOIN LONTANO_GSe.dbo.MDFe ON MDFe.Sequencial = infCTe_MDFe.Sequencial
LEFT JOIN MDFeViagem_OrdemEmbarque MOE ON MOE.SeqViagem = MDFe.CodManifestoCarga
LEFT OUTER JOIN LONTANO_GSe.dbo.Eventos_MDFe Enc ON Enc.Sequencial_MDFe = MDFe.Sequencial AND Enc.tpEvento = 110112 AND Enc.Status = 9
LEFT OUTER JOIN Usuarios uEnc ON uEnc.CodUsuario = Enc.CodUsuarioCriacao
LEFT JOIN (
    SELECT Sequencial,
           SUM(CASE 
                   WHEN AprovacaoImagem = 'Aprovada' THEN 1 
                   ELSE 0 
               END) AS Aprovadas,
           SUM(CASE 
                   WHEN AprovacaoImagem = 'Reprovada' THEN 1 
                   ELSE 0 
               END) AS Reprovadas,
           SUM(CASE 
                   WHEN AprovacaoImagem = 'Em Análise' THEN 1 
                   ELSE 0 
               END) AS EmAnalise
    FROM ImagensCTe
    GROUP BY Sequencial
) docto ON docto.Sequencial = ctrc.Sequencial
LEFT JOIN LocalizacaoFrota loc ON loc.CodVeiculo = ctrc.CodVeiculo AND loc.DataChamada = (
    SELECT Max(DataChamada) AS datachamada
    FROM LocalizacaoFrota
    WHERE LocalizacaoFrota.CodVeiculo = ctrc.CodVeiculo
)
ORDER BY DataEmissao DESC


select * from LocalizacaoFrota where CodVeiculo = 3756 ORDER BY DataCriacao desc


--SELECT NumConhecto,* from ConhecimentosTerceiros where Sequencial = 86066

--select numconhecto,* from ConhecimentosTerceiros where numconhecto like '%/%' order by dataembarque desc --368037/1
--update ConhecimentosTerceiros set numconhecto = '368037' where Sequencial = 86066