--Klark (#11569):
--Considerar o per�odo da emiss�o da fatura (01/01/2010 a 31/12/2022).
--Informar em uma coluna, as faturas que est�o com a op��o "cart�rio" marcada.
SELECT ctrc.numconhecto 'N� CTRC'
	 , ctrc.ModeloDocumento 'TIPO DOC CTRC'
	 , cr.numdocumento 'N� FATURA'
	 , DescricaoRota 'ROTA'
	 , ctrc.dataemissao 'DATA EMISS�O DO CTRC'
	 , cr.dataemissao 'DATA EMISS�O DA FATURA'
	 , cr.datavencimento 'DATA VENCIMENTO DA FATURA'
	 , FORMAT(ccr.valorfaturado, 'N2', 'pt-br') 'VALOR CTRC'
	 , FORMAT(ccr.Saldo, 'N2', 'pt-br') 'SALDO CTRC'
	 , FORMAT(cr.ValorReceber, 'N2', 'pt-br') 'TOTAL FATURA'
	 , FORMAT(cr.Saldo, 'N2', 'pt-br') 'SALDO FATURA'
	 --, cr.IndicadorCartorio 'CART�RIO'
	 , cli.razaosocial 'NOME DO TOMADOR'
	 , cli.cnpj_cpf 'CNPJ DO TOMADOR'
	 , prod.descnaturezacarga 'PRODUTO'
	 , FORMAT(ctrc.quantidadesaida, 'N2', 'pt-br') 'PESO DE SA�DA'
	 , FORMAT(ctrc.tarifafreteempresa, 'N2', 'pt-br') 'TARIFA EMPRESA'
FROM ContasReceber cr  --- do Jeito que esta a SQL pega somente os faturados - caso precise de todos incluindo os n�o faturados precisa partidir do conhecimento com left  ConhecimentosContasReceber_Saldo / ContasReceber
JOIN ConhecimentosContasReceber_Saldo ccr ON ccr.CodContasReceber = cr.CodContasReceber
JOIN conhecimentostransporte ctrc ON ctrc.sequencial = ccr.numseqconhecto
JOIN Clientes cli ON cli.codcliente = cr.codcliente
JOIN naturezacarga prod ON prod.codnaturezacarga = ctrc.codnaturezacarga
JOIN Rotas ON rotas.CodRota = ctrc.CodRota
WHERE 
		ctrc.CodClientePagto = 98000213
	--cr.DataEmissao between '2023-01-01' and '2023-12-31'
	--and cr.situacao = 'Confirmada'
ORDER BY cr.DataEmissao, cr.CodContasReceber



select * from RelacaoFretes where CodRelacaoFrete = 22006535  --3000.00   /  74648.43  //77648.43
--UPDATE RelacaoFretes set TotalRelacao = 74648.43 where CodRelacaoFrete = 22006535 
