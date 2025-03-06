select CodTipoDespesa,* from DespesasContasPagar where CodContasPagar = 1855621

SELECT * FROM RateioContasPagar where CodContasPagar = 1855621

SELECT DespesasContasPagar.CodContasPagar, DespesasContasPagar.CodTipoDespesa, DespesasContasPagar.ValorDespesa, PlanoContasDespesa.DescTipoDespesa 
FROM DespesasContasPagar 
INNER JOIN PlanoContasDespesa ON DespesasContasPagar.CodTipoDespesa = PlanoContasDespesa.CodTipoDespesa 
WHERE (DespesasContasPagar.CodContasPagar = 1855621)


select * from DRE_Frota_Indicadores +WHERE CodTipoDespesa = 82

SELECT 
    ClassifDespesa, 
    DescTipoDespesa, 
    NivelContaDespesa, 
    CodFilialCCusto, 
    CodGrupoCCusto, 
    GrupoCentroCusto, 
    SUM(ValorDespesa) AS ValorDespesa 
FROM 
    MovimentosDespesas 
WHERE 
    (Competencia BETWEEN '09/01/2024 00:00:00' AND '09/30/2024 23:59:29') 
    AND TipoCentroCusto <> 'Outros' 
    AND (
        (
            TipoContaDespesa <> 'Custo de Fretes Contratados'
            AND TipoContaDespesa <> 'Despesas de Terceiros'
            AND TipoCentroCusto = 'Agenciadora de Cargas'
        ) 
        OR (
            TipoContaDespesa <> 'Custo de Fretes Contratados'
            AND TipoContaDespesa <> 'Despesas de Terceiros'
            AND TipoContaDespesa <> 'Custo Apropriado pelo Consumo'
            AND TipoCentroCusto <> 'Agenciadora de Cargas'
        )
    )
    AND (
        MovimentosDespesas.CodFilialCCusto = 'CBR' 
        OR MovimentosDespesas.CodFilialCCusto = 'CUB' 
        OR MovimentosDespesas.CodFilialCCusto = 'DRA' 
        OR MovimentosDespesas.CodFilialCCusto = 'PCN' 
        OR MovimentosDespesas.CodFilialCCusto = 'STS' 
        OR MovimentosDespesas.CodFilialCCusto = 'TRC'
    )
GROUP BY 
    ClassifDespesa, 
    DescTipoDespesa, 
    NivelContaDespesa, 
    CodFilialCCusto, 
    CodGrupoCCusto, 
    GrupoCentroCusto 
ORDER BY 
    ClassifDespesa, 
    DescTipoDespesa, 
    NivelContaDespesa, 
    CodFilialCCusto, 
    CodGrupoCCusto, 
    GrupoCentroCusto;



EXEC MonitoraMDFe 51042105
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1771243