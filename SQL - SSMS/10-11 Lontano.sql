use LONTANO


--select * from ConhecimentosTransporte where Sequencial = 710000027642
--select * from ConhecimentosTransporte_log where Sequencial = 710000027642
--UPDATE ConhecimentosTransporte set CodPedidoFrete = 53012659 where Sequencial = 710000027642  --53012658

--select * from NFSe_ConhecimentosTransporte where Sequencial = 710000027642
--delete from NFSe_ConhecimentosTransporte where Sequencial = 710000027642
--ID	Sequencial	DiscriminacaoServicos	CodTipoReceita1	DescServico1	QuantServico1	ValorUnitServico1	CodigoCNAE	Tributacao	CodCidadePrestacao	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--15421	710000027642	Mercadoria: Calcario Agricola - NF: 0/147381 - Peso: 48160.000 - Valor: R$ 6742.40 - Placa: SHI2J04 - Alíq.ISS: 0.00 - Tarifa: R$ 140.0000 - Motorista: Deusdede Estrela de Almeida. ATENCAO PAGAMENTO DO SALDO DO FRETE, SOMENTE COM O CANHOTO DA DANFE ASSINADO, NOME POR EXTENSO, RG OU CPF DE QUEM ACOMPANHOU A DESCARGA E RECEBEU A MERCADORIA - Remetente: Calcario Noroeste Ltda CNPJ/CPF: 00.774.499/0001-94 - Destinatário: Ouro Verde Empreedimentos Rurais CNPJ/CPF: 13.491.552/0001-91 - Pedido: cal35/23	2	Serviço de Transporte	1.0000	6742.4000	493020300	C	33820	13216	PRT	2023-11-10 07:40:48.000	NULL	NULL	NULL


select * from Fornecedores where CNPJ_CPF = '090.983.458-08'

select * from AutonomosMetadados where CPF = '090.983.458-08'



select * from ConhecimentosRelacaoFretes where CodRelacaoFrete = 53010638
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 530000157615 and Sequencial = 4
--UPDATE ConhecimentosRelacaoFretes set ValorPago = 1702.28, ValorConferido = 1702.28  where NumSeqConhecto = 530000157615 and Sequencial = 4  -- 1037.00 // 1037.00


--select *  FROM ConhecimentosSubstituidos WHERE (SeqCTRCOriginal = 730000130572) AND (SeqCTRCSubstituto = 10000022788)
----DELETE FROM ConhecimentosSubstituidos WHERE (SeqCTRCOriginal = 730000130572) AND (SeqCTRCSubstituto = 10000022788)
--select * from ConhecimentosTransporte where NumConhecto = 23002760 and CodUF = 'MT'

--SELECT nfse.NumeroNfse, CT. *
--		FROM ConhecimentosTransporte CT 
--		JOIN LONTANO_GSe.dbo.NFSE nfse ON nfse.Sequencial = CT.Sequencial 
--		WHERE ISNULL(nfse.NumeroNfse,0) > 0 
--			AND ISNULL(nfse.Ativo,0) = 1
--            AND ISNULL(nfse.SituacaoProtocolo,0) = 4 and CT.Sequencial = 730000130572



select * from ChequesEmitidos where NumeroCheque = 572533
--UPDATE ChequesEmitidos set IndicadorImpressao = 'N' where Sequencial = 10000109035


select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 391102 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 70246.00 , SeguroAverbado = 35.12 where Sequencial = 980000027651  

select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 390924 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 78568.67 , SeguroAverbado = 3.93, GRIS_NaoDescontado = 48.71 where Sequencial = 940000058301  

select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 391558 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 29564.33 , SeguroAverbado = 14.78, GRIS_NaoDescontado = 20.70 where Sequencial = 530000158543 

select ValorNF,SeguroAverbado,* from ConhecimentosTransporte where NumConhecto = 603799 and CodUF = 'GO'
--UPDATE ConhecimentosTransporte set ValorNF = 105500.00, SeguroAverbado = 52.75, GRIS_NaoDescontado = 73.85 where Sequencial = 30000155592 

select ValorNF,SeguroAverbado, Outros, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 55726 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 79288.00, SeguroAverbado = 1.59, GRIS_NaoDescontado =  55.50 where Sequencial = 530000158227 


select Observacoes,* from PedidosFrete where CodPedidoFrete = 98001190
--update PedidosFrete  set Observacoes = 'PAGTO SALDO FRETE: CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA.' where CodPedidoFrete = 98001190
select Observacoes,* from OrdemEmbarque where NumOrdemEmbarque = 98031685
--update OrdemEmbarque set Observacoes = 'PAGTO SALDO FRETE: CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA.' where NumOrdemEmbarque = 98031685
select ObsConhecto,* from ConhecimentosTransporte where NumConhecto = 392599 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ObsConhecto = 'PAGTO SALDO FRETE: CARTA FRETE/CIOT, DACTE E TICKET DE DESCARGA.' where sequencial = 980000027675


select * from ConhecimentosTransporte where NumConhecto = 504955 and CodUF = 'MS'

exec VerificaCTe 970000041132
--exec Grava_CTe 970000041132


select ValorNF,SeguroAverbado,  * from ConhecimentosTransporte where NumConhecto = 391567 and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set ValorNF = 104400.00, SeguroAverbado = 52.07 where Sequencial = 530000158552 



	select CRNTRC, * from Fornecedores where CodFornecedor =1105288