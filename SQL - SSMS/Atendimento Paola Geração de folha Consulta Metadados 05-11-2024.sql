
--View RHLONTANO [VW_GS]
--Procedure gera [GeraCAPsFolhaPagamentoMetadados]


SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' AND DESCVDB LIKE 'Adto%' and DESCUNIDADE = 'Lontano Transportes Eireli' AND VDB = 61020

SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' and VALOR = 800.00

SELECT * from VW_GS where DATAFOLHA BETWEEN '10/31/2024 00:00:00' AND '11/05/2024 23:59:29' AND DESCVDB LIKE 'Adto%' and DESCUNIDADE = 'Lontano Transportes Eireli' AND VDB = 61030

--Roberta ou Fernanda.
--não tem o que fazer. 
--esse dados são os que estamos pegando dos dados da
--METADADOS.
--precisa verificar se foi feito alguma alteração para esses casos de RO, se foram feitos de um jeito diferente lá no sistema de RH, se o código VBD está correto(61020) 
--ou se foi criado algum novo código VDB para os casos de RO.
--o principal é que esses casos que estão retornando são referente aos dados que constam no METADADOS que temos acesso.