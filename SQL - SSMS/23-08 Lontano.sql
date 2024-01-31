use LONTANO


select * from Veiculos where PlacaVeiculo = 'QAM3H43'
select * from ConjuntosVeiculo where CodVeiculo = 743

--CodVeiculo	CodTipoConjunto	CodVeiculoAdicional1	CodVeiculoAdicional2	CodVeiculoAdicional3	ComprimentoConjunto	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	CodTipoVeicConj	Eixos
--743	2	1121	61120	2118	25.50	10142	CG	2019-01-03 13:40:35.000	NULL	NULL	NULL	3	NULL

select * from Veiculos where PlacaVeiculo = 'QAM3H43'
select * from ConjuntosVeiculo where CodVeiculo = 9534


exec MonitoraMDFe 88066521

-------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto in (683681 , 683718) and CodUF = 'MT'

exec VerificaCTe 10000022675
exec VerificaCTe 10000022676

-------------------------------------------------------------------------------------------------------------------------------
select CodPedidoFrete, NumRelatorioEmbarque,* from ConhecimentosTransporte where NumConhecto in (185757)and CodUF = 'PR'
--update ConhecimentosTransporte set NumRelatorioEmbarque = 91004551,CodPedidoFrete = 91007950 where sequencial = 910000042779 -- 91004551, 91007810
select CodPedidoFrete, NumRelatorioEmbarque,* from ConhecimentosTransporte_log where NumConhecto in (185757)and CodUF = 'PR'
select CodPedidoFrete, NumRelatorioEmbarque,* from ConhecimentosTransporte where NumConhecto in (387023 ) and CodUF = 'MG'
exec VerificaCTe 980000027289
-------------------------------------------------------------------------------------------------------------------------------
select * from ConhecimentosTransporte where NumConhecto in (386964 ) and CodUF = 'mg'

EXEC VerificaCTe 710000027212
-------------------------------------------------------------------------------------------------------------------------------

select IndProblemaGR,* from OrdemEmbarque where NumOrdemEmbarque = 98031146
-------------------------------------------------------------------------------------------------------------------------------

 SELECT 
		 MV.CodMotorista, m.NomeMotorista,Veiculos.DescVeiculo, EmbarquesPorVeiculo.Placa, EmbarquesPorVeiculo.NumCTRC, EmbarquesPorVeiculo.Data, EmbarquesPorVeiculo.QuantidadeSaida,
		 EmbarquesPorVeiculo.QuantidadeChegada, EmbarquesPorVeiculo.CodUnidadeMedida, EmbarquesPorVeiculo.Origem, EmbarquesPorVeiculo.Destino,
		 EmbarquesPorVeiculo.Emitente, EmbarquesPorVeiculo.FreteMotorista, EmbarquesPorVeiculo.TarifaFreteMotorista, EmbarquesPorVeiculo.TarifaFreteEmpresa, 
		 EmbarquesPorVeiculo.CodVeiculo, EmbarquesPorVeiculo.TipoCTRC, EmbarquesPorVeiculo.FreteMotoristaChegada, EmbarquesPorVeiculo.Seguro
 FROM   
		 LONTANO.dbo.EmbarquesPorVeiculo EmbarquesPorVeiculo 
		 INNER JOIN LONTANO.dbo.Veiculos Veiculos ON EmbarquesPorVeiculo.CodVeiculo=Veiculos.CodVeiculo
		 INNER JOIN LONTANO.dbo.Motoristas_Veiculos MV on Veiculos.CodVeiculo = MV.CodVeiculo
		 INNER JOIN LONTANO.dbo. Motoristas M on M.CodMotorista = mv.CodMotorista
WHERE	
		EmbarquesPorVeiculo.Data >= ('2023-08-23 00:00:00') 
		And EmbarquesPorVeiculo.Data <= ('2023-08-23 23:59:00') 
		--AND IIF(ISNULL(EmbarquesPorVeiculo.TipoConhecimento), '', EmbarquesPorVeiculo.TipoConhecimento) <> 'Substituto' 
		--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Substituto'
		--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Cancelado' 
		 AND (EmbarquesPorVeiculo.Propriedade = 'Próprio')

 ORDER BY 
		 m.NomeMotorista asc




--EmbarquesPorVeiculo.Data >= Cdate('23/08/2023') 
--And EmbarquesPorVeiculo.Data <= Cdate('23/08/2023') 
--AND IIF(ISNULL(EmbarquesPorVeiculo.TipoConhecimento), '', EmbarquesPorVeiculo.TipoConhecimento) <> 'Substituto' 
--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Substituto'
--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Cancelado' 
--AND (EmbarquesPorVeiculo.Propriedade = 'Próprio')


--EmbarquesPorVeiculo.Data >= Cdate('23/08/2023')
--And EmbarquesPorVeiculo.Data <= Cdate('23/08/2023') 
--AND IIF(ISNULL(EmbarquesPorVeiculo.TipoConhecimento), '', EmbarquesPorVeiculo.TipoConhecimento) <> 'Substituto' 
--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Substituto'
--AND IIF(ISNULL(EmbarquesPorVeiculo.SituacaoConhecto), '', EmbarquesPorVeiculo.SituacaoConhecto) <> 'Cancelado' 
--AND (EmbarquesPorVeiculo.Propriedade = 'Próprio')


