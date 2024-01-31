declare @ini datetime = '2023-05-01 00:00:00',
		@fim datetime = '2023-05-28 23:59:29'
select regiao.Titulo AS 'Regional'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then 1 else 0 end else 0 end),'N0','pt-br') AS 'Qtde Embarques - Autônomos - Motorista = Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then 0 else 1 end else 0 end),'N0','pt-br') AS 'Qtde Autônomos - Motorista <> Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Jurídica' then 1 else 0 end),'N0','pt-br') AS 'Qtde Embarques - PJ'
	, format(SUM(1),'N0','pt-br') AS 'Qtde. Total Embarques'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then ctrc.ValorTotalFrete else 0 end else 0 end),'N2','pt-br') AS 'Frete Empresa - Autônomos - Motorista = Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then 0 else ctrc.ValorTotalFrete end else 0 end),'N2','pt-br') AS 'Frete Empresa - Autônomos - Motorista <> Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Jurídica' then ctrc.ValorTotalFrete else 0 end),'N2','pt-br') AS 'Frete Empresa - PJ'
	, format(SUM(ctrc.ValorTotalFrete),'N2','pt-br') AS 'Total Frete Empresa'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then ctrc.TotalFreteMotorista else 0 end else 0 end),'N2','pt-br') AS 'Frete Motorista - Autônomos - Motorista = Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Física' then case when prop.CNPJ_CPF = mot.CPF then 0 else ctrc.TotalFreteMotorista end else 0 end),'N2','pt-br') AS 'Frete Motorista - Autônomos - Motorista <> Proprietário'
	, format(SUM(case when prop.ClassifFiscal = 'Jurídica' then ctrc.TotalFreteMotorista else 0 end),'N2','pt-br') AS 'Frete Motorista - PJ'
	, format(SUM(ctrc.TotalFreteMotorista),'N2','pt-br') AS 'Total Frete Motorista'
from ConhecimentosTransporte ctrc
join PedidosFrete ped on ped.CodPedidoFrete = ctrc.CodPedidoFrete
join FiliaisParamDespRecFilial filreg on filreg.CodFilial = ped.CodFilialComissao
join ParamDespRecFilial regiao on regiao.NumCol = filreg.NumCol
join Fornecedores prop on prop.CodFornecedor = ctrc.CodFornecedor
join Motoristas mot on mot.CodMotorista = ctrc.CodMotorista
where ctrc.DataEmissao between @ini and @fim
	and ctrc.SituacaoConhecto in ('Emitido','Faturado')
	--and ctrc.TipoConhecimento = 'Normal'
group by regiao.Titulo 
