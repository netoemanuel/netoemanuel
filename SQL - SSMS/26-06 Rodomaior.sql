use RODOMAIOR

-- CT-es parados
select * from ConhecimentosComplementados where 60000043459 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)
--SeqConhecimentoComplementar	SeqConhecimentoComplementado	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	IndComplementoPeso
--60000043459	60000043400	12663	CG	2023-06-20 13:50:36.880	NULL	NULL	NULL	N
--DELETE from ConhecimentosComplementados where 60000043459 in (SeqConhecimentoComplementar,SeqConhecimentoComplementado)

------------------------------------------------------------------

-- Cancelar cte

select * from ConhecimentosTransporte where NumConhecto = 69194 and CodUF = 'MG'
exec VerificaCTe 480000004718 -- exemplo
exec VerificaCTe 310000012271
select * from RODOMAIOR_GSe.dbo.cte_log where Sequencial = 310000012271
select Status,* from RODOMAIOR_GSe.dbo.cte where Sequencial = 310000012271
--UPDATE RODOMAIOR_GSe.dbo.cte_log SET cStat =135, xMotivo = 'Evento registrado e vinculado a CT-e', status = 5 where Sequencial = 310000012271 AND ID =  5811340

--------------------------------------------------------------------------
--Adriano 
--Laércio, quando puder, não tenho certeza se é isso
--vou responder o Adriano no e-mail estaria correto isso? Não sei se é so iss. "Adriano, neste caso como o ICMS destacado não é Subst. Destacado e sim Tributado ele pega o valor da do frete empresa para gerar a tarifa.


--SQL que valida, ele nao entra e vai pro elseo
--NumReg(PedidosFrete WHERE ICMSDestacado = 'U' AND CodUFTributacao "MS AND CodPedidoFrete = " & rsPedidoFrete!CodPedidoFrete) > 0 Then (que valida para fazer o calculo, como ele nao nao passa ele pega o valor do freteempresa)

--select ICMSDestacado.CodUFTributacao, from PedidosFrete where CodPedidofrete = 6005656 -- T: "MS"

--------------------------------------
--Cte não autorizado (motorista aguardando)

select * from ConhecimentosTransporte where NumConhecto = 69201 and CodUF = 'MG'

exec VerificaCTe 310000012274

--UPDATE RODOMAIOR_GSe.dbo.CTe SET STATUS = 0 WHERE Sequencial = 310000012274

sELECT TOP(1000) * FROM rodomaior_gse.dbo.tblLog_operacao ORDER BY DT_Hs DESC