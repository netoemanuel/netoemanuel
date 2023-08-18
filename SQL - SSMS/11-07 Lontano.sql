use LONTANO

select * from Veiculos where PlacaVeiculo = 'AZB-2624'
select * from ConjuntosVeiculo where CodVeiculo = 460125

select * from ConjuntosVeiculo where CodVeiculo = 318962


select EixosSemParar, * from OrdemEmbarque where EixosSemParar = 10 order by DataCriacao desc

select * from ConhecimentosTransporte where NumConhecto = 586139 and CodUF = 'GO'

exec VerificaCTe 240000053822

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 240000053822