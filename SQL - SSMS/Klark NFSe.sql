--select * from LONTANO_GSe.dbo.TabelaErrosCTe

select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 2214 and CodUF = 'PR'
--update ConhecimentosTransporte set SerieConhecto = 'NE' where Sequencial = 530000146777
--delete from ConhecimentosTransporte where Sequencial = 640000051007
select  SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 2220 and CodUF = 'PR'
--update ConhecimentosTransporte set SerieConhecto = 'NE' where Sequencial = 530000146780
--delete from ConhecimentosTransporte where Sequencial = 640000051008
select SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto = 2221 and CodUF = 'PR'
--update ConhecimentosTransporte set SerieConhecto = 'NE' where Sequencial = 530000146781
--delete from ConhecimentosTransporte where Sequencial = 640000051009


select * from ConhecimentosTransporte where CodUF = 'PR' and NumConhecto in (2214, 2220, 2221)

--se essas duas SQL retornassem o mesmo valor ai sim seriam a mesma numeração
select top(1) NumConhecto from ConhecimentosTransporte where CodUF = 'PR' and SerieConhecto = 'U'  order by NumConhecto desc
select top(1) NumConhecto from ConhecimentosTransporte where CodUF = 'PR' and SerieConhecto = 'NE' order by NumConhecto desc


exec VerificaNFe 640000051009
	