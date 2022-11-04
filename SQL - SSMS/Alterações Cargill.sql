use RODOMAIOR

select * from CTRC_Cargill_Parametros
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2021', Login = 'uberlandia@lontano.com.br' where UF in ('GO','MG') 
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2019', Login = ' campogrande@lontano.com.br' where UF in ('MS'

SELECT ISNULL(Situacao,'TOTAL') as Situação, count(*) AS QTD FROM CTRC_Cargill WHERE Situacao IN ('Erro','Pendente') GROUP BY Situacao WITH ROLLUP

select * from CTRC_Cargill_Parametros
update CTRC_Cargill_Parametros set Senha = 'Rdm@2021', Login = 'uberlandia@rodomaior.com.br' where UF in ('GO','MG') 
update CTRC_Cargill_Parametros set Senha = 'Rdm@fat0301', Login = 'faturamento@rodomaior.com.br' where UF in ('PR') 

--UF	Filial	Senha	Situacao	BloqueiaErro	Login
--GO	37765284	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--MG	37740187	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--MS	37605190	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--PR	37663482	RDM@fat0300	A	S	faturamento@rodomaior.com.br

--29/06

--UF	Filial	Senha	Situacao	BloqueiaErro	Login
--GO	37765284	Rdm@2021	A	S	uberlandia@rodomaior.com.br
--MG	37740187	Rdm@2021	A	S	uberlandia@rodomaior.com.br
--MS	37605190	Rdm@2019	A	S	campogrande@rodomaior.com.br
--PR	37663482	RDM@fat0300	A	S	faturamento@rodomaior.com.br

