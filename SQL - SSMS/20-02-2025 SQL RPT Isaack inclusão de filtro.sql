
--OPT Gerencial
SELECT CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime) as MesAno, 
CodRecDesp, DescTipoDespesa, ClassifDespesa, NivelContaDespesa, SUM(ValorDespesa) as ValorDespesa, (SELECT Titulo 
FROM ParamDespRecFilial 
INNER JOIN FiliaisParamDespRecFilial ON FiliaisParamDespRecFilial.NumCol = ParamDespRecFilial.NumCol 
WHERE CodFilial = CodFilialCCusto) as Regiao FROM MovimentosDespesas 
WHERE (Competencia BETWEEN '01/01/2025 00:00:00' AND '01/31/2025 23:59:29') AND TipoCentroCusto <> 'Outros' AND (((TipoContaDespesa <> 'Custo de Fretes Contratados') 
AND (TipoContaDespesa <> 'Despesas de Terceiros') AND (TipoContaDespesa <> 'Investimentos') AND TipoCentroCusto = 'Agenciadora de Cargas') OR ((TipoContaDespesa <> 'Custo de Fretes Contratados') 
AND (TipoContaDespesa <> 'Despesas de Terceiros') AND (TipoContaDespesa <> 'Custo Apropriado pelo Consumo') AND (TipoContaDespesa <> 'Investimentos') AND TipoCentroCusto <> 'Agenciadora de Cargas')) 
--AND  ContabilGerencial = 'Contábil'
GROUP BY CodFilialCCusto, CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime), 
CodRecDesp, DescTipoDespesa, ClassifDespesa, NivelContaDespesa ORDER BY CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime)
