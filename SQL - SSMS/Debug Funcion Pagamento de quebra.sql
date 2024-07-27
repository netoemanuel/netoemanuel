	--VARIÁVEIS GERAIS:
	DECLARE @Quebra AS DECIMAL(12,2),
			@ValorQuebra AS DECIMAL(14,2),
			@Diferenca AS DECIMAL(12,2),
			@Tolerancia AS DECIMAL(12,4),
			@TipoTolerancia AS VARCHAR(10),
			@CalculoQuebra AS DECIMAL(14,2),
			@QuantCalculo AS DECIMAL(12,2),
			@cocamar AS BIT,
			@tarifa AS DECIMAL(9,2),
			 @Sequencial DECIMAL(12,0) = 890000031454,		--> Sequencial do CTRC
			 --@QuantChegada DECIMAL(8,0) = 49585,	--> Quantidade de Chegada a ser utilizada no cálculo
			 @QuantChegada DECIMAL(8,0) = 49710,	--> Quantidade de Chegada a ser utilizada no cálculo
			 @QuantSaida DECIMAL(8,0) = 49710,		--> Quantidade de Saída do CTRC
			 @ValorNF DECIMAL(14,2) = 49420.43,		--> Valor da NF (mercadoria) do CTRC
			 @Tipo VARCHAR(10) = 'Saída',		--> Se o cálculo vai partir da Quantidade de 'Saída' ou da Quantidade de 'Chegada' (normal é 'Saída')
			 @Retorno VARCHAR(15) = 'ValorQuebra' 	--> 'Quebra' = retorna a quant  idade da quebra; 'ValorQuebra' = retorna o valor
     
--(dbo.CalculoQuebra(890000031454, 49710, 49710, 49420.43, 'Saída', 'ValorQuebra') > 0)


	--INICIAR VARIÁVEIS:
	SET @Tolerancia = 0.25
	SET @TipoTolerancia = 'Diferença'
	SET @QuantCalculo = CASE WHEN @Tipo = 'Chegada' THEN @QuantChegada ELSE @QuantSaida END
	IF @QuantCalculo = 0 SET @QuantCalculo = 1

    IF (@QuantChegada <> 0 And @QuantSaida <> 0) BEGIN
        
		SET @Diferenca = (@QuantSaida - @QuantChegada)
        
		IF @Diferenca > 0 BEGIN
        
		select  'entrou 0'	SELECT @Tolerancia		= ISNULL(comp.ToleranciaQuebra, 0.25)
				 , @TipoTolerancia	= ISNULL(comp.TipoToleranciaQuebra, 'Diferença') 
				 --, @cocamar			= CASE WHEN cli.RazaoSocial LIKE 'COCAMAR%' THEN 1 ELSE 0 END
				 --, @tarifa			= ctrc.TarifaFreteEmpresa
			FROM ConhecimentosTransporte ctrc 
			JOIN ComplementoConhecimento comp ON comp.NumSeqConhecto = ctrc.Sequencial
			--JOIN Clientes_Complemento clicomp ON clicomp.CodCliente = ctrc.CodClientePagto
			--JOIN Clientes cli ON cli.CodCliente = clicomp.CodClienteMatriz
			WHERE ctrc.Sequencial = @Sequencial
            
			SET @Tolerancia = (@QuantCalculo * (@Tolerancia / 100))
            
			If @Diferenca > @Tolerancia BEGIN
                IF @TipoTolerancia = 'Total' BEGIN
					 select  'entrou 1'      SET @Quebra = @Diferenca
                END
                IF @TipoTolerancia = 'Diferença' BEGIN
                   select  'entrou 2' SET @Quebra = (@Diferenca - @Tolerancia)
                END
                 select  'entrou 3' SET @ValorQuebra = round(((@Quebra * @ValorNF) / @QuantCalculo),2)

				-- IF @cocamar = 1 BEGIN
				-- 	SET @ValorQuebra = (@Quebra * (@ValorNF/@QuantSaida)) + (@Diferenca * (@tarifa/1000))
				-- END

            END
            IF @Diferenca <= @Tolerancia BEGIN
				select  'entrou 4'SET @Quebra = 0
				SET @ValorQuebra = 0
            END
        END
        IF @Diferenca <= 0 BEGIN
		select  'entrou 5'	SET @Quebra = 0
			SET @ValorQuebra = 0
        END
    END
	
    IF (@QuantChegada = 0 OR @QuantSaida = 0) BEGIN
		select  'entrou 6'SET @Quebra = 0
		SET @ValorQuebra = 0
    END

    IF @Retorno = 'Quebra' BEGIN
        select  'entrou 7'SET @CalculoQuebra = @Quebra
    END
    IF @Retorno = 'ValorQuebra' BEGIN
		select  'entrou 8' SET @CalculoQuebra = @ValorQuebra
    END

	 SELECT @CalculoQuebra 


select QuantidadeSaida,QuantidadeChegada, * from ConhecimentosTransporte where Sequencial = 890000031454 -- 49710.000
--UPDATE  ConhecimentosTransporte SET QuantidadeSaida = 49710, QuantidadeChegada = 47170 where Sequencial = 890000031454