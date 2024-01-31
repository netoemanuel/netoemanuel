--EMBARQUES POR REGIONAL E TIPO DE PROPRIET�RIO - JOS� RICARDO

declare @ini datetime = '2022-01-01 00:00:00',
		@fim datetime = '2022-12-31 23:59:29'

select regiao.Titulo AS 'Regional'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then 1 else 0 end else 0 end),'N0','pt-br') AS 'Qtde Embarques - Aut�nomos - Motorista = Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then 0 else 1 end else 0 end),'N0','pt-br') AS 'Qtde Aut�nomos - Motorista <> Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'Jur�dica' then 1 else 0 end),'N0','pt-br') AS 'Qtde Embarques - PJ'
	, format(SUM(1),'N0','pt-br') AS 'Qtde. Total Embarques'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then ctrc.ValorTotalFrete else 0 end else 0 end),'N2','pt-br') AS 'Frete Empresa - Aut�nomos - Motorista = Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then 0 else ctrc.ValorTotalFrete end else 0 end),'N2','pt-br') AS 'Frete Empresa - Aut�nomos - Motorista <> Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'Jur�dica' then ctrc.ValorTotalFrete else 0 end),'N2','pt-br') AS 'Frete Empresa - PJ'
	, format(SUM(ctrc.ValorTotalFrete),'N2','pt-br') AS 'Total Frete Empresa'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then ctrc.TotalFreteMotorista else 0 end else 0 end),'N2','pt-br') AS 'Frete Motorista - Aut�nomos - Motorista = Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'F�sica' then case when prop.CNPJ_CPF = mot.CPF then 0 else ctrc.TotalFreteMotorista end else 0 end),'N2','pt-br') AS 'Frete Motorista - Aut�nomos - Motorista <> Propriet�rio'
	, format(SUM(case when prop.ClassifFiscal = 'Jur�dica' then ctrc.TotalFreteMotorista else 0 end),'N2','pt-br') AS 'Frete Motorista - PJ'
	, format(SUM(ctrc.TotalFreteMotorista),'N2','pt-br') AS 'Total Frete Motorista'
from ConhecimentosTransporte ctrc
join PedidosFrete ped on ped.CodPedidoFrete = ctrc.CodPedidoFrete
join FiliaisParamDespRecFilial filreg on filreg.CodFilial = ped.CodFilialComissao
join ParamDespRecFilial regiao on regiao.NumCol = filreg.NumCol
join Fornecedores prop on prop.CodFornecedor = ctrc.CodFornecedor
join Motoristas mot on mot.CodMotorista = ctrc.CodMotorista
where ctrc.DataEmissao between @ini and @fim
	and ctrc.SituacaoConhecto in ('Emitido','Faturado')
	and ctrc.TipoConhecimento = 'Normal'
group by regiao.Titulo 