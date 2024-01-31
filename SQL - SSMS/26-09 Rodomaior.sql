use RODOMAIOR


SELECT COUNT(*) AS Registros FROM DepositosFilial WHERE CodFilial = 'CG' and CodDeposito = 7 and CodTipoDeposito = 8
SELECT * FROM DepositosFilial WHERE CodFilial = 'CG' and CodDeposito = 7 and CodTipoDeposito = 8

SELECT ClassifDespesa,* FROM PlanoContasDespesa WHERE  ClassifDespesa like '%2.02.002%'--(CodTipoDespesa = 110)
SELECT ClassifDespesa,* FROM PlanoContasDespesa WHERE  ClassifDespesa like '%2.02.003%'
SELECT COUNT(*) AS Registros FROM DepositosFilial WHERE CodFilial = 'CG' and CodDeposito = 7 and CodTipoDeposito = 8


---------------------------------------------------------------------------------------------------------------------------------------------------------

exec MonitoraMDFe 51010528 -- 2023-09-14 09:04:55.507
select * from RODOMAIOR_GSe.dbo.Descarga_MDFe where Sequencial = 518792	


exec MonitoraMDFe 18013826 -- 2023-09-12 15:24:26.587
select * from RODOMAIOR_GSe.dbo.Descarga_MDFe where Sequencial = 518007	

---------------------------------------------------------------------------------------------------------------------------------------------------------

	--CTE 73184 COM DESTAQUE DE VALOR NO CAMPO OUTROS

select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 73577   and CodUF = 'MG'
select ObsConhecto,* from ConhecimentosTransporte_Log where NumConhecto = 73577 and CodUF = 'MG'
--cOutros   vOutros  (ValorTotalFrete gravado - Pedágio Somado - Frete Peso calculado)
select Componente3,ValorComponente3,  * from RODOMAIOR_GSe.dbo.CTe_Dacte where Sequencial = 310000013333
select vFretePeso,vPedagio, vOutros,* FROM RODOMAIOR_GSe.dbo.CTe where Sequencial = 310000013333
select SituacaoConsulta, * from AdmPagamentoFrete where CodAdmFrete = 4


---------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 73569 and CodUF = 'MG'

exec VerificaCTe 310000013329