select * from Veiculos where CodVeiculo = 502140
select * from ConjuntosVeiculo where CodVeiculo = 502140
select * from Veiculos where CodVeiculo = 497133
select * from ConjuntosVeiculo where CodVeiculo = 497133
--update ConjuntosVeiculo set CodVeiculoAdicional1 = 66605, CodVeiculoAdicional2 = 66612, CodVeiculoAdicional3 = NULL  where CodVeiculo = 497133



select * from ConhecimentosTransporte where NumConhecto =481453 and CodUF = 'MS'
exec VerificaCTe 250000074049 -- Autorizado.
select * from ConhecimentosTransporte where NumConhecto =179794 and CodUF = 'PR'
exec VerificaCTe 640000054209  -- Falha na comunicação com o WebService
select * from ConhecimentosTransporte where NumConhecto =380001 and CodUF = 'MG'
exec VerificaCTe 980000026685  -- 734 Rejeicao: As NF-e transportadas do CT-e substituto devem ser iguais as informadas no CT-e substituido
select * from ConhecimentosTransporte where NumConhecto =380000 and CodUF = 'MG' -- 217 Rejeicao: CT-e nao consta na base de dados da SEFAZ
exec VerificaCTe 980000026684  -- 734 Rejeicao: As NF-e transportadas do CT-e substituto devem ser iguais as informadas no CT-e substituido
select * from ConhecimentosTransporte where NumConhecto =581005 and CodUF = 'GO'
exec VerificaCTe 560000028803 -- Lote processado / ja aurtorizado na sefaz
--update LONTANO_GSe.dbo.CTe set Status = 0 where Sequencial = 560000028803
select * from ConhecimentosTransporte where NumConhecto =580991 and CodUF = 'GO'
exec VerificaCTe 730000131394 -- Rejeição: Vedado o cancelamento de CT-e do tipo substituto (tipo=3)
select * from ConhecimentosTransporte where NumConhecto = 480016 and CodUF = 'MS'
exec VerificaCTe 760000054006 --- 528 Rejeicao: Vedado cancelamento se existir MDF-e autorizado para o CT-e [chMDFe: 50230511455829000103580010002479941013367719]
select * from ConhecimentosTransporte where NumConhecto = 478877 and CodUF = 'MS'
exec VerificaCTe 970000039694 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido / CF
select * from ConhecimentosTransporte where NumConhecto = 478595 and CodUF = 'MS'
exec VerificaCTe 170000020232 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido / CF
select * from ConhecimentosTransporte where NumConhecto = 478593 and CodUF = 'MS'
exec VerificaCTe 970000039668 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido / CF
select * from ConhecimentosTransporte where NumConhecto = 478589 and CodUF = 'MS'
exec VerificaCTe 170000020231 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido
select * from ConhecimentosTransporte where NumConhecto = 478586 and CodUF = 'MS'
exec VerificaCTe 170000020230 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido
select * from ConhecimentosTransporte where NumConhecto = 478584 and CodUF = 'MS'
exec VerificaCTe 170000020229 -- 636 Rejeicao: O numero sequencial do evento e maior que o permitido
select * from ConhecimentosTransporte where NumConhecto = 668360 and CodUF = 'MT'
exec VerificaCTe 20000145208 -- 220 -  Rejeicao :  CT-e autorizada ha mais de 8 horas.
select * from LONTANO_GSe.dbo.CTe_LOG where ID in (20529771,20529770)  and Sequencial = 20000145208
--delete from LONTANO_GSe.dbo.CTe_LOG where ID in (20529771,20529770)  and Sequencial = 20000145208
select * from ConhecimentosTransporte where NumConhecto = 377196 and CodUF = 'MT'
exec VerificaCTe 100000046076 -- autorizado
select * from ConhecimentosTransporte where NumConhecto = 576804 and CodUF = 'GO'
exec VerificaCTe 280000171093 -- 574 Rejeição: Vedado o cancelamento de CT-e do tipo substituto (tipo=3)

exec MonitoraMDFe 15018942
 select * from LONTANO_GSe.dbo.MDFe_LOG where id in (23130683,23130670) and Sequencial = 1448860
 --delete from LONTANO_GSe.dbo.MDFe_LOG where id in (23130683,23130670) and Sequencial = 1448860

