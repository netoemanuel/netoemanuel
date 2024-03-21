
--> #16188 - FERNANDA

--Caixas de Funcionários Ativos com Movimentos de Caixa de Rescisão
;with recisoes AS
(
	select mov.CodFilial, mov.CodCaixa, MAX(mov.DataMovimento) AS DataMovimento, SUM(mov.ValorMovimento) as valor
	from MovimentosCaixa mov
	LEFT JOIN RecDespMovCaixa desp on desp.CodMovCaixa = mov.CodMovCaixa and desp.CodRecDesp = 31
	where isnull(mov.CodRecDesp,0) = 31 or desp.CodMovCaixa is not null
	group by mov.CodFilial, mov.CodCaixa
)
select convert(varchar(8),mov.DataMovimento,3) 'Último Movto', 
	format(mov.Valor,'N2','pt-br') AS Valor, 
	f.NomeColaborador Colaborador, cx.CodFilial Fil_Cx, cx.CodCaixa Caixa, cx.DescCaixa Desc_Caixa, 
	CASE WHEN cx.DataAlteracao IS NULL THEN '' ELSE convert(varchar(8),cx.DataAlteracao,3) END Alt_Cx, 
    format(cx.SaldoCaixa,'N2','pt-br') AS 'Saldo Caixa'
from Caixas cx 
JOIN Colaboradores f on f.CodColaborador = cx.CodColaborador
JOIN recisoes mov on mov.CodFilial = cx.CodFilial and mov.CodCaixa = cx.CodCaixa
where cx.CodTipoCaixa IN (6,7,12) and cx.SituacaoCaixa = 'A'
order by cx.CodFilial, cx.CodCaixa, mov.DataMovimento

--Caixas de Funcionários Ativos com CAP de Rescisão
select cap.CodContasPagar 'CAP', convert(varchar(8),cap.DataEmissao,3) 'Emissão', 
	format(cap.ValorPagar,'N2','pt-br') AS Valor, 
	cap.Situacao Situação, f.RazaoSocial Colaborador, cx.CodFilial Fil, cx.CodCaixa Caixa, cx.DescCaixa 'Descrição Caixa', 
	CASE WHEN cx.DataAlteracao IS NULL THEN '' ELSE convert(varchar(8),cx.DataAlteracao,3) END 'Alt. Caixa',
    format(cx.SaldoCaixa,'N2','pt-br') AS 'Saldo Caixa'
from ContasPagar cap
JOIN Fornecedores f on f.CodFornecedor = cap.CodFornecedor
JOIN Caixas cx on cx.CodColaborador = f.CodColaborador
where CodTipoDocumento = 19 and cx.SituacaoCaixa = 'A'
order by cap.DataEmissao
