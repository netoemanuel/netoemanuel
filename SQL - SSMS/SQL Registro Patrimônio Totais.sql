select 

 P.Sequencial AS'C�digo'
 , P.NumPlaqIdentInicio AS 'Plaqueta'
 , P.NomeItem AS 'Desc. Resumida'
--, P.CodMarca AS 'COD Marca'
, MaP.NomeMarcaPatrimonio AS 'Marca'
--, P.CodModelo AS 'Modelo'
, MoP.NomeModeloPatrimonio AS 'Modelo'
, cp.DescClassificacao AS 'Classifica��o'
, DescItem AS 'Descri��o'
--, P.EstadoConservacao AS ' COD Converva��o'
, CAC.Descricao AS 'Converva��o'
,format(DataAquisicao,'dd/MM/yyyy','pt-br') AS 'Data Aquisi��o'
--, P.CodSetorFilial AS 'Local' 
, SF.DescSetorFilial AS 'Local ' 
,isnull( C.NomeColaborador, '') AS 'Respons�vel'
--, SituacaoPatrimonio 'COD Situa��o'
, CAS.Descricao AS 'Situa��o'
, isnull(NumDoctoCompra,'') AS 'N� Docto Compra'
, isnull(ValorAquisicao,0) AS  'Valor Aquisi��o'
, ValorMercado AS 'Valor Mercado'
from Patrimonio P
LEFT join ClassificacaoPatrimonio CP On p.SeqClassificacao = cp.Sequencial
LEFT join MarcasPatrimonio MaP On P.CodMarca = MaP.CodMarcaPatrimonio� -- Ate aqui ta certo.
LEFT join ModelosPatrimonio MoP on P.CodModelo = MoP.CodModeloPatrimonio and MoP.CodMarcaPatrimonio = P.CodMarca
inner join ComboBox_Apoio CAC on CAC.Codigo = P.EstadoConservacao and CAC.NomeComboBox = 'cboEstadoConservacao'
inner join ComboBox_Apoio CAS on CAS.Codigo = P.SituacaoPatrimonio and CAS.NomeComboBox = 'cboSituacaoPatrimonio'
inner join SetorFilial SF ON SF.CodSetorFilial = p.CodSetorFilial
LEFT join Colaboradores C on p.CodColaborador = c.CodColaborador


--select * from MarcasPatrimonio
--select * from ClassificacaoPatrimonio
--select * from ModelosPatrimonio
--select Sequencial  from Patrimonio
--select * from ComboBox_Apoio 
--select * from setorfilial


--SELECT Patrimonio.Sequencial, Patrimonio.NomeItem, Patrimonio.CodModelo, Patrimonio.CodMarca, Patrimonio.SeqClassificacao, Patrimonio.CodProduto, Patrimonio.NumPlaqIdentInicio, Patrimonio.NumPlaqIdentFim, Patrimonio.DataAquisicao, Patrimonio.CodSetorFilial, Patrimonio.CodColaborador, DescClassificacao, Descricao, 
--(CASE WHEN FotoPatrimonio IS NOT NULL THEN 'X' ELSE NULL END) AS Foto FROM Patrimonio
--INNER JOIN ClassificacaoPatrimonio on ClassificacaoPatrimonio.Sequencial = Patrimonio.SeqClassificacao 
--INNER JOIN MarcasPatrimonio ON MarcasPatrimonio.CodMarcaPatrimonio = Patrimonio.CodMarca 
--INNER JOIN ModelosPatrimonio ON ModelosPatrimonio.CodMarcaPatrimonio = Patrimonio.CodMarca AND ModelosPatrimonio.CodModeloPatrimonio = Patrimonio.CodModelo INNER JOIN ComboBox_Apoio on Codigo = SituacaoPatrimonio and NomeComboBox = 'cboSituacaoPatrimonio' WHERE NomeItem LIKE '%Cadeira%' ORDER BY Patrimonio.Sequencial