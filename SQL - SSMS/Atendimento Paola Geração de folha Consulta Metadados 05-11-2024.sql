
--View RHLONTANO [VW_GS]
--Procedure gera [GeraCAPsFolhaPagamentoMetadados]


SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' AND DESCVDB LIKE 'Adto%' and DESCUNIDADE = 'Lontano Transportes Eireli' AND VDB = 61020

SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' and VALOR = 800.00

SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' AND DESCVDB LIKE 'Adto%' and DESCUNIDADE = 'Lontano Transportes Eireli' AND VDB = 61030

--Roberta ou Fernanda.
--n�o tem o que fazer. 
--esse dados s�o os que estamos pegando dos dados da
--METADADOS.
--precisa verificar se foi feito alguma altera��o para esses casos de RO, se foram feitos de um jeito diferente l� no sistema de RH, se o c�digo VBD est� correto(61020) 
--ou se foi criado algum novo c�digo VDB para os casos de RO.
--o principal � que esses casos que est�o retornando s�o referente aos dados que constam no METADADOS que temos acesso.