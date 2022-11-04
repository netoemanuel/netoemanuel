
-- Verificando NFSes Parados no Sistema pegos no Monitoramento GS.

--Heinz Brasil Sa e Mosaic Fertilizantes P e K S.a

select * from Clientes where RazaoSocial like 'Heinz Brasil Sa%'

select * from Clientes_Log where CodCliente in (23000104, 62000115) order by datalog desc

select * from Clientes where RazaoSocial like 'Mosaic Fertilizantes P e K S.a%'

select * from Clientes_Log where CodCliente in (1002378, 1008743, 1008746, 1012258, 2000461, 6000033, 6000115, 41000378, 53001442, 79000192) order by datalog desc

USE LONTANO

-- #2124 - Dificuldade na geração de NFes

-- SQL referente aos Tickets #2124 e #2126 
-- Onde a NFSe não foi gerada mas esta voltando no monitoramento
-- foi verificado no site de rio verde se ouve alguma substituta ou uma nova com as mesma informações e não foi o caso
-- verificando o campo 'XML_Ultimo_Log' na SQL 'Problemas de autorização NFSe GO-MT'
-- volta o seguinte erro no XML 'Código do serviço (ItemListaServico) não esta preenchido ou não é um valor válido. Verifique!'
-- necessário verificar o XML de envio e ver o campo <ItemListaServico> se esta correto
-- primeira opção mais logica é o chamado junto a prefeitura local por parte da empresa para verificar o erro
-- ou pode 'Excluir' a NFSe no GS pulando a Critica, somente se a mesma nao tiver sido gerada.
-- https://aprendo.ao3tech.com/ajudaonline/artigo.aspx?artigo=15262 site onde encontramos o erro do XML

SELECT * from Lontano_gse.dbo.NFSe_Ocorrencia O WHERE O.IDNFSe = 86788

SELECT * FROM ConhecimentosTransporte where NumConhecto = 99000095 AND CodUF = 'GO'


-- Tarde 17/06





