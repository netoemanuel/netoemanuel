use LONTANO



SELECT CodRota, TipoDispositivoValePedagio, ResponsavelValePedagio,* FROM ConhecimentosTransporte WHERE (Sequencial = 60000029880) -- 5
--UPDATE ConhecimentosTransporte set ResponsavelValePedagio = 0  WHERE (Sequencial = 60000029880)

exec VerificaCTe 60000029880


select * from Fornecedores where Nome like '%Thiago%B%'

select * from ContasPagar where CodFornecedor = 1001293 order by DataCriacao desc


SELECT * FROM ConhecimentosTransporte where NumConhecto = 611872 and CodUF = 'GO'

select NumeroCartao,* from OrdemEmbarque_LOG where NumOrdemEmbarque = 28180570


exec VerificaCTe 310000096222