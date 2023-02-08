select * from NotaEntrada  where CodNotaEntrada in (1009998,1009998)

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida FROM MovimentoEstoque WHERE (Situacao = 'Normal')
AND (CodFilial = 'CG')
AND (CodDeposito = 13)
AND (CodProduto = 6793) 
AND (DataMovimento >= '01/01/2022 00:00:00' AND DataMovimento <= '01/17/2023 23:59:29') 
ORDER BY DataMovimento, EntradaSaida

--696841
--696841

select * from MovimentoEstoque where Sequencial in (696841,696840)
--delete from MovimentoEstoque where CodMovEstoque = 100244765

--CodMovEstoque	CodFilial	CodDeposito	CodProduto	DataMovimento	CodTipoMovEstoque	NumDoc	QtdeMovimento	ValorMovimento	ValorMovtoInd	EntradaSaida	Situacao	TipoMovimento	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--100244765			CG			13			6793	2022-08-22 00:00:00		9			1009998		150.000			3113.08			NULL		Entrada	Normal		C			696841			13215	CG	2022-09-12 16:15:02.000	NULL	NULL	NULL