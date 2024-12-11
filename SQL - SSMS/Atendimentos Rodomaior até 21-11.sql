EXEC MonitoraMDFe 34027595

select * from PermissoesAcesso where CodUsuario = 12612
select * from PermissoesAcesso_log where CodUsuario = 12612


select CodUsuarioCriacao,CodFilialCriacao,CodUsuarioAlteracao,CodUsuarioAlteracao,* from OrdemEmbarque where NumOrdemEmbarque = 33014694

select * from PermissoesAcesso where CodUsuario = 11267
select * from PermissoesAcesso_log where CodUsuario = 11267 ORDER BY DataLog desc
select * from PermissoesAcesso where CodPrograma LIKE '%Duplic%'
select * from PermissoesAcesso where CodPrograma = 'LiberaEmbarqueNFeDuplicada'

select * from PermissoesAcesso_log where CodPrograma = 'LiberaEmbarqueNFeDuplicada' and AcaoLog = 'E' ORDER by DataLog desc
SELECT * from Usuarios where CodUsuario = 11267


51241148562675000150550010000126721035104821

SELECT ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodPedidoFrete FROM NotasFiscaisConhecimento 
INNER JOIN ConhecimentosTransporte ON NotasFiscaisConhecimento.SequencialConhecimento = ConhecimentosTransporte.Sequencial
WHERE (ChaveAcessoNFe LIKE '51241148562675000150550010000126721035104821') AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado')


SELECT ConhecimentosTransporte.CodUF, ConhecimentosTransporte.NumConhecto, ConhecimentosTransporte.CodPedidoFrete,*
FROM NotasFiscaisConhecimento 
INNER JOIN ConhecimentosTransporte ON NotasFiscaisConhecimento.SequencialConhecimento = ConhecimentosTransporte.Sequencial
WHERE (ChaveAcessoNFe LIKE '51241148562675000150550010000126721035104821') AND (ConhecimentosTransporte.SituacaoConhecto <> 'Cancelado')


select * FROM OrdemEmbarque where NumOrdemEmbarque = 4045600
--delete FROM OrdemEmbarque where NumOrdemEmbarque = 4045600

select * FROM OrdemEmbarque where NumOrdemEmbarque = 4045600
--delete FROM OrdemEmbarque where NumOrdemEmbarque = 4045600

select SituacaoVeiculo,* from Veiculos where CodVeiculo =  69285  -- Bloqueado
--UPDATE Veiculos set SituacaoVeiculo = 'Bloqueado' where CodVeiculo =  69285

select SituacaoMotorista,* from Motoristas where CodMotorista =  33000376  -- Bloqueado
--UPDATE Motoristas set SituacaoMotorista = 'Bloqueado'  where CodMotorista =  33000376

SELECT Situacao,* from PedidosFrete where CodPedidoFrete = 4006701
SELECT Situacao,* from PedidosFrete_log where CodPedidoFrete = 4006701

--UPDATE PedidosFrete set Situacao = 2 where CodPedidoFrete = 4006701  -- 2

select * FROM OrdemEmbarque where NumOrdemEmbarque = 33015889
--delete FROM OrdemEmbarque where NumOrdemEmbarque = 33015889
