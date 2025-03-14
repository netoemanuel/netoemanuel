declare @filial			VARCHAR(3) = 'CG',														--> filial logada
		@usuario		INT = 10005,															--> usuário logado
		@dataini		SMALLDATETIME = '2022-12-30',													--> data inicial do período da tela
		@datafim		SMALLDATETIME = '2023-01-31 23:59:29',													--> data final do período da tela
		@tipoFolha		VARCHAR(30) = 'Adto. Diárias',
		@tipoCAP		VARCHAR(30) = 'Folha de Pagamento',
		@situacaoCAP	VARCHAR(30) = 'Selecionada PAG-FOR',
		@tipoDocto		VARCHAR(30) = 'Folha de Pagamento',
		@dataEmissao	SMALLDATETIME = '2022-12-30',
		@dataVencto		SMALLDATETIME = '2023-01-05',
		@indicador		CHAR(1) = 'C',
		@competencia	VARCHAR(7) = '12/2022',
		@tipoDespesa	INT = 627,
		@filPagto		VARCHAR(3) = 'CG',
		@historico		VARCHAR(60) = 'dddddddd',
		@histcontabil	VARCHAR(60) = 'dddddd',
		@tipoCobranca	VARCHAR(20) = 'Bancária',
		@observacoes	VARCHAR(512) = ''

BEGIN

	SET NOCOUNT ON;

	DECLARE @codtipocontaspagar INT, @codtipodocumento INT, @codtipocobranca INT, @codCAP NUMERIC(8,0), @competencia2 SMALLDATETIME, @empresa VARCHAR(30) = DB_NAME(),
			@filialremessa VARCHAR(3), @contaremessa INT, @contacargobank INT, @emp_parametro INT, @codMovto NUMERIC(10,0), @errordesc AS VARCHAR(MAX), @i INT = 1,
			@despmovcx INT, @inimes SMALLDATETIME, @fimmes SMALLDATETIME

	IF @tipoFolha = 'Rescisão' SET @tipoDocto = 'Rescisão'

	SELECT @codtipocontaspagar = Codigo FROM ComboBox_Financeiro WHERE NomeComboBox = 'cboTipoContasPagar' AND Descricao = @tipoCAP
	SELECT @codtipodocumento = Codigo FROM ComboBox_Financeiro WHERE NomeComboBox = 'cboTipoDocumento' AND Descricao = @tipoDocto
	SELECT @codtipocobranca = Codigo FROM ComboBox_Financeiro WHERE NomeComboBox = 'cboTipoCobranca' AND Descricao = @tipoCobranca
	SELECT @competencia2 = CONVERT(SMALLDATETIME,RIGHT(@competencia,4)+'-'+LEFT(@competencia,2)+'-01')

	SELECT @filialremessa = CASE @empresa WHEN 'COPAS' THEN 'COP' WHEN 'AGROGRANDE' THEN 'AGD' WHEN 'LONTANO' THEN 'CG' ELSE '' END
		 , @contaremessa = CASE @empresa WHEN 'COPAS' THEN 1 WHEN 'AGROGRANDE' THEN 1 WHEN 'LONTANO' THEN 10 ELSE 0 END
		 , @contacargobank = CASE @empresa WHEN 'LONTANO' THEN 66 ELSE 0 END
		 , @emp_parametro = CASE @empresa WHEN 'LONTANO' THEN 3 ELSE 1 END
		 , @despmovcx = CASE @tipoFolha WHEN 'Folha'				THEN 179
										WHEN 'Férias'				THEN 30
										WHEN 'Rescisão'				THEN 31
										WHEN '13º'					THEN 6 
										WHEN 'Premiação Cargobank'	THEN 652
										WHEN 'Dissídio'				THEN 179
						ELSE @tipoDespesa END
		 , @inimes = CONVERT(smalldatetime,(RIGHT(@competencia,4)+'-'+LEFT(@competencia,2)+'-01'))
		 , @fimmes = dbo.DiaFinal(@inimes)

	--PARA DEBUG
	--SELECT @filialremessa , @contaremessa , @contacargobank , @emp_parametro 
	--	, @codCAP, @codMovto, @tipoFolha, @codtipocobranca, @codtipocontaspagar, @codtipodocumento

	SELECT folha.*,
		ROW_NUMBER() OVER (ORDER BY folha.Contrato) AS ID
		--, (ROW_NUMBER() OVER (ORDER BY folha.Contrato) + @codCAP) AS 'CodContasPagar'
		, forn.CodFornecedor AS 'CodFornecedor', @dataVencto AS 'DataVencimento', @codtipodocumento AS 'CodTipoDocumento'
		, CASE @tipoFolha 
			WHEN 'Adiantamento'			THEN 'V Quin ' + @competencia 
			WHEN 'Folha'				THEN @competencia + ' Salario'
			WHEN 'Férias'				THEN @competencia + ' Férias'
			WHEN 'Rescisão'				THEN LEFT(@competencia,3)+RIGHT(@competencia,2) + ' Rescisao'
			WHEN '13º'					THEN (CASE WHEN (folha.TIPOFOLHA LIKE '%Antecipação') THEN '1 Parc 13-' ELSE '2 Parc 13-' END + RIGHT(@competencia,4)) 
			WHEN 'Premiação Cargobank'	THEN 'Cargobank'
			ELSE LEFT((@competencia + ' ' + folha.TIPOFOLHA),15) END AS 'NumDocumento'
		, LEFT(@competencia,2) AS 'NumeroParcela', @indicador AS 'Indicador', @dataEmissao AS 'DataEmissao', folha.VALOR AS 'ValorPagar'
		, CASE WHEN ISNULL(forn.CodBancoAgencia,'') NOT IN ('237','399') THEN 'Previsão' ELSE @situacaoCAP END AS 'SituacaoCAP', @tipoDespesa AS 'CodTipoDespesa'
		, CASE WHEN @historico = '' THEN 
			CASE @tipoFolha 
				WHEN 'Adiantamento'			THEN @competencia + ' - Vale Quinzenal'
				WHEN 'Folha'				THEN @competencia + ' - Salario'
				WHEN 'Férias'				THEN @competencia + ' - Férias'
				WHEN 'Rescisão'				THEN LEFT(@competencia,3)+RIGHT(@competencia,2) + ' Rescisao'
				WHEN '13º'					THEN LEFT(@competencia,3)+RIGHT(@competencia,2) + '-' + CASE WHEN (folha.TIPOFOLHA LIKE '%Antecipação') THEN '1a Parcela 13o' ELSE '2a Parcela 13o' END
				WHEN 'Premiação Cargobank'	THEN LEFT(@competencia,3)+RIGHT(@competencia,2) + ' Premiação Campanha Cargobank'
				ELSE LEFT((@competencia + ' ' + folha.TIPOFOLHA),15) 
			END 
			ELSE @historico 
			END AS 'Historico'
		, @observacoes AS 'Observacoes', func.CodFilial AS 'CodFilialOrigem', @filPagto AS 'CodFilialPagto', 'N' AS 'DiferencaPagto'
		, @codtipocobranca AS 'CodTipoCobranca', @codtipocontaspagar AS 'CodTipoContasPagar', 'N' AS 'IndRetencao', 'N' AS 'Baixado'
		, @dataEmissao AS 'DataChegadaDocumento', 'N' AS 'IndicadorRequisicao', 'N' AS 'IndicadorOS', 'N' AS 'IndicadorDespPneus'
		, @competencia AS 'MesAnoCompetencia', @competencia2 AS 'MesAnoCompetencia2', 'N' AS 'ChecagemIndicador', 'S' AS 'PosicaoFinanceira'
		, 'N' AS 'Dispensa2aVia', @usuario AS 'CodUsuarioCriacao', @filial AS 'CodFilialCriacao', GETDATE() AS 'DataCriacao'
		, 'N' AS IndDescontoNF, @emp_parametro AS 'CodEmpresaParam'
		, CASE WHEN @histcontabil = '' 
			THEN LEFT((@tipoFolha + ' - ' + @competencia),60)
			ELSE LEFT((@histcontabil + ' ' + func.NomeColaborador),60) 
			END AS 'HistoricoContabil'
		, CASE WHEN ISNULL(forn.CodBancoAgencia,'') NOT IN ('237','399') THEN NULL ELSE @filialremessa END AS 'CodFilialRemessa'
		, CASE WHEN ISNULL(forn.CodBancoAgencia,'') = '' THEN NULL 
			ELSE CASE WHEN (ISNULL(forn.IndContaCargobank,'') = 'S') THEN @contacargobank ELSE CASE WHEN ISNULL(forn.CodBancoAgencia,'') IN ('237','399') THEN @contaremessa ELSE NULL END END END AS 'CodContaRemessa'
			--ELSE CASE WHEN (ISNULL(forn.IndContaCargobank,'') = 'S' AND ISNULL(forn.ContaDigitalCargobank,0) > 0) THEN @contacargobank ELSE CASE WHEN ISNULL(forn.CodBancoAgencia,'') IN ('237','399') THEN @contaremessa ELSE NULL END END END AS 'CodContaRemessa'

		, ISNULL(func.CodFilialCCusto,func.CodFilial) AS 'CodFilialCCusto', ISNULL(func.CodCentroCusto,1) AS 'CodCentroCusto', 100 AS 'Percentual'

		--, (ROW_NUMBER() OVER (ORDER BY folha.Contrato) + @codMovto) AS 'CodMovCaixa'
		, cx.CodFilial AS 'CodFilialCaixa', cx.CodCaixa AS 'CodCaixa', 1 AS 'CodTipoMovimento', SalarioMensal.VALOR AS 'ValorMovimentoCaixa', 1 AS 'CodMoeda'
		, 'P' AS 'TipoDocumento', 'D' AS 'DebitoCredito', 'Normal' AS 'SituacaoMovimento', 'N' AS 'Gerado', 'N' AS 'Estornado', 'N' AS 'LanctoContabil'
		, 'Empresa' AS 'IndicadorMovimento', 'N' AS 'IndAdtoPedagio'

		, cap.CodContasPagar AS 'CAP_Existente', mov.CodMovCaixa AS 'MOVCX_Existente', cx.CodTipoCaixa

	--INTO #Temp_GeracaoFinanceiroFolha
	FROM RHLONTANO.dbo.vw_gs folha
	JOIN colaboradores func ON func.CPF = dbo.CNPJ_CPF_Masc(folha.CPF) AND func.SituacaoColaborador = 'A'
	JOIN Fornecedores forn ON forn.CodColaborador = func.CodColaborador AND forn.CodTipoFornecedor = 9 AND forn.SituacaoFornecedor = 'A'
	LEFT JOIN (SELECT CPF, SUM(ISNULL(VALOR,0)) AS VALOR 
			FROM RHLONTANO.dbo.VW_GS Salario 
			WHERE Salario.DATAFOLHA BETWEEN @inimes AND @datafim 
			AND Salario.DESCUNIDADE LIKE (@empresa+'%') 
			AND ISNULL(Salario.VALOR,0) > 0 
			AND Salario.TIPOFOLHA = CASE @tipoFolha 
								WHEN 'Férias'				THEN 'Férias'
								WHEN 'Rescisão'				THEN 'Rescisão Principal'
								WHEN 'Premiação Cargobank'	THEN 'Avulsa'
								WHEN 'Dissídio'				THEN 'Suplementar'
								ELSE Salario.TIPOFOLHA 
							END
			AND Salario.VDB = CASE @tipoFolha WHEN '13º' THEN 99995 ELSE VDB END
			--AND ((@tipoFolha <> 'Folha' AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção') OR (@tipoFolha = 'Folha' AND Salario.VDB IN (99994,99991,61030,61020) AND Salario.TIPOFOLHA <> 'Rescisão Principal'))
			AND ( (@tipoFolha <> 'Folha' AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção' AND @tipoFolha <> 'Rescisão') 
			   OR (@tipoFolha = 'Folha' AND Salario.VDB IN (99994,99991,61030,61020))
			   OR (@tipoFolha = 'Dissídio' AND Salario.VDB = 99996)
			   OR (@tipoFolha = 'Premiação Cargobank' AND Salario.VDB = 2503)
			   OR (@tipoFolha = 'Rescisão' AND Salario.VDB = 99999) )
			GROUP BY Salario.CPF) SalarioMensal ON dbo.CNPJ_CPF_Masc(SalarioMensal.CPF) = func.CPF
	JOIN Caixas cx on cx.CodColaborador = func.CodColaborador AND cx.CodTipoCaixa IN (6,7,12) AND cx.SituacaoCaixa = 'A'
	LEFT JOIN ContasPagar cap ON cap.CodFornecedor = forn.CodFornecedor AND cap.CodTipoContasPagar = @codtipocontaspagar AND cap.MesAnoCompetencia = @competencia AND cap.ValorPagar = folha.VALOR
	LEFT JOIN MovimentosCaixa mov ON mov.CodFilial = cx.CodFilial AND mov.CodCaixa = cx.CodCaixa AND mov.CodTipoMovCaixa = 1 AND mov.MesAnoCompetencia = @competencia 
		AND mov.ValorMovimento = ISNULL(SalarioMensal.VALOR,0) AND mov.CodMovCaixa = (SELECT MAX(ultmov.CodMovCaixa) FROM MovimentosCaixa ultmov WHERE ultmov.CodFilial = cx.CodFilial and ultmov.CodCaixa = cx.CodCaixa and ultmov.CodTipoMovCaixa = 1 and ultmov.MesAnoCompetencia = @competencia and ultmov.ValorMovimento = ISNULL(SalarioMensal.VALOR,0))
	WHERE folha.DATAFOLHA BETWEEN @dataini AND @datafim
		AND folha.DESCUNIDADE LIKE (@empresa+'%')
		AND ISNULL(folha.VALOR,0) > 0
		AND folha.TIPOFOLHA = CASE @tipoFolha 
							WHEN 'Folha'				THEN 'Mensal'
							WHEN 'Adiantamento'			THEN 'Adiantamento Semanal/Quinzenal'
							WHEN 'Adto. Diárias'		THEN 'Mensal'
							WHEN 'Adto. Manutenção'		THEN 'Mensal'
							WHEN 'Férias'				THEN 'Férias'
							WHEN 'Rescisão'				THEN 'Rescisão Principal'
							WHEN 'Premiação Cargobank'	THEN 'Avulsa'
							WHEN 'Dissídio'				THEN 'Suplementar'
							ELSE folha.TIPOFOLHA 
						END
		AND folha.DESCVDB = CASE @tipoFolha 
							WHEN 'Folha'				THEN 'Líquido da Folha'
							WHEN 'Adto. Diárias'		THEN 'Adto Diarias Viagem'
							WHEN 'Adto. Manutenção'		THEN 'Adto Manutencao Caminhao'
							WHEN 'Premiação Cargobank'	THEN 'Premiacao Campanha Cargobank'
							WHEN 'Dissídio'				THEN 'Líquido da Folha Suplementar'
							ELSE folha.DESCVDB 
						END
		AND folha.VDB = CASE @tipoFolha WHEN '13º' THEN 99995 ELSE VDB END
		AND (cap.CodContasPagar IS NULL OR mov.CodMovCaixa IS NULL)
/*
	WHILE @i <= (SELECT MAX(ID) FROM #Temp_GeracaoFinanceiroFolha)
	BEGIN
		
		BEGIN TRY
			
			BEGIN TRAN

				SELECT @codCAP = MAX(cap.CodContasPagar)+1
				FROM ContasPagar cap
				JOIN FiliaisAgencias fil ON fil.CodFilial = @filial
				WHERE cap.CodContasPagar < ((fil.CodControleFilial * 1000000)+999999)

				SELECT @codMovto = MAX(mcx.CodMovCaixa)+1
				FROM MovimentosCaixa mcx
				JOIN FiliaisAgencias fil ON fil.CodFilial = @filial
				WHERE mcx.CodMovCaixa < ((fil.CodControleFilial * 100000000)+99999999)

				INSERT INTO ContasPagar (CodContasPagar, CodFornecedor, DataVencimento, CodTipoDocumento, NumDocumento, NumeroParcela, IndDocumento, DataEmissao, ValorDocumento, ValorPagar, Saldo, CodMoeda, 
											Situacao, CodTipoDespesa, Historico, Observacao, CodFilialOrigem, CodFilialPagto, DiferencaPagto, CodTipoCobranca, CodTipoContasPagar, IndRetencao, Baixado, 
											DataChegadaDocumento, IndicadorRequisicao, IndicadorOS, IndicadorDespPneus, MesAnoCompetencia, MesAnoCompetencia2, ChecagemIndicador, PosicaoFinanceira,
											Dispensa2aVia, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, IndDescontoNF, CodEmpresaParam, HistoricoContabil, CodFilialRemessa, CodContaRemessa)
				SELECT @codCAP, CodFornecedor, DataVencimento, CodTipoDocumento, NumDocumento, NumeroParcela, Indicador, DataEmissao, ValorPagar, ValorPagar, ValorPagar, CodMoeda, 
					SituacaoCAP, CodTipoDespesa, Historico, Observacoes, CodFilialOrigem, CodFilialPagto, DiferencaPagto, CodTipoCobranca, CodTipoContasPagar, IndRetencao, Baixado, 
					DataChegadaDocumento, IndicadorRequisicao, IndicadorOS, IndicadorDespPneus, MesAnoCompetencia, MesAnoCompetencia2, ChecagemIndicador, PosicaoFinanceira,
					Dispensa2aVia, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, IndDescontoNF, CodEmpresaParam, HistoricoContabil, CodFilialRemessa, CodContaRemessa
				FROM #Temp_GeracaoFinanceiroFolha
				WHERE ID = @i 
					AND CAP_Existente IS NULL
					AND ValorPagar > 0

				INSERT INTO RateioContasPagar
				SELECT @codCAP, CodFilialCCusto, CodCentroCusto, Percentual, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, null, null, null 
				FROM #Temp_GeracaoFinanceiroFolha
				WHERE ID = @i 
					AND CAP_Existente IS NULL
					AND ValorPagar > 0

				INSERT INTO MovimentosCaixa (CodMovCaixa, CodFilial, CodCaixa, DataMovimento, DataCaixa, CodTipoMovCaixa, ValorMovimento, CodMoeda, NumDocumento, 
												DataDocumento, TipoDocumento, MesAnoCompetencia, Historico, DebitoCredito, CodRecDesp, SituacaoMovimento, Gerado, Estornado, 
												LanctoContabil, DataChegadaDocumento, IndicadorMovimento, ChecagemIndicador, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, 
												MesAnoRecAdicionais, CodEmpresaParam, IndAdtoPedagio)
				SELECT @codMovto, CodFilialCaixa, CodCaixa, CASE WHEN @tipoFolha = 'Folha' THEN DATEADD(DAY,-1,DATEADD(MINUTE,1,@fimmes)) ELSE DataEmissao END, DataEmissao, CodTipoMovimento, ValorMovimentoCaixa, CodMoeda, NumDocumento, 
					CASE WHEN @tipoFolha = 'Folha' THEN DATEADD(DAY,-1,DATEADD(MINUTE,1,@fimmes)) ELSE DataEmissao END, TipoDocumento, MesAnoCompetencia, Historico, DebitoCredito, @despmovcx, SituacaoMovimento, Gerado, Estornado, LanctoContabil, 
					DataChegadaDocumento, IndicadorMovimento, ChecagemIndicador, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, 
					MesAnoCompetencia2, CodEmpresaParam, IndAdtoPedagio
				FROM #Temp_GeracaoFinanceiroFolha tmp
				WHERE ID = @i 
					AND MOVCX_Existente IS NULL 
					AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção'
					AND ((@tipoFolha = 'Folha' AND tmp.CodTipoCaixa <> 7) OR (@tipoFolha IN ('Férias','Rescisão','13º','Premiação Cargobank','Dissídio')))
					AND tmp.ValorMovimentoCaixa > 0

				UPDATE Caixas 
					SET SaldoCaixa = (SaldoCaixa - tmp.ValorMovimentoCaixa),
						BloqueadoRescisao = CASE WHEN @codtipodocumento = 19 THEN 'S' ELSE NULL END,
						CodUsuarioAlteracao = CASE WHEN @codtipodocumento = 19 THEN tmp.CodUsuarioCriacao ELSE NULL END,
						CodFilialAlteracao = CASE WHEN @codtipodocumento = 19 THEN tmp.CodFilialCriacao ELSE NULL END,
						DataAlteracao = CASE WHEN @codtipodocumento = 19 THEN tmp.DataCriacao ELSE NULL END
				FROM Caixas CX
				JOIN #Temp_GeracaoFinanceiroFolha tmp ON tmp.CodFilialCaixa = CX.CodFilial AND tmp.CodCaixa = CX.CodCaixa
				WHERE tmp.ID = @i 
					AND MOVCX_Existente IS NULL 
					AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção'
					AND ((@tipoFolha = 'Folha' AND tmp.CodTipoCaixa <> 7) OR (@tipoFolha IN ('Férias','Rescisão','13º','Premiação Cargobank','Dissídio')))
					AND tmp.ValorMovimentoCaixa > 0

				INSERT INTO RateioDespesas
				SELECT @codMovto, CodFilialCCusto, CodCentroCusto, Percentual, CodUsuarioCriacao, CodFilialCriacao, DataCriacao, null, null, null 
				FROM #Temp_GeracaoFinanceiroFolha tmp
				WHERE ID = @i 
					AND MOVCX_Existente IS NULL 
					AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção'
					AND ((@tipoFolha = 'Folha' AND tmp.CodTipoCaixa <> 7) OR (@tipoFolha IN ('Férias','Rescisão','13º','Premiação Cargobank','Dissídio')))
					AND tmp.ValorMovimentoCaixa > 0

				INSERT INTO RecDespMovCaixa (CodMovCaixa, CodRecDesp, ValorRecDesp, CodUsuarioCriacao, CodFilialCriacao, DataCriacao)
				SELECT @codMovto, @despmovcx, ValorMovimentoCaixa, CodUsuarioCriacao, CodFilialCriacao, DataCriacao
				FROM #Temp_GeracaoFinanceiroFolha tmp
				WHERE ID = @i 
					AND MOVCX_Existente IS NULL 
					AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção'
					AND ((@tipoFolha = 'Folha' AND tmp.CodTipoCaixa <> 7) OR (@tipoFolha IN ('Férias','Rescisão','13º','Premiação Cargobank','Dissídio')))
					AND tmp.ValorMovimentoCaixa > 0

				INSERT INTO ReceitasDespesas_Rateio (CodMovCaixa, CodFilial, CodCentroCusto, CodRecDesp, ValorRateio, CodUsuarioCriacao, CodFilialCriacao, DataCriacao)
				SELECT @codMovto, CodFilialCCusto, CodCentroCusto, @despmovcx, ValorMovimentoCaixa, CodUsuarioCriacao, CodFilialCriacao, DataCriacao
				FROM #Temp_GeracaoFinanceiroFolha tmp
				WHERE ID = @i 
					AND MOVCX_Existente IS NULL 
					AND @tipoFolha <> 'Adiantamento' AND @tipoFolha <> 'Adto. Diárias' AND @tipoFolha <> 'Adto. Manutenção'
					AND ((@tipoFolha = 'Folha' AND tmp.CodTipoCaixa <> 7) OR (@tipoFolha IN ('Férias','Rescisão','13º','Premiação Cargobank','Dissídio')))
					AND tmp.ValorMovimentoCaixa > 0

				SET @i = @i + 1
			
			COMMIT TRAN
		
		END TRY
		
		BEGIN CATCH --TRAN_ABORT
			SET @errordesc = ' Erro: ' + CONVERT(VARCHAR(MAX),ERROR_NUMBER()) + '-' + CONVERT(VARCHAR(MAX),ERROR_MESSAGE())
			RAISERROR(@errordesc, 16, 1)
			IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
		END CATCH

	END
*/

END
