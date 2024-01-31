use RODOMAIOR


select Gerado,* from MovimentacaoBancaria where CodMovBancaria = 16019635 --  12380 / RP -- 2023-04-11 13:05:58.000    -- 12841 ; 2023-08-24 14:59:25.000 / CG
--UPDATE MovimentacaoBancaria set Gerado = 'N' where CodMovBancaria = 16019635

--SELECT * FROM MovimentosCaixa WHERE (CodMovimentoBancario = '16019635')
--SELECT CodMovCaixa,CodFilial,CodCaixa,DataMovimento,DataCaixa,CodTipoMovCaixa,ValorMovimento,CodMoeda,NumDocumento,DataDocumento,TipoDocumento,MesAnoCompetencia,Historico,DebitoCredito,CodRecDesp,SituacaoMovimento,Gerado,Estornado,CodMovimentoBancario,CodMovimentoCaixa,LanctoContabil,SeqLanctoContabil,CodRequisicao,CodDespesaPneu,CodOrdemServico,DataChegadaDocumento,IndicadorMovimento,MesAnoCompetencia2,ChecagemIndicador,
--12380,'RP','2023-04-11 13:05:58.000',12841,'CG','2023-08-24 14:59:25.000',HistoricoContabil,MesAnoRecAdicionais,CodTipoDocCaixa,CodEmpresaParam,IndEnvioSPED,IndAdtoPedagio FROM MovimentosCaixa_log WHERE (CodMovimentoBancario = '16019635') and AcaoLog = 'E'

--insert into MovimentosCaixa (CodMovCaixa, CodFilial, CodCaixa, DataMovimento, DataCaixa, CodTipoMovCaixa, ValorMovimento, CodMoeda, NumDocumento, DataDocumento, TipoDocumento, MesAnoCompetencia, Historico, DebitoCredito, CodRecDesp, SituacaoMovimento, Gerado, Estornado, CodMovimentoBancario, CodMovimentoCaixa, LanctoContabil, SeqLanctoContabil, CodRequisicao, CodDespesaPneu, CodOrdemServico, DataChegadaDocumento, IndicadorMovimento, MesAnoCompetencia2, ChecagemIndicador, CodUsuarioCriacao, CodFilialCriacao,DataCriacao, CodUsuarioAlteracao,CodFilialAlteracao, DataAlteracao, HistoricoContabil, MesAnoRecAdicionais, CodTipoDocCaixa, CodEmpresaParam, IndEnvioSPED, IndAdtoPedagio) values
--(1600019635,'CG', 1862, '2023-04-11 00:00:00', '2023-04-11 00:00:00', 4, 67.80, 1, 85187017, '2023-04-11 00:00:00', 'C', '04/2023', 'Pagto. CTRC SP-178257','D', 78, 'Normal', 'N', 'N', 16019635, NULL,'N', NULL, NULL, NULL, NULL, '2023-04-11 00:00:00.000', NULL, '2023-04-01 00:00:00', NULL, 12380, 'RP', '2023-04-11 13:05:58.000', 12841, 'CG', '2023-08-24 14:59:25.000', NULL, '2023-04-01 00:00:00', NULL, NULL, NULL, NULL)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT Observacoes,* FROM PedidosFrete WHERE CodPedidoFrete = 1009213
select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 48504 and CodUF = 'MT'
--UPDATE  ConhecimentosTransporte set ObsConhecto = 'Transporte efetuado pelo CT-e Nº 000035251 emitido pelo Consignatario. Chave de Acesso 31240101746608000203570010000352511202425010. PAGAMENTO DO SALDO DE FRETE SOMENTE MEDIANTE APRESENTAÇÃO DO TICKET DE DESCARGA     CPEND Nº 0047445961 Número de Autentica' where sequencial = 510000010223



exec MASTER.dbo.ProcuraObjetos 'Rodomaior', '§', 'Tudo'
select infAdFisco,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 510000010223

sELECT * FROM ObservacoesICMS WHERE CodObsICMS  = 130
--UPDATE ObservacoesICMS SET DescObsICMS = 'Serviço de transporte subcontratado conforme art 233 3º c/c at 293 RICMS MT' WHERE CodObsICMS  = 130  --Serviço de transporte subcontratado conforme art 233 §3º c/c at 293 RICMS MT

select XML_Enviado,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 510000010225
exec VerificaCTe 510000010225
--UPDATE RODOMAIOR_GSe.dbo.cte SET STATUS = 0 where Sequencial = 510000010225
--delete from RODOMAIOR_GSe.dbo.cte where Sequencial = 510000010225
--exec Grava_CTe 510000010225


select CodVeiculo, * from OrdemEmbarque where NumOrdemEmbarque = 4039058  -- 152667