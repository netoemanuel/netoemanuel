-- CT-e com autorização Incompleta!


----select DataCriacao, Status, NO_Retorno, DS_Retorno, XML_Retorno,  * from Lontano_GSe.dbo.cte where Sequencial = 60000026643 -- EXEMPLO 

select * from LONTANO_GSe.dbo.CTe_LOG where Sequencial = 20000146570
select DataCriacao,Status, xml_enviado, xml_retorno, no_protocolo, dt_alteracao, * from Lontano_gse.dbo.cte where sequencial in (20000146570)
exec verificacte 280000172594


--update Lontano_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', NO_Protocolo = 150230016085640, dt_alteracao = '2023-07-03 14:35:51.317' where sequencial = 950000020264
--update Lontano_gse.dbo.cte set xml_retorno = '<?xml version="1.0" encoding="utf-16"?>  <TProtCTe xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" versao="4.00">    <infProt xmlns="http://www.portalfiscal.inf.br/cte">      <tpAmb>1</tpAmb>      <verAplic>MS_1.0.1</verAplic>      <chCTe>50230711455829000103570000004859741004859740</chCTe>      <dhRecbto>2023-07-03T14:35:24-04:00</dhRecbto>      <nProt>150230016085640</nProt>      <digVal>HCYtc2s6nNtYYNxUCDlUxxBk4Oo=</digVal>      <cStat>100</cStat>      <xMotivo>Autorizado o uso do CTe</xMotivo>    </infProt>  </TProtCTe>' where sequencial = 950000020264




