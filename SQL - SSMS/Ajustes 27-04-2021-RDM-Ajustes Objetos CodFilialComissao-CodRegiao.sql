--> OBJETIVO: ELIMINAR REDUDÂNCIA (AMBIGUIDADE) DOS CAMPOS "CodFilialComissao" e "CodRegiao" (vai estar "duplicado" com o "CodRegiao")
--  - já existia na tabela de PedidosFrete o campo CodFilialComissao; por esse campo achávamos a Região (FiliaisParamDesprecFilial (CodRegiao) / ParamDespRecFilial)
--  - agora existem os campo CodFilialComissao e CodRegiao na tabela ConhecimentosTransporte; e ele que deve ser usado PRIORITARIAMENTE nas consultas.
--  - Trocar "CodRegiao" se houver por "CodRegiao" da tabela ConhecimentosTransporte

--OK DR_QuebrasDescontadas					Stored procedure
--OK PRF_SeguroRetido						Stored procedure
--OK PRF_QtdeEmbarcada						Stored procedure
--OK PRF_Pedagio							Stored procedure
--OK PRF_OutrasDesp2						Stored procedure
--OK PRF_Impostos							Stored procedure
--OK PRF_ICMS								Stored procedure
--OK PRF_FreteBruto2						Stored procedure
--OK PRF_FreteBruto							Stored procedure
--OK PRF_FaturamentoTotal					Stored procedure
--OK EmbarquesPorRegionalAnalitico			Stored procedure
--OK EmbarquesPorRegional					Stored procedure
--OK EmbarquesPorRegionalMes				Stored procedure
--OK EmbarqueTempoReal						Stored procedure

--PRF_Encargos2							Stored procedure	(Pendente)
--PRF_Encargos							Stored procedure	(Pendente)
--OrdensEmbarqueDia						Stored procedure	(Pendente)
-



--ValorPrazoMedio						Function
--FiliaisComissaoCR						Function

--RelConhecimentosFaturadosCliente		View
--LucratividadeEmbarques				View
--LucratividadeCTRC						View
--FretesReceberCliente					View
--FaturaGeralPorCliente					View
--EstadiasFaturar						View
--EmbarquesPorRegionalMensal			View
--OK CTRC_Encargos						View
--AcompanhamentoEmbarquesCTRC			View


--> DEPOIS COM LAÉRCIO:
--ResultadoRegiaoPeriodoAnalitico		Outros Objetos
--ResultadoRegiaoPeriodo				Outros Objetos
--RelMensalResultadoRegiaoAnalitico		Outros Objetos
--RelMensalResultadoRegiao				Outros Objetos
--FretesReceberRetro					Outros Objetos
--FretesReceberRegiaoAnalitico			Outros Objetos
--FretesReceberRegiao					Outros Objetos
--FretesReceberAnalitico				Outros Objetos
--FretesReceber							Outros Objetos
