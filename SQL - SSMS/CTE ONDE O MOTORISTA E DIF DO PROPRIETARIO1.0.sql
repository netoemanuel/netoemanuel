select 
	ct.DataEmissao, 
	ct.coduf,
	NumConhecto as CTe, 
	oe.CodFornecedor as 'Código Proprietário',
	f.RazaoSocial as Proprietário, 
	oe.CodMotorista as 'Código Motorista',
	m.NomeMotorista as Motorista
from 
	ConhecimentosTransporte ct
	inner join OrdemEmbarque oe on oe.NumOrdemEmbarque = ct.CodOrdemEmbarque
	inner join Fornecedores f on oe.CodFornecedor = f.CodFornecedor 
	inner join Motoristas m on oe.CodMotorista = m.CodMotorista
	JOIN LONTANO_GSe.dbo.CTe cte on cte.Sequencial = ct.Sequencial
	JOIN NotasFiscaisConhecimento nf ON nf.SequencialConhecimento = ct.Sequencial

where 
	f.RazaoSocial COLLATE Latin1_General_CI_AI <> m.NomeMotorista
	and oe.CodFornecedor <> '1000001' --LONTANO
	and serieconhecto = '0' 
	and ct.SituacaoConhecto <> 'Cancelado'
	and cte.Status = 1
	and ct.dataemissao between '2022-12-01 00:00:00' and '2022-12-31 23:59:30' 
	and f.ClassifFiscal = 'Física'
	
order by 
	ct.DataEmissao