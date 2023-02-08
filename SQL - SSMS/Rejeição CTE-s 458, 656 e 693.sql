-->>>>>656,
--mudando para normal ele vai ficar com a rejeição 458
--UPDATE RODOMAIOR.dbo.ConhecimentosTransporte SET TipoConhecimento = 'Normal' where Sequencial = @Sequencial
--update RODOMAIOR_GSe.dbo.CTe tpCTe = 0 where Sequencial = @Sequencialdoquequerautoriza
-->>>>>458, 
--procurar nessa tabela ConhecimentosComplementados e excluir de lá
--select * from ConhecimentosComplementados where @Sequencialdoquequerautoriza in ( SeqConhecimentoComplementado, SeqConhecimentoComplementar)
--delete from ConhecimentosComplementados where @Sequencialdoquequerautoriza in ( SeqConhecimentoComplementado, SeqConhecimentoComplementar)
--deletar e gravar novamente
--delete RODOMAIOR_GSe.dbo.cte where sequencial = @Sequencialdoquequerautoriza
--exec Grava_CTe @Sequencialdoquequerautoriza

-->>>>>693 rejeição
--VERIFICAR SE ESTA NESSA TABELA CASO NÃO ESTEJA PROCEQGUIR COM OS PASSOS ABAIXO
select * from RODOMAIOR_GSe.dbo.NotaFiscalEletronica_CTe where Sequencial = @Sequencialdoquequerautoriza
--PEGAR O XML DE ENVIO E PEGAR A CHAVE DO CONHECIMENTO COMPLEMENTADO <infCteComp> <chCTe>
exec VerificaCTe @Sequencialdoquequerautoriza

--PROCURAR ESSE CTE PELA CHAVE PARA PEGAR O SEQUENCIAL
select * from RODOMAIOR_GSe.dbo.CTe where id = '41220611595217000370570000000605181000605187'

--COM O SEQUENCIAL PROCURAR SE ELE TEM OS DADOS NESSA TABELA SE TIVER SO INSERIR OS MESMO DADOS PARA O NOVO.
select * from RODOMAIOR_GSe.dbo.NotaFiscalEletronica_CTe where Sequencial = @SequencialdoQUEVAISERCOMPLEMENTADO

--insert into RODOMAIOR_GSe.dbo.NotaFiscalEletronica_CTe
--select @Sequencialdoquequerautoriza, chave, PIN, CodUsuarioCriacao, CodFilialCriacao, DataCriacao
--from RODOMAIOR_GSe.dbo.NotaFiscalEletronica_CTe 
--where Sequencial = @SequencialdoQUEVAISERCOMPLEMENTADO
exec VerificaCTe @SequencialdoQUEVAISERCOMPLEMENTADO

--######################################################################################################################