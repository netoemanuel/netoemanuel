select * from RelacaoFretes where CodRelacaoFrete = 4006389 
--UPDATE RelacaoFretes set ValorDiferenca = 0.00, TotalRelacao = 63498.12 where CodRelacaoFrete = 4006389  --71498.12
select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 4006389
select * from RelacaoFretes_log where CodRelacaoFrete = 4006389 ORDER by DataLog desc
select * from ConhecimentosRelacaoFretes_log where CodRelacaoFrete = 4006389 ORDER by DataLog desc