use RODOMAIOR

select CodUsuarioCriacao,* from ConhecimentosTransporte where NumConhecto = 75165 and CodUF = 'GO'

select * from ConhecimentosRelFretes_Cheques where SeqConhecto = 50000020754
--delete ConhecimentosRelFretes_Cheques where SeqConhecto = 50000020754

--Sequencial	SeqCheque	CodFilial	CodContaBancaria	NumeroCheque	CodRelacaoFrete	SeqConhecto	CodTipoPagamento	ValorCheque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--50000018371	50000009952	CG	47	195183	5005047	50000020754	2	747.80	10316	ANP	2022-09-05 13:54:13.000						NULL		NULL				NULL
--680000020697	680000013760	CG	47	208510	68001997	50000020754	2	3200.00	10316	URU	2022-09-05 13:52:49.000				NULL		NULL				NULL


select * from RelacaoFretes where CodRelacaoFrete = 5005047 --2
--UPDATE RelacaoFretes SET CodSituacao = 1 WHERE CodRelacaoFrete = 5005047


SELECT * FROM ChequesEmitidos WHERE NumeroCheque IN (195183,208510)
--UPDATE ChequesEmitidos SET SituacaoCheque = 'A Emitir' where Sequencial in (50000009952,680000013760)

select * from OrdemEmbarque where NumOrdemEmbarque = 1003668	
--UPDATE OrdemEmbarque set Situacao =1 where NumOrdemEmbarque = 1003668	

--select * from RODOMAIOR_GSe.dbo.NFe where 

exec Grava_CTe