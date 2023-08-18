use RODOMAIOR

-- CT-e com autorização Incompleta!


----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from Rodomaior_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from Rodomaior_GSe.dbo.CTe_LOG where Sequencial = 10000023028
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Rodomaior_GSe.dbo.cte where sequencial in (10000023028)
exec verificacte 10000023028

--update Rodomaior_GSe.dbo.CTe_LOG set Status = 1 where sequencial = 10000023028 and ID = 21338443
--update Rodomaior_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 135238251701051, dt_alteracao = '2023-07-08 15:52:41.720' where sequencial = 10000023028
--update Rodomaior_GSe.dbo.cte set  NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 141230132240998, dt_alteracao = '2023-07-07 08:20:37.657', xml_retorno = '<?xml version="1.0" encoding="utf-16"?>  <TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="3.00">    <infProt xmlns="http://www.portalfiscal.inf.br/cte">      <tpAmb>1</tpAmb>      <verAplic>PR-v3_3_09</verAplic>      <chCTe>41230711595217000370570000000761441000761442</chCTe>      <dhRecbto>2023-07-07T09:20:31-03:00</dhRecbto>      <nProt>141230132240998</nProt>      <digVal>v8ziRuv58k4xfaIMY9pZ4Ss7yNA=</digVal>      <cStat>100</cStat>      <xMotivo>Autorizado o uso do CT-e</xMotivo>    </infProt>  </TProtCTe>' where Sequencial = 10000023028









