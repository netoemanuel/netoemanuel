use LONTANO


select SUM(RL.ValorPago) from LONTANO_GSe.dbo.cte CTe
--inner join RODOMAIOR_GSe.dbo.cte CTe on CTe.Sequencial = CT.Sequencial
inner join ConhecimentosRelacaoFretes RL on RL.NumSeqConhecto = CTe.Sequencial

where CTe.Status <> 1 and RL.CodTipoPagamento is not NULL order by CTe.DataCriacao desc