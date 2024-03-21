--Rejei��o 521: Os documentos de transporte anterior devem ser informados para os tipos de servi�o Subcontrata��o, Redespacho e Redespacho Intermedi�rio

--Como resolver?
--Para resolver o exemplo, basta informar o Grupo de Documentos Anteriores (campo: docAnt).
--� importante se atentar que o campo docAnt � um grupo de informa��es composto por v�rios subcampos.

--Exemplo: Estar� faltando os dados nessa tabela:
--Provavelmente n�o ter� o cadastro do cliente no GS! Sim, � com cliente!!! e nao � o mesmo do cliente pagamento do pedido.
select * from LONTANO_GSe.dbo.DoctoSubcontratacao_CTe where sequencial in (890000030775,�890000030779)

-- o CNPJ que verificar o cadastro � informado no CT-e de origem atraves dessa SQL pega no GRAVA CT-e 
SELECT SUBSTRING(Complemento_CTe.xObs, PATINDEX('%CHAVE DE ACESSO %',CONVERT(VARCHAR(8000), Complemento_CTe.xObs))+16,44)
FROM LONTANO_GSe.dbo.Complemento_CTe Complemento_CTe WHERE Complemento_CTe.Sequencial in (890000030775,�890000030779)


--Processo:

select TipoServico,* from ConhecimentosTransporte where NumConhecto = 0000 and CodUF = 'AA'
EXEC VerificaCTe 0000

select * from LONTANO_GSe.dbo.DoctoSubcontratacao_CTe where sequencial in (0000)

SELECT SUBSTRING(Complemento_CTe.xObs, PATINDEX('%CHAVE DE ACESSO %',CONVERT(VARCHAR(8000), Complemento_CTe.xObs))+16,44)
FROM LONTANO_GSe.dbo.Complemento_CTe Complemento_CTe WHERE Complemento_CTe.Sequencial in (0000)

--Apos Realizar o cadastro do cliente no GS, necessario regravar o conhecimento.

select * from LONTANO_GSe.dbo.cte where Sequencial = 0000
--delete from LONTANO_GSe.dbo.cte where Sequencial = 0000
exec Grava_CTe 0000



