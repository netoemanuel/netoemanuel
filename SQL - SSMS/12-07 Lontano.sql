use LONTANO

select * from ConhecimentosTransporte where NumConhecto in (574170, 574179) and CodUF = 'GO'
select * from OutrasDespesasCTRC where Sequencial in (310000090516,310000090521)
select * from ConhecimentosRelacaoFretes_log where Sequencial in (310000090516,310000090521)
select * from ComplementoConhecimento_log where NumSeqConhecto in (310000090516,310000090521)


select * from Usuarios where NomeUsuario like '%Bianca%'

select Situacao, * from ContasPagar where CodContasPagar = 1843325

--UPDATE ContasPagar set Situacao = 'Liquidada' where CodContasPagar = 1843325

