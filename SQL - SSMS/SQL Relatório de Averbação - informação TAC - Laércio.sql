select ctrc.SerieConhecto 'Série'
	 , ctrc.CodUF 'UF'	
	 , ctrc.NumConhecto 'Número'
	 , format(ctrc.DataEmissao,'dd/MM/yyyy','pt-br') 'Emissão'
	 , CASE WHEN (prop.ClassifFiscal = 'Física' OR isnull(prop.IndAutonomo,'') = 'S') 
	 		THEN 'TAC' 
			ELSE CASE WHEN (prop.CNPJ_CPF = mot.CPF) THEN 'Equiparado' ELSE 'ETC' END 
		END AS 'Tipo Proprietário'
	 , FORMAT(ctrc.ValorNF,'N2','pt-br') 'Valor Mercadoria'
	 , ISnull(FORMAT(ctrc.SeguroAverbado,'N2','pt-br'), 0.00) 'Seguro Averbado'
from ConhecimentosTransporte ctrc
JOIN Fornecedores prop on ctrc.CodFornecedor = prop.CodFornecedor
JOIN Motoristas mot on mot.codmotorista = ctrc.CodMotorista
where ctrc.dataemissao between '2024-02-01' and '2024-02-29 23:59:29'
	AND ( (prop.ClassifFiscal = 'Física' OR isnull(prop.IndAutonomo,'') = 'S')  -- TAC
		 OR (prop.CNPJ_CPF <> mot.CPF)  										-- JURÍDICO NÃO EQUIPARADO 
		 )
	AND ctrc.TipoConhecimento  IN ('Substituto','Substituído')
	AND ctrc.SituacaoConhecto <> 'Cancelado'