select * from RODOMAIOR_GSe.dbo.nfe where id = '51240314796754001003550100000514461216920648'

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 40000038441
--delete from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 40000038441
--UPDATE RODOMAIOR_GSe.dbo.cte set Status = Status where Sequencial =  40000038441

select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where Situacao = 'Pendente' order by DataCriacao desc
select  top (50)* from RODOMAIOR_GSe.dbo.AverbacaoFrete where Tipo = 'MDFe' order by DataCriacao desc

select top (200)* from RODOMAIOR_GSe.dbo.tblLog_operacao order by DT_Hs desc
--exec RODOMAIOR_GSe.dbo.GeraMDFeViagem_ESP 53006432,12451, 'CG'

exec MonitoraMDFe 53006432
				 SELECT COUNT(*) 
					FROM MDFeViagem_OrdemEmbarque MVOE
					JOIN ConhecimentosTransporte CTRC ON CTRC.CodOrdemEmbarque = MVOE.NumOrdemEmbarque AND CTRC.SituacaoConhecto <> 'Cancelado' AND CTRC.TipoConhecimento <> 'Substituto'
					JOIN RODOMAIOR_GSe.dbo.CTe CTe ON CTe.Sequencial = CTRC.Sequencial AND CTe.Status = 1 --AND CTe.tpCTe = 0
					LEFT JOIN RODOMAIOR_GSe.dbo.AverbacaoFrete Averb ON Averb.SequencialCTe = CTe.Sequencial AND Averb.StatusCTe = 'Autorizado'
					WHERE MVOE.SeqViagem = 643146
						AND ISNULL(Averb.Situacao,'') <> 'Enviado'
			select * from MDFeViagem_OrdemEmbarque where SeqViagem = 643135

				SELECT Ver.NumOrdemEmbarque, 12451, 'CG', GETDATE(), 53006432
				FROM RODOMAIOR.dbo.OrdemEmbarque oe
				inner JOIN RODOMAIOR.dbo.ConhecimentosTransporte CTRCVer ON CTRCVer.CodOrdemMDFE = oe.NumOrdemEmbarque AND CTRCVer.SituacaoConhecto <> 'Cancelado'
				inner JOIN RODOMAIOR.dbo.OrdemEmbarque Ver ON Ver.NumOrdemEmbarque = CTRCVer.CodOrdemEmbarque AND Ver.Situacao <> 5 
				WHERE oe.NumOrdemEmbarque = 53006432 
					AND RODOMAIOR.dbo.TemMDFe_ESP(oe.NumOrdemEmbarque) = 0 
					AND RODOMAIOR.dbo.TemMDFe_ESP(Ver.NumOrdemEmbarque) = 0

exec MonitoraMDFe 4040159
--UPDATE RODOMAIOR_GSe.dbo.mdfe set Status = 0 where Sequencial = 578991


exec MonitoraMDFe 20011297


--ATM É UMA EMPRESA QUE FAZ A INTEGRAÇÃO COM AS SEGURADOES
--Motivo do erro
--Problema no Site ATM
--https://averba.com.br/
