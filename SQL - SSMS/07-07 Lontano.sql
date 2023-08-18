use LONTANO

--	990-Rejeição: Vedado a utilização do CTe de anulação ou substituição na versão 3.00
select * from ConhecimentosComplementados where SeqConhecimentoComplementar in (820000009611,280000172585,280000172586,280000172587,280000172588,280000172589,280000172591,280000172592)
--delete from ConhecimentosComplementados where SeqConhecimentoComplementar in (820000009611,280000172585,280000172586,280000172587,280000172588,280000172589,280000172591,280000172592)
--499-Rejeicao: CT-e de anulacao deve ter tipo de emissao = normal
select * from ConhecimentosComplementados where SeqConhecimentoComplementar in (980000026868,980000026867,980000026869)
--delete from ConhecimentosComplementados where SeqConhecimentoComplementar in (980000026868,980000026867,980000026869)

 select Status, tpEmis,UF, DataCriacao, * from Lontano_GSe.dbo.CTe WHERE dhEmi > '2023-07-07 00:00:01' AND Status NOT IN (1, 5, 9) and UF = 'MG'
  --update Lontano_GSe.dbo.CTe set status = 0 WHERE dhEmi > '2023-07-07 00:00:01' AND Status NOT IN (1, 5, 9) and UF = 'MG'

  exec VerificaCTe 710000026934

  select * from ConhecimentosTransporte where NumConhecto = 383061    and CodUF = 'MG'
  select Status, tpEmis,UF, DataCriacao, tpCTe, * from Lontano_GSe.dbo.CTe WHERE Sequencial = 910000041806
  --update Lontano_GSe.dbo.CTe set status = 1 WHERE Sequencial = 530000154241

select * from ConhecimentosTransporte where NumConhecto = 182694 and CodUF = 'PR'

--delete  from LONTANO_GSe.dbo.cte_log where id in (21324039,21324034) and Sequencial = 640000055261

select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe =1476709

------------------------------------------------------------------------------------------------------------------------------
--Atendimentos à usuário(a): Thiago Freitas referente a chamado aberto pelo Milvus Nº ticket #9884 com Assunto: " Erro CIOT CT-e 182694 e 182696".
--QUANDO O VALOR DA 3 CASA DESCIMAL ESTA DIFERENTE DE 0 ESTA DANDO REJEIÇÃO NA EFRETE NA HORA DE GERAR O CIOT
--FAZER O UPDATE NA TERCEIRA CASA DECIMAL PARA ZERO
select QuantidadeSaida, * from ConhecimentosTransporte where sequencial = 000000000000
--update ConhecimentosTransporte set QuantidadeSaida = 00000.000 where sequencial = 000000000000

select QuantidadeSaida, * from ConhecimentosTransporte where NumConhecto = 182694    and CodUF = 'PR'  --640000055261  / 25647.536
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 25647.536 where Sequencial = 640000055261
exec VerificaCTe 640000055261
select * from NotasFiscaisConhecimento where SequencialConhecimento =  640000055261
------------------------------------------------------------------------------------------------------------------------------
--Bianca - E-mail
SELECT TOP(1000) * FROM LONTANO_GSe.dbo.tblLog_operacao where DS_Descricao like '%31230704224679000315550010000269021074222882%' ORDER BY DT_Hs DESC

--XML Inválido XXXXXXX - Message: O elemento 'ICMS' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'ICMS61' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'ICMS00, ICMS10, ICMS20, ICMS30, ICMS40, ICMS51, ICMS60, ICMS70, ICMS90, ICMSPart, ICMSST, ICMSSN101, ICMSSN102, ICMSSN201, ICMSSN202, ICMSSN500, ICMSSN900' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'. | StackTrace:    em GS_eLib.NFe.ValidarSchemaXml() | [System.Exception: O elemento 'ICMS' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' apresenta elemento filho 'ICMS61' no espaço para nome 'http://www.portalfiscal.inf.br/nfe' inválido. Lista de possíveis elementos esperados: 'ICMS00, ICMS10, ICMS20, ICMS30, ICMS40, ICMS51, ICMS60, ICMS70, ICMS90, ICMSPart, ICMSST, ICMSSN101, ICMSSN102, ICMSSN201, ICMSSN202, ICMSSN500, ICMSSN900' no espaço para nome 'http://www.portalfiscal.inf.br/nfe'.     em GS_eLib.NFe.ValidarSchemaXml()] / SITEGS -    em GS_eLib.NFe.ValidarSchemaXml()     em GS_eLib.ProcessoNFe.ValidarSchemaNFeAssinado(String sXml)     em GS_eLib.NFeImportaNota.VerificaDestinatario(String _Path, Emitente emit)     em GS_e.StartCTe.ThreadNfeImportacaoNotasFornecedor(Object state)
------------------------------------------------------------------------------------------------------------------------------

select QuantidadeSaida, * from ConhecimentosTransporte_log where NumConhecto = 486847  and CodUF = 'DF' 
select Status,* from Lontano_GSe.dbo.CTe_log WHERE Sequencial = 170000021000
select QuantidadeSaida, * from ConhecimentosTransporte where NumConhecto = 15094  and CodUF = 'DF' 
exec VerificaCTe 170000021000

------------------------------------------------------------------------------------------------------------------------------
--204 -  Rejeicao :  Duplicidade de CT-e [nProt: 151230627903520][dhAut: 2023-07-07T15:07:35-04:00]
select * from ConhecimentosTransporte where NumConhecto = 677532 and CodUF = 'MT'
select * from ConhecimentosTransporte where  CodUF = 'MT' order by DataCriacao desc
exec VerificaCTe 480000005658

select Status, * from Lontano_GSe.dbo.CTe where Sequencial = 480000005658
select Status, cStat, * from Lontano_GSe.dbo.CTe_log where Sequencial = 480000005658

--update Lontano_GSe.dbo.cte set NO_Retorno = 100, Status = 1,  DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 151230627903660	, dt_alteracao = '2023-07-07 14:59:52.510' where sequencial = 480000005658 
--update Lontano_GSe.dbo.cte_log  set codLog = 22, Status = 1,  xMotivo = 'Autorizado o uso da CT-e', nProt = 151230627903660	, cStat = 100 where Sequencial = 480000005658 and ID = 21334268

exec verificacte 480000005658

----------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 486850 and CodUF = 'MS'
select * from ConhecimentosTransporte where  CodUF = 'MT' order by DataCriacao desc
exec VerificaCTe 480000005658

exec verificacte 970000040051 
--update Lontano_GSe.dbo.cte set NO_Retorno = 100, Status = 1,  DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 150230016624590	, dt_alteracao = '2023-07-07 17:15:06.917' where sequencial = 970000040051 
--update Lontano_GSe.dbo.cte_log  set codLog = 22, Status = 1,  xMotivo = 'Autorizado o uso da CT-e', nProt = 150230016624590	, cStat = 100 where Sequencial = 970000040051 and ID = 21336251

--update Lontano_GSe.dbo.CTe set status = 0 WHERE Sequencial = 970000040051
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 940000057652 and ID = 21324171
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 530000154416 and ID in( 21336176,21336175,21336143,21336142,21336138,21336137)

--------------------------------------------------------------------------------------------------------
