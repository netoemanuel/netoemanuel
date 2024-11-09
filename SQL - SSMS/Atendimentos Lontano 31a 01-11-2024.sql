SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 10088275 

SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.*
FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MT' AND CTRC.Numconhecto = 734530                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select EmpresaValePedagio,* from ConhecimentosTransporte where Sequencial = 100000083696
select EmpresaValePedagio,* from ConhecimentosTransporte_log where Sequencial = 100000083696

SELECT CodRota, TipoDispositivoValePedagio, ResponsavelValePedagio FROM ConhecimentosTransporte WHERE (Sequencial = 100000083696)
SELECT CodRota, TipoDispositivoValePedagio, ResponsavelValePedagio FROM ConhecimentosTransporte_log WHERE (Sequencial = 100000083696)

SELECT COUNT(*) AS Registros FROM ChequesEmitidos WHERE NumeroCheque = 19708780 and CodFilial = 'CG' and CodContaBancaria = 95 and SituacaoCheque = 'Cancelado'
SELECT * FROM ChequesEmitidos WHERE NumeroCheque = 19708780
SELECT * FROM ChequesEmitidos WHERE (CodFilial = 'CG') AND (CodContaBancaria = 95) AND (NumeroCheque = 19708780)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC VerificaCTe 430000010785
--UPDATE LONTANO_GSe.dbo.cte SET Status = 0 where Sequencial = 430000010785
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--#22685 - SOLICITAÇÃO LIMPEZA DE ROTEIRIZAÇÃO CTE 136489
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 136489                                    
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

SELECT EmpresaValePedagio, NumCartaoValePedagio,TipoDispositivoValePedagio, RotaSemParar,ValorPedagioSemParar,DataContratoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 35008516 
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = '4417812011915409', RotaSemParar = Null, ValorPedagioSemParar = null ,TipoDispositivoValePedagio = 0  where  NumOrdemEmbarque = 35008516 --PAMCARD

--35008516
--EmpresaValePedagio	NumCartaoValePedagio	TipoDispositivoValePedagio	RotaSemParar	ValorPedagioSemParar	DataContratoValePedagio
--Banco Bradesco S/A	4417812011915409	0	0	643.50	2026-08-01 00:00:00

-- Critica pagamento, thiago alterou o responsavel do pagemento no pedigo de frete para 0, fiz alteração no conehcimento gravado para ficar conforme pedido.
SELECT CodRota, TipoDispositivoValePedagio, ResponsavelValePedagio FROM ConhecimentosTransporte WHERE (Sequencial = 350000006896)
--UPDATE ConhecimentosTransporte set ResponsavelValePedagio = 0 WHERE (Sequencial = 350000006896)  -- 5

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EXEC VerificaCTe 480000007335

SELECT * from ConhecimentosTransporte where Sequencial = 480000007335
select Status,* from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 480000007335
--UPDATE LONTANO_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 480000007335
EXEC MonitoraMDFe 12044289

SELECT * from ConhecimentosTransporte where NumConhecto = 65846 AND CodUF = 'GO' and SerieConhecto = '2'
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Complementado' where NumConhecto = 65846 AND CodUF = 'GO' and SerieConhecto = '2'

SELECT * from ConhecimentosTransporte where NumConhecto = 66002  AND CodUF = 'GO' and SerieConhecto = '2' -- tarifa Motorista 54.00 / Situação Emitido / Adiantamento 1228.00
--UPDATE ConhecimentosTransporte set SituacaoConhecto = 'Complemento',TipoConhecimento = 'Complemento'where NumConhecto = 66002  AND CodUF = 'GO' and SerieConhecto = '2'



--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 18201 and CodUF = 'DF' -- 3001456
--DELETE FROM LONTANO_GSe.dbo.CTe WHERE Sequencial = 730000136812
EXEC VerificaCTe 730000136812
EXEC Grava_CTe 730000136812
SELECT CodCliente FROM Clientes WHERE (InscEstadual = '0017133240017') ORDER BY CodCliente
SELECT * from Clientes where CodCliente IN (3000115,3001456)
SELECT * from Clientes where CodCliente IN (3000115)
--UPDATE Clientes set InscEstadual = '00017133240017' where CodCliente IN (3000115)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--#22719 - ERRO NA EMISAO DE NFEs
SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe WHERE (Sequencial = 530000171674) AND (SituacaoProtocolo = 3)
select * from NFSe_ConhecimentosTransporte where Sequencial = 530000171674
----DELETE  from NFSe_ConhecimentosTransporte where Sequencial = 530000171674

--ID	Sequencial	DiscriminacaoServicos	CodTipoReceita1	DescServico1	QuantServico1	ValorUnitServico1	CodigoCNAE	Tributacao	CodCidadePrestacao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--19687	530000171674	Mercadoria: Milho em Grãos - NF: 931/15 - Peso: 32160.000 - Valor: R$ 26799.89 - Placa: MMP-3894 - Alíq.ISS: 5.00 - Tarifa: R$ 26.3157 - Motorista: Gilmar Rocha. PAGTO SALDO FRETE CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA. - Remetente: Julio Cesar Pereira Junior CNPJ/CPF: 888.786.006-87 - Destinatário: Cargill Agricola S/A CNPJ/CPF: 60.498.706/0134-88 - Pedido: CGL354/24	2	Serviço de Transporte	1.0000	846.3100	493020100	T	39217	15003	UBL	2024-11-01 13:51:01.000	NULL	NULL	NULL
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

