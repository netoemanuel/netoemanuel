declare @filial VARCHAR(3) = 'JAT', @rota INT = 313423, @ret SMALLINT = 0  --0=FALSO / 1=VERDADEIRO
select --@ret = CASE WHEN cid.CodUF = ori.CodUF THEN 1 ELSE 0 END 
	cid.CodUF AS 'UF da Filial Logada', ori.CodUF AS 'UF de Origem da Rota'
from FiliaisAgencias fil
join Cidades cid on cid.CodCidade = fil.CodCidade
join Rotas on Rotas.CodRota = @rota
join Cidades ori on ori.CodCidade = Rotas.CodCidadeOrigem
where fil.CodFilial = @filial --> frmPrincipal.CodFilial
--SELECT (@ret) use rodomaior
