use RODOMAIOR


select * from Veiculos where PlacaVeiculo = 'PLY6E43'
select * from ConjuntosVeiculo where CodVeiculo = 156489
select * from Motoristas where CPF = '538.371.269-00'


select CodVeiculo,CodMotorista,* from OrdemEmbarque where NumOrdemEmbarque = 51012966   --156468 / 51001917
--UPDATE OrdemEmbarque set CodVeiculo = 156489, CodMotorista = 51001918  where NumOrdemEmbarque = 51012966


select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 78084 and CodUF = 'MG'
--update ConhecimentosTransporte set SituacaoConhecto = 'Cancelado' where sequencial = 920000001667

exec VerificaCTe 920000001667



select SituacaoConhecto,TipoConhecimento, * from ConhecimentosTransporte where NumConhecto = 897  and CodUF = 'PR'  -- Complemento / Complemento
--update ConhecimentosTransporte set SituacaoConhecto = 'Emitido', TipoConhecimento = 'Substituto' where sequencial = 410000028511


select SituacaoConhecto,TipoConhecimento, * from ConhecimentosTransporte where NumConhecto = 558918  and CodUF = 'PR'  -- Complemento / Complemento
--update ConhecimentosTransporte set SituacaoConhecto = 'Emitido', TipoConhecimento = 'Substituído' where sequencial = 410000028504