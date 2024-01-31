use RODOMAIOR


select Situacao, * from OrdemEmbarque where CIOT = 'REPOM'
--UPDATE OrdemEmbarque set Situacao = 1 where NumOrdemEmbarque = 69012007
select * from ConhecimentosTransporte where NumConhecto = 107751
select EmiteCartaFreteCIOT,* from OrdemEmbarque_log where NumOrdemEmbarque = 79004009
select * from OrdemEmbarque WHERE (NumOrdemEmbarque = 79004009) AND (ISNULL(EmiteCartaFreteCIOT, 'N') = 'N')
select NumFormulario,* from ConhecimentosTransporte_log where NumConhecto = 107751 and CodUF = 'GO' ORDER by DataLog desc
select * from NotasFiscaisConhecimento where SequencialConhecimento = 260000004569

SELECT * from RelacaoFretes where	CodRelacaoFrete = 1089104
--UPDATE RelacaoFretes set ValorDiferenca = null, CodIndicadorDiferenca = 1  where	CodRelacaoFrete = 1089104 -- 3.00 / 

select  * from ConhecimentosTransporte where NumConhecto = 45803
exec VerificaCTe 690000009171
select * from Motoristas where CPF =  '069.756.768-01'
select Situacao, * from OrdemEmbarque where NumOrdemEmbarque = 6051604 -- 1089584
--UPDATE OrdemEmbarque set CodMotorista = 13000417 where NumOrdemEmbarque = 6051604