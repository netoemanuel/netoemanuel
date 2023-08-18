--Atendimentos à usuário(a): Thiago Freitas referente a chamado aberto pelo Milvus Nº ticket #9884 com Assunto: " Erro CIOT CT-e 182694 e 182696".
--QUANDO O VALOR DA 3 CASA DESCIMAL ESTA DIFERENTE DE 0 ESTA DANDO REJEIÇÃO NA EFRETE NA HORA DE GERAR O CIOT
--FAZER O UPDATE NA TERCEIRA CASA DECIMAL PARA ZERO
select QuantidadeSaida, * from ConhecimentosTransporte where sequencial = 000000000000
--update ConhecimentosTransporte set QuantidadeSaida = 00000.000 where sequencial = 000000000000

select QuantidadeSaida, * from ConhecimentosTransporte where NumConhecto = 182694    and CodUF = 'PR'  --640000055261  / 25647.536
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 25647.536 where Sequencial = 640000055261
exec VerificaCTe 640000055261
select * from NotasFiscaisConhecimento where SequencialConhecimento =  640000055261