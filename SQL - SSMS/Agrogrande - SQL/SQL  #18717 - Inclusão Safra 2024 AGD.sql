use AGROGRANDE

--insert into AGROGRANDE.dbo.DescontoAnaliseProdutos
-- Mudar: CodProduto para o novo desse ano; DataReferencia = 1º de Janeiro do ano atual; DataCriacao = GETDATE()
select ID_Descricao, 167, '2024-01-01', PercInicial, PercFinal, PercDesconto, CodUsuarioCriacao, CodFilialCriacao, GETDATE(), null, null, null 
from AGROGRANDE.dbo.DescontoAnaliseProdutos where CodProduto = 108 --> Produto Ano Anterior