use LONTANO


--SELECT DisponivelMovimento,* FROM DepositosFilial where CodFilial = 'CG' and CodDeposito = 04


select SituacaoConhecto, * from ConhecimentosTransporte where NumConhecto = 613127 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Cancelado'  where Sequencial = 310000096222
exec VerificaCTe 310000096222

--Favor verificar a ordem de número 50012646 pois está com uma MDF-e vinculada do ct-e MT-701954, porém se trata de outro embarque, do ct-e MT-701954. A ordem 50012646 não tem Ct-e vinculado.
--Precisamos cancelar a ordem 50012646.

select  * from ConhecimentosTransporte where NumConhecto = 701954 and CodUF = 'MT'

select * from LONTANO_GSe.dbo.MDFe where Sequencial = 1598327
exec MonitoraMDFe 50012646 -- não manifestada
exec MonitoraMDFe 80029186 -- correta 
select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 50012646
--delete from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 50012646
--SeqViagem	NumOrdemEmbarque	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	NumOrdemMDFeEspecifico
--1477888	50012646	10386	CAN	2024-02-04 12:30:16.740	NULL	NULL	NULL	NULL


select * from MDFeViagem_OrdemEmbarque where NumOrdemEmbarque = 80029186
select * from MDFeViagem_OrdemEmbarque where SeqViagem = 1477888

select DescontoDifPesoFatura,* from ContasReceber where CodContasReceber = 1563960
select * from DescontoContasReceber where CodContasReceber = 1563960
select (205.05+132.66)
--UPDATE DescontoContasReceber set ValorDesconto = 205.05 where CodContasReceber = 1563960 and CodTipoDesc = 1 -- 203.89
--UPDATE DescontoContasReceber set ValorDesconto = 132.66 where CodContasReceber = 1563960 and CodTipoDesc = 5 -- 133.82


select * from PermissoesAcesso where CodPrograma = 'LiberarTaxaAdmOrdem'


select ValorNF,SeguroAverbado,GRIS_NaoDescontado, * from ConhecimentosTransporte where NumConhecto = 700535 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set ValorNF = 116670.12, SeguroAverbado = 58.33, GRIS_NaoDescontado = 165.67  where Sequencial = 120000024290
