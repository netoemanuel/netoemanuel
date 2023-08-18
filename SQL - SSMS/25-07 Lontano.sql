use LONTANO
--#10267 - Cte 162807 não vincula ao Cte 180217
select * from ConhecimentosTransporte where NumConhecto = 180217 and CodUF = 'pr' -- original
select * from ConhecimentosTransporte where NumConhecto = 162807  and CodUF = 'pr' -- Subs. manual
select * from ConhecimentosTransporte where NumConhecto = 162856  and CodUF = 'pr' -- Complemento

select * from ConhecimentosComplementados where 470000016745 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
select * from ConhecimentosComplementados where 640000049938 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
select * from ConhecimentosSubstituidos where 470000016745 in (SeqCTRCOriginal,SeqCTRCSubstituto)

exec VerificaCTe 470000016745
exec VerificaCTe 470000014147

SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte WHERE Sequencial IN (SELECT SeqConhecimentoComplementar FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementado = 470000014147)
SELECT* FROM ConhecimentosTransporte WHERE Sequencial IN (SELECT SeqConhecimentoComplementar FROM ConhecimentosComplementados WHERE SeqConhecimentoComplementado = 470000014147)

select * from ConhecimentosTransporte where NumConhecto = 489684 and CodUF = 'Ms' -- original

exec VerificaCTe 970000040176

--update Lontano_GSe.dbo.CTe_LOG set Status = 1, cStat = 100, xMotivo = 'Autorizado o uso da CT-e', 
--nProt = 150230018567740, codLog = 22,  xmlEnvolvido ='
--	<protCTe> 
--		<infProt>
--			<tpAmb>1</tpAmb>
--			<verAplic>MS_1.0.1</verAplic>
--			<chCTe>50230711455829000103570000004896841004896848</chCTe>
--			<dhRecbto>2023-07-26T17:35:04-04:00</dhRecbto>
--			<nProt>150230018567740</nProt>
--			<digVal>EOrBVWvorYidQTKfyUEYKGWqElQ=</digVal>
--			<cStat>100</cStat>
--			<xMotivo>Autorizado o uso do CTe</xMotivo>
--		</infProt>
--		</protCTe>'  where sequencial = 970000040176 and ID = 21466961

--update Lontano_GSe.dbo.cte set NO_Retorno = 100, DS_Retorno = 'Autorizado o uso da CT-e', 
--NO_Protocolo = 150230018567740, dt_alteracao = '2023-07-26 17:41:27.610',Status = 1  where sequencial = 970000040176

--update Lontano_GSe.dbo.cte set   XML_Retorno= '
--		<protCTe> 
--		<infProt>
--			<tpAmb>1</tpAmb>
--			<verAplic>MS_1.0.1</verAplic>
--			<chCTe>50230711455829000103570000004896841004896848</chCTe>
--			<dhRecbto>2023-07-26T17:35:04-04:00</dhRecbto>
--			<nProt>150230018567740</nProt>
--			<digVal>EOrBVWvorYidQTKfyUEYKGWqElQ=</digVal>
--			<cStat>100</cStat>
--			<xMotivo>Autorizado o uso do CTe</xMotivo>
--		</infProt>
--		</protCTe>'  where Sequencial = 970000040176 