use RODOMAIOR





select * from RODOMAIOR_GSe.dbo.NFe where nNF = 98398


select * from ConhecimentosTransporte WHERE NumConhecto = 107963 and CodUF = 'GO'
--novo
select * from Veiculos where CodVeiculo = 126326
select * from ConjuntosVeiculo where CodVeiculo = 126326
-- antigo
select * from Veiculos where CodVeiculo = 126328
select * from Veiculos where PlacaVeiculo = 'MKI-4574'
select * from ConjuntosVeiculo where CodVeiculo = 144320

select IndEmissaoCiotPJ,* from Fornecedores where CodFornecedor = 1032376
--UPDATE Fornecedores set IndEmissaoCiotPJ = 'N' where CodFornecedor = 1032376

SELECT * FROM ConhecimentosTransporte CT 
INNER JOIN ComplementoConhecimento CC on CT.Sequencial = CC.NumSeqConhecto 
INNER JOIN Estadias E ON CT.NumConhecto = E.NumConhecto AND CT.CodUF = E.CodUF WHERE E.CodRelacaoFrete = 1094316


select DataEmissao  from Estadias where CodRelacaoFrete = 1094316

select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 1094316