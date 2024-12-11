SELECT * from CaramuruControle where ID = '6001912126'
SELECT * from CaramuruControle order BY DataCriacao desc
select * from RODOMAIOR_GSe.dbo.NFe where ID = '52241200080671005330550010000656711159291688'

SELECT * from OrdemEmbarque where CodVeiculo = 211918 ORDER BY DataCriacao desc
EXEC AutorizacaoCaramuru 22004979
select CodControleCaramuru, * from PedidosFrete where CodPedidoFrete = 22004979 
select CodControleCaramuru, * from PedidosFrete where CodControleCaramuru = '6001912126'