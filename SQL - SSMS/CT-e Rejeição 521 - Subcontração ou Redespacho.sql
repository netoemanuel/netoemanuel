--Rejeição 521: Os documentos de transporte anterior devem ser informados para os tipos de serviço Subcontratação, Redespacho e Redespacho Intermediário

--Como resolver?
--Para resolver o exemplo, basta informar o Grupo de Documentos Anteriores (campo: docAnt).
--É importante se atentar que o campo docAnt é um grupo de informações composto por vários subcampos.

--Exemplo: Estará faltando os dados nessa tabela:
--Provavelmente não terá o cadastro do cliente no GS! Sim, é com cliente!!! e nao é o mesmo do cliente pagamento do pedido.
select * from LONTANO_GSe.dbo.DoctoSubcontratacao_CTe where sequencial in (890000030775, 890000030779)

-- o CNPJ que verificar o cadastro é informado no CT-e de origem atraves dessa SQL pega no GRAVA CT-e 
SELECT SUBSTRING(Complemento_CTe.xObs, PATINDEX('%CHAVE DE ACESSO %',CONVERT(VARCHAR(8000), Complemento_CTe.xObs))+16,44)
FROM LONTANO_GSe.dbo.Complemento_CTe Complemento_CTe WHERE Complemento_CTe.Sequencial in (890000030775, 890000030779)


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



