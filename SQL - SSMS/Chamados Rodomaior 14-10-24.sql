use RODOMAIOR


SELECT * from RODOMAIOR_GSe.dbo.DoctoSubcontratacao_CTe where chave  = '42240917890394000101570030000006861090910250'

select TarifaFreteEmpresa,ValorTotalFrete,* from ConhecimentosTransporte where NumConhecto IN (1701) and CodUF = 'PR' and SerieConhecto = 'NE'  -- 15.4166	493.33
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 15.0000, ValorTotalFrete = 480  where NumConhecto IN (1701) and CodUF = 'PR' and SerieConhecto = 'NE'


select TOP (50)* from RODOMAIOR_GSe.dbo.AverbacaoFrete order BY DataCriacao desc


select * from ConhecimentosTransporte where Sequencial  in(950000005750,880000002976,950000005750)

SELECT * FROM  ConhecimentosRelacaoFretes_log WHERE NumSeqConhecto = 530000005508 and CodTipoPagamento = 1


select  DataCriacao,*  from ConhecimentosTransporte where NumConhecto IN (197962,198034,197987,197988) and CodUF = 'MS'-- MT-52378, MT-52391, MT-52549,
select  DataCriacao,*  from ConhecimentosTransporte where NumConhecto IN (52378,52391,52549) and CodUF = 'MT'


blk

kill 227