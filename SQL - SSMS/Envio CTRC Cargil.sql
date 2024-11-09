--1º COISA VERIFICAR SE O SERVIÇO ESTA FUNCIONANDO NO SERVIDOR

--2º coisa a fazer testar todos os usuarios e senhas cadastrados, no site abaixo para ver se estão logando
--select * from CTRC_Cargill_Parametros
--https://www.portalfrete.br.cargill.com/portal/transportador/cargillfm

--3º verificar via projeto(CTRC_Cargill) se não teve nenhuma alteração no site, mudança de nome de campo etc.

--CONSULTA DA TRIGGER DE MONITORAMENTO 
SELECT ISNULL(Situacao,'TOTAL') as Situação, count(*) AS QTD FROM CTRC_Cargill WHERE Situacao IN ('Erro','Pendente') GROUP BY Situacao WITH ROLLUP 

--LTN
--Situação		QTD
--Erro			254
--Pendente		378
--TOTAL			632

--LISTAR OS PENDENTES 
select * from CTRC_Cargill WHERE Situacao IN ('Pendente') order by DataEmissao desc

--LISTAR OS PENDENTES VIA PROCEDURE
--exec ListarCTRC_Cargill 

--CONSULTAR PARAMETROS DOS SITES CARGILL
--select * from CTRC_Cargill_Parametros 

--CONSULTAR CASOS QUE DERAM ERRO
--select top(1000) DataCriacao, erro, * from CTRC_Cargill_Ocorrencia where DataCriacao >= '2024-09-17 00:00:00.000' order by ID desc 
--CONSULTAR CASOS QUE DERAM CERTO(melhorar essa SQL, não sei fato o que verificar ou onde verificar)
--select * from CTRC_Cargill WHERE Situacao not IN ('Erro','Pendente') and DataCriacao >= '2024-09-15 00:00:00.000' order by DataEmissao desc

--17/02/2020
--Pendentes 615 08:00

--20/02/2020
--Pendentes 174 08:40

declare @dias integer
SELECT Sequencial, CodUF+'-'+CAST(NumConhecto AS VARCHAR(12)) AS UF_CTRC, Clientes.RazaoSocial as Cliente, CONVERT(VARCHAR,DataEmissao,3) AS DataEmissao, CAST((LEFT(CONVERT(CHAR, GETDATE(), 20),11)+' 00:00:00'-DataEmissao) AS INTEGER) AS DiasAtraso, ValorTotalFrete, SituacaoConhecto
	FROM ConhecimentosTransporte
	INNER JOIN Clientes ON Clientes.CodCliente = ConhecimentosTransporte.CodClientePagto
	WHERE DataEmissao between '2025-01-01 00:00:00' AND LEFT(CONVERT(CHAR, GETDATE()-(@dias+1), 20),11)+' 23:59:29'
	AND SituacaoConhecto = 'Emitido' AND ISNULL(IndFaturaComplemento, 'S') = 'S' AND ISNULL(ValorTotalFrete,0) > 0 AND ISNULL(TipoConhecimento,'') <> 'Complemento'
	ORDER BY Clientes.RazaoSocial, ConhecimentosTransporte.DataEmissao

----Alteradas as senhas 09/24 conforme contat com Joilson.
--update CTRC_Cargill_Parametros set Senha = 'RDM@fat0301', Login = 'faturamento@rodomaior.com.br' where UF in ('GO') 
--update CTRC_Cargill_Parametros set Senha = 'RDM@fat0301', Login = 'faturamento@rodomaior.com.br' where UF in ('MG') 
--update CTRC_Cargill_Parametros set Senha = 'RDM@fat0301', Login = 'faturamento@rodomaior.com.br' where UF in ('MS')
--retornado ao que estava
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2021', Login = 'uberlandia@rodomaior.com.br' where UF in ('GO') 
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2021', Login = 'uberlandia@rodomaior.com.br' where UF in ('MG') 
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2019', Login = 'campogrande@rodomaior.com.br' where UF in ('MS') 

--UF	Filial	Senha	Situacao	BloqueiaErro	Login
--GO	37765284	Rdm@2021	A	S	uberlandia@rodomaior.com.br
--MG	37740187	Rdm@2021	A	S	uberlandia@rodomaior.com.br
--MS	37605190	Rdm@2019	A	S	campogrande@rodomaior.com.br
--MT	37605191	Rdm@fat0301	A	S	faturamento@rodomaior.com.br
--PA	37855884	Rdm@fat0301	A	S	faturamento@rodomaior.com.br
--PR	37663482	Rdm@fat0301	A	S	faturamento@rodomaior.com.br
--SP	37692070	Rdm@fat0301	A	S	faturamento@rodomaior.com.br

--Alteradas as senhas 09/06/22 conforme contat com Saulo.
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2021', Login = 'uberlandia@rodomaior.com.br' where UF in ('GO','MG') 
--update CTRC_Cargill_Parametros set Senha = 'Rdm@2019', Login = ' campogrande@rodomaior.com.br' where UF in ('MS') 

--UF	Filial	Senha	Situacao	BloqueiaErro	Login
--GO	37765284	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--MG	37740187	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--MS	37605190	RDM@fat0300	A	S	faturamento@rodomaior.com.br
--PR	37663482	RDM@fat0300	A	S	faturamento@rodomaior.com.br