use RODOMAIOR

exec MonitoraMDFe 7017668

--update RODOMAIOR_GSe.dbo.MDFe set Status =0 where Sequencial = 505839

exec MonitoraMDFe 7017640

select oe.CodVeiculo,* from OrdemEmbarque oe
inner join Veiculos v on oe.CodVeiculo = v.CodVeiculo
where v.PlacaVeiculo = 'MAG2G30'
order by oe.DataCriacao desc

select * from OrdemEmbarque_log where CodVeiculo = 60603 order by DataLog desc

select * from Veiculos where PlacaVeiculo = 'MAG2G30'

select * from RODOMAIOR_GSe.dbo.Percurso_MDFe where CodFilialCriacao = 'CHP' order by DataCriacao desc