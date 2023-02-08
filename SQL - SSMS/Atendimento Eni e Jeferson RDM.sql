SELECT * FROM Veiculos WHERE CodVeiculo = 365780

SELECT SituacaoVeiculo, * FROM Veiculos_log WHERE CodVeiculo = 365780 ORDER BY DataLog DESC

SELECT * FROM RegistroAcessoProgramas  WHERE CodUsuario = 12479 AND DataAcesso BETWEEN '2022-11-17 17:58:48.000' AND '2022-11-17 18:45:50.000' ORDER BY DataAcesso desc -- Senha: AD1010

SELECT * FROM PermissoesAcesso_log  WHERE CodPrograma = 'AprovacaoCadastroVeiculo' AND CodUsuario = 12479

--'(22/01/2018 - Jhonny D)Só poderá alterar o "cboSituacaoVeiculo" se tiver acesso especial "AprovacaoCadastroVeiculo"
SELECT COUNT(*) AS Registros FROM PermissoesAcesso WHERE (CodUsuario = 12479) AND (CodPrograma = 'AprovacaoCadastroVeiculo') AND (TipoEspecial = 'S')

---------------------------------------

SELECT DISTINCT RespJurosMulta, * FROM  ContasPagar WHERE CodContasPagar = 1320062
SELECT  * FROM  ContasPagar_log WHERE CodContasPagar = 1320062
SELECT * FROM DespesasRateioContasPagar WHERE (CodContasPagar = 1320062) AND (CodFilial = 'CG') AND (CodCentroCusto = 1122) AND (CodTipoDespesa = 112)
SELECT  * FROM  ContasPagar WHERE RespJurosMulta = NULL
	--blk
--(@P1 numeric(8),@P2 varchar(2),@P3 numeric(4),@P4 numeric(4),@P5 numeric(14,2),@P6 numeric(6),@P7 varchar(2),@P8 datetime)INSERT INTO "RODOMAIOR".."DespesasRateioContasPagar" ("CodContasPagar","CodFilial","CodCentroCusto","CodTipoDespesa","ValorDespesaRateio","CodUsuarioCriacao","CodFilialCriacao","DataCriacao") VALUES (@P1,@P2,@P3,@P4,@P5,@P6,@P7,@P8)


SELECT ItensRequisicaoProdutos.CodProduto, ItensRequisicaoProdutos.QuantRequisitada, ItensRequisicaoProdutos.ValorApropriacao, CombustivelLubrificante.TipoCombustivel, RequisicaoProdutos.CodRequisicao, RequisicaoProdutos.CodFilial, RequisicaoProdutos.CodDeposito, RequisicaoProdutos.TipoRequisicao, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.NumDocumento, RequisicaoProdutos.KmVeiculo, RequisicaoProdutos.OdometroFinal, DepositosFilial.DescResumida, Veiculos.PlacaVeiculo, Veiculos.Propriedade, Veiculos.Propriedade_CTe
FROM ItensRequisicaoProdutos
INNER JOIN RequisicaoProdutos ON ItensRequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao 
LEFT OUTER JOIN CombustivelLubrificante ON ItensRequisicaoProdutos.CodProduto = CombustivelLubrificante.CodProduto 
LEFT OUTER JOIN DepositosFilial ON RequisicaoProdutos.CodFilial = DepositosFilial.CodFilial
AND RequisicaoProdutos.CodDeposito = DepositosFilial.CodDeposito 
LEFT OUTER JOIN Veiculos ON RequisicaoProdutos.CodVeiculo = Veiculos.CodVeiculo WHERE
 (RequisicaoProdutos.DataRequisicao 
 BETWEEN '08/01/2022 00:00:00' AND '08/31/2022 23:59:29') 
 AND (RequisicaoProdutos.CodFilial = 'CG') 
 AND (RequisicaoProdutos.CodDeposito = 47) 
 AND (RequisicaoProdutos.TipoRequisicao = 'Combustível/Lubrificante') 
 ORDER BY RequisicaoProdutos.CodFilial, RequisicaoProdutos.CodDeposito, RequisicaoProdutos.DataRequisicao, RequisicaoProdutos.OdometroFinal
