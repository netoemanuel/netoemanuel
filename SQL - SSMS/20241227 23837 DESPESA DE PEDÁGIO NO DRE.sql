--EXEC Lontano_GSe.dbo.ResultadoFinanceiroRegiao @Usu = 14102, @Filial = 'CG', @Criacao = '12/27/2024 08:05:19', @Ini = '20240901', @Fim = '20240930', @Regiao = '29', @RegFil = 'CUB', @Periodo = 'Competência'

DECLARE @Usu		AS VARCHAR(5)	= 14102 
DECLARE @Filial		AS VARCHAR(3)	= 'CG' 
DECLARE @Criacao	AS VARCHAR(30)	= '12/27/2024 08:05:19'
DECLARE @Ini		AS VARCHAR(10)	= '20240901' 
DECLARE @Fim		AS VARCHAR(10)	= '20240930' 
DECLARE @Regiao		AS VARCHAR(3)	= '29' 
DECLARE @RegFil		AS VARCHAR(3)	= 'CUB' 
DECLARE @Periodo 	AS VARCHAR(20)	= 'Competência'

DECLARE @IniMov AS VARCHAR(8) = '19000101'
DECLARE @FimMov AS VARCHAR(8) = '20621231'
DECLARE @IniCom AS VARCHAR(8) = @Ini
DECLARE @FimCom AS VARCHAR(8) = @Fim

DECLARE @DimMesAno AS VARCHAR(1000) = (RIGHT('0'+CONVERT(varchar(2),MONTH(2024-09-01)),2)+'/'+CONVERT(varchar(4),YEAR(2024-09-01)))
IF @Periodo = 'Movimento' BEGIN
	SET @IniMov = @Ini
	SET @FimMov = @Fim
	SET @IniCom = '19000101'
	SET @FimCom = '20621231'
	SET @DimMesAno = (RIGHT('0'+CONVERT(varchar(2),MONTH(20240901)),2)+'/'+CONVERT(varchar(4),YEAR(20240901)))
END

SELECT		Ordem			= CASE 
									WHEN Mov.CodRecDesp IN (82,88,91,92,477,546,596,607,608,622) THEN 30 
							  ELSE 
								CASE 
									WHEN Mov.CodRecDesp IN (82,65,81,476,595,602,603,605,606) THEN 40 
								ELSE 3 END 
							  END, 
			Descricao		= Mov.DescTipoDespesa, 
			Regiao			= Reg.Titulo,
			CodRegiao		= Reg.NumCol,
			CodRecDesp		= Mov.CodRecDesp, 
			ClassifDespesa	= Mov.ClassifDespesa + @DimMesAno,
			Valor			= Mov.ValorDespesa
    FROM LONTANO.dbo.MovimentosDespesas Mov
    JOIN LONTANO.dbo.FiliaisParamDespRecFilial FilReg ON FilReg.CodFilial = Mov.CodFilialCCusto 
		AND CASE  @Periodo  WHEN 'Movimento' THEN Mov.DataMovimento ELSE Mov.Competencia END BETWEEN CAST(RIGHT(FilReg.MesAnoInicial,4)+left(FilReg.MesAnoInicial,2)+'01' AS DATETIME) AND CAST(isnull(RIGHT(FilReg.MesAnoFinal,4),'2062')+isnull(left(FilReg.MesAnoFinal,2),'12')+'01' AS DATETIME)
    JOIN LONTANO.dbo.ParamDespRecFilial Reg ON FilReg.NumCol = Reg.NumCol 
    WHERE (CONVERT(VARCHAR(8),Mov.Competencia,112) BETWEEN  @IniCom  AND  @FimCom ) AND (CONVERT(VARCHAR(8),Mov.DataMovimento,112) BETWEEN @IniMov  AND @FimMov) 
		AND NOT (Mov.CodFilialCCusto = 'CG' AND Mov.TipoCentroCusto = 'Agenciadora de Cargas')
		--AND (Mov.TipoCentroCusto = 'Agenciadora de Cargas') AND (((Mov.TipoContaDespesa <> 'Custo de Fretes Contratados') AND (Mov.TipoContaDespesa <> 'Despesas de Terceiros') AND (Mov.TipoContaDespesa <> 'Investimentos') 
		--alterado para encontrar os pedagios. precisa ver a regra de negocio dessa linha não mostra devido essa condição(Mov.TipoContaDespesa <> 'Custo de Fretes Contratados)
		AND (Mov.TipoCentroCusto = 'Agenciadora de Cargas') AND (((Mov.TipoContaDespesa = 'Custo de Fretes Contratados') AND (Mov.TipoContaDespesa <> 'Despesas de Terceiros') AND (Mov.TipoContaDespesa <> 'Investimentos') 
		AND Mov.TipoCentroCusto = 'Agenciadora de Cargas') OR ((Mov.TipoContaDespesa <> 'Custo de Fretes Contratados') AND (Mov.TipoContaDespesa <> 'Despesas de Terceiros') 
		AND (Mov.TipoContaDespesa <> 'Custo Apropriado pelo Consumo') AND Mov.TipoCentroCusto <> 'Agenciadora de Cargas')) 
		AND Reg.NumCol =  + CASE WHEN @Regiao <> '' AND @Regiao <> 0 THEN @Regiao ELSE 'Reg.NumCol' END 
		AND Mov.CodFilialCCusto =  CASE WHEN @RegFil <> '' THEN  @RegFil  ELSE 'Mov.CodFilialCCusto' END 
		AND Mov.NivelContaDespesa <> 'Sintético'

		--349.54000000000--
		select sum(ValorDespesa) from MovimentosDespesas where CodFilialCCusto = 'CUB' AND CodRecDesp = 82 and DataMovimento between '2024-09-01 00:00:00' and '2024-09-30 00:00:00'
		select * from MovimentosDespesas where CodFilialCCusto = 'CUB' AND CodRecDesp = 82 and DataMovimento between '2024-09-01 00:00:00' and '2024-09-30 00:00:00' order by DataMovimento desc

