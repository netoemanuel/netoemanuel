use RODOMAIOR

select * from Temp_BaixasMultiplas
--delete from Temp_BaixasMultiplas where Situacao = 'Agendada PAG-FOR'


exec MASTER.dbo.ProcuraObjetos 'Rodomaior', 'Saulo', 'Tudo'

exec MASTER.dbo.ProcuraObjetos 'Rodomaior_GSe', 'Saulo', 'Tudo'


SELECT DataCaixa,* FROM MovimentosCaixa WHERE (CodMovCaixa = 1600019634)

select * from Caixas where CodCaixa = 1862 and CodFilial = 'CG'

SELECT Saldo,* from ContasPagar where CodContasPagar = 16006112
--update ContasPagar set saldo = 0.00 where CodContasPagar = 16006112

select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 16006113
select * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 16006113
SELECT * FROM MovimentacaoBancaria WHERE (CodMovBancaria = 16019635) 
SELECT * FROM MovimentacaoBancaria_log WHERE (CodMovBancaria = 16019635) and AcaoLog = 'I'
--insert into MovimentacaoBancaria (CodMovBancaria,CodFilial,CodContaBancaria,DataMovimento,DataCaixa,CodTipoMovBancaria,NumDocumento,ValorMovimento,CodMoeda,DebitoCredito,Historico,DataPrevista,DataLancamento,DataConciliacao,CodRecDesp,SituacaoCredito,Gerado,Estornado,CodMovBanc,CodTipoAplicacao,CodClienteDepPend,CodUsuarioCriacao,CodFilialCriacao,DataCriacao,CodContrato,CodEmpresaParam,IndEnvioSPED,IndConciliacao) VALUES
--(16019635,'CG',86,'2023-04-11 00:00:00','2023-04-11 00:00:00',5,85187017,67.80,1,'D','Pagto. CTRC SP-178257','2023-04-11 00:00:00',NULL,NULL,78,'Baixado','S','N',NULL,NULL,NULL,12380,'RP','2023-04-11 00:00:00',NULL,2,NULL,NULL)


select CodCentroCusto,* from FiliaisAgencias_log where CodFilial = 'BAr' 
select CodCentroCusto,* from FiliaisAgencias where CodFilial = 'BAr'  --1
--UPDATE  FiliaisAgencias set CodCentroCusto = NULL where CodFilial = 'BAr'

select * from CentroCusto where CodFilial = 'BAR'