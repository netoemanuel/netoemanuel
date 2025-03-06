--RelResumoMensalDesp


--SELECT CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime) as MesAno, CodRecDesp, DescTipoDespesa, ClassifDespesa, NivelContaDespesa, SUM(ValorDespesa) as ValorDespesa, (SELECT Titulo FROM ParamDespRecFilial INNER JOIN FiliaisParamDespRecFilial ON FiliaisParamDespRecFilial.NumCol = ParamDespRecFilial.NumCol WHERE CodFilial = CodFilialCCusto) as Regiao FROM MovimentosDespesas WHERE (Competencia BETWEEN '01/01/2024 00:00:00' AND '01/31/2024 23:59:29') GROUP BY CodFilialCCusto, CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime), CodRecDesp, DescTipoDespesa, ClassifDespesa, NivelContaDespesa ORDER BY CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' + CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime)

--RelResumoMensalDesp

SELECT 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME) AS MesAno,
    CodRecDesp,
    DescTipoDespesa,
    ClassifDespesa,
    NivelContaDespesa,
    SUM(ValorDespesa) AS ValorDespesa,
    (SELECT Titulo 
     FROM ParamDespRecFilial 
     INNER JOIN FiliaisParamDespRecFilial ON FiliaisParamDespRecFilial.NumCol = ParamDespRecFilial.NumCol 
     WHERE CodFilial = CodFilialCCusto) AS Regiao
FROM 
    MovimentosDespesas
WHERE 
    Competencia BETWEEN '01/09/2024 00:00:00' AND '09/30/2024 23:59:29'
GROUP BY 
    CodFilialCCusto, 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME),
    CodRecDesp,
    DescTipoDespesa,
    ClassifDespesa,
    NivelContaDespesa
ORDER BY 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME);


--where

--{RelDespFilial.CodFilial} = 'CG' AND {RelDespFilial.CodUsuario} = 14102 AND {RelDespFilial.DataCriacao} = '2025/02/24 16:52:54'


--RelResumoMensalDesp

SELECT CAST((CAST(Datepart(yyyy,Competencia) as Varchar(4)) + '/' +
CAST(Datepart(mm,Competencia) as Varchar(2))) + '/1' as DateTime) as MesAno, 
CodRecDesp,
DescTipoDespesa, 
ClassifDespesa,
NivelContaDespesa, 
SUM(ValorDespesa) as ValorDespesa,
(SELECT Titulo FROM ParamDespRecFilial
INNER JOIN FiliaisParamDespRecFilial ON FiliaisParamDespRecFilial.NumCol = ParamDespRecFilial.NumCol 
WHERE
CodFilial = CodFilialCCusto) as Regiao FROM MovimentosDespesas


SELECT 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME) AS MesAno,
    CodRecDesp,
    DescTipoDespesa,
    ClassifDespesa,
    NivelContaDespesa,
    SUM(ValorDespesa) AS ValorDespesa,
    (SELECT TOP 1 Titulo 
     FROM ParamDespRecFilial 
     INNER JOIN FiliaisParamDespRecFilial ON FiliaisParamDespRecFilial.NumCol = ParamDespRecFilial.NumCol 
     WHERE CodFilial = CodFilialCCusto
     ORDER BY Titulo) AS Regiao
FROM 
    MovimentosDespesas
WHERE 
    Competencia BETWEEN '09/01/2024 00:00:00' AND '09/30/2024 23:59:29'
GROUP BY 
    CodFilialCCusto, 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME),
    CodRecDesp,
    DescTipoDespesa,
    ClassifDespesa,
    NivelContaDespesa
ORDER BY 
    CAST((CAST(DATEPART(yyyy, Competencia) AS VARCHAR(4)) + '/' + 
    CAST(DATEPART(mm, Competencia) AS VARCHAR(2))) + '/1' AS DATETIME);
