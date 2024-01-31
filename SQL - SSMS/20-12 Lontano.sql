use lontano

SELECT Situacao, CodUsuarioAlteracao, DataAlteracao,* FROM CTRC_Cargill WHERE (Sequencial = 20000150537)

SELECT Situacao, DataCriacao FROM CTRC_Cargill WHERE (Sequencial = 20000150537)
SELECT REPLACE(CONVERT(VARCHAR(MAX), Erro), 'xErro:   ','') AS Erro FROM CTRC_Cargill_Ocorrencia WHERE (Sequencial = 20000150537) ORDER BY DataCriacao DESC
--E9999-(02)  Nivel 0 - Erro na leitura do cadastro da transportadora na Rotina VALIDA_CTE_DESPESA  Passo: 02. Erro: ORA-01422: exact fetch returns * Situacao no SEFAZ -

select top (50)* from CTRC_Cargill_Ocorrencia order by datacriacao desc
exec MASTER.dbo.ProcuraObjetos 'Lontano', 'VALIDA_CTE_DESPESA', 'Tudo'

select * from LONTANO_GSe.dbo.tblThreads 


select * from Clientes where CodCliente in (1004536,8000268)


select * from ContasPagar_log where CodContasPagar =1890289 order by DataLog desc

select * from ContasPagar where CodContasPagar =1890303 
SELECT SUM(RequisicaoProdutos.ValorTotalMov) AS Total FROM ContasPagar_RequisicaoProdutos 
INNER JOIN RequisicaoProdutos ON ContasPagar_RequisicaoProdutos.CodRequisicao = RequisicaoProdutos.CodRequisicao 
WHERE (ContasPagar_RequisicaoProdutos.CodContasPagar = 1890303)

EXEC dbo.pr_listarConhecimentosGeracaoPdfCte


select CodFornecedor,* from ConhecimentosTransporte where NumConhecto = 698597  and CodUF = 'MT'
--update ConhecimentosTransporte set CodFornecedor = 63000560 where Sequencial = 380000008508

select CodFornecedor, * from OrdemEmbarque where NumOrdemEmbarque = 4030403 -- 28004429
--UPDATE OrdemEmbarque set CodFornecedor = 63000560 where NumOrdemEmbarque = 4030403


select top (30) * from LONTANO_GSe.dbo.NFSe order by DataCriacao desc