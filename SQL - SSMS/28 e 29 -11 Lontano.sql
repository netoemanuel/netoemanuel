use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 695783 and CodUF = 'MT'
select * from Veiculos where CodVeiculo = 425016
select * from ConjuntosVeiculo where CodVeiculo = 425016
--novo
select * from Veiculos where PlacaVeiculo = 'OGH6H59'
select * from ConjuntosVeiculo where CodVeiculo = 395225
-------------------------------------------------------------------------------------------------------------------------------------------------------
select ValorNF, SeguroAverbado, GRIS_NaoDescontado,* from ConhecimentosTransporte where NumConhecto = 504676 and CodUF = 'MS'
--UPDATE ConhecimentosTransporte set ValorNF = 91865.85, SeguroAverbado = 45.93, GRIS_NaoDescontado = 93.70  where Sequencial = 830000065392
-------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Usuarios where NomeUsuario like  '%Everton%'  -- 2MEDEI / 12439
-------------------------------------------------------------------------------------------------------------------------------------------------------
select SituacaoConhecto, TipoConhecimento,* from ConhecimentosTransporte where NumConhecto = 1945897 and CodUF = 'MT' and SerieConhecto = '1'
--UPDATE ConhecimentosTransporte set TipoConhecimento = 'Normal' where Sequencial = 880000129743 -- Substituído

-------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodUsuarioCriacao, TarifaFreteEmpresa,CodOrdemEmbarque,QuantidadeSaida,ValorTotalFrete, (QuantidadeSaida/1000)*TarifaFreteEmpresa, Pedagio, ValorICMSFrete, ValorICMSRetido, Sequencial, CodUF, NumConhecto, DataEmissao, SituacaoConhecto, TipoConhecimento, ModeloDocumento, * FROM ConhecimentosTransporte WHERE CodUF = 'ms' AND NumConhecto in (506600,506599,506597)

select * from RelatorioEmbarque where NumRelatorioEmbarque = 25011506
--UPDATE RelatorioEmbarque set DataRelatorioEmbarque = '2023-11-28 00:00:00' where NumRelatorioEmbarque = 25011506  -- 2023-11-28 00:00:00

select * from NotasFiscaisConhecimento where SequencialConhecimento = 250000078018
--UPDATE  NotasFiscaisConhecimento set ChaveAcessoNFe = '50231108906558000142550010001538431301802910' where SequencialConhecimento = 250000078018 --50231108906558000142550010001538431301802910


SELECT ChequesEmitidos.Sequencial, ConhecimentosRelFretes_Cheques.CodFilial, ConhecimentosRelFretes_Cheques.CodContaBancaria, ConhecimentosRelFretes_Cheques.CodFilial + '-' + LTrim(STR(ConhecimentosRelFretes_Cheques.CodContaBancaria)) AS Conta,
ConhecimentosRelFretes_Cheques.NumeroCheque, ConhecimentosRelFretes_Cheques.ValorCheque, SituacaoCheque,*
FROM ConhecimentosRelFretes_Cheques 
INNER JOIN ChequesEmitidos ON ChequesEmitidos.Sequencial = ConhecimentosRelFretes_Cheques.SeqCheque
WHERE (SeqConhecto = 310000094534) 
AND (CodRelacaoFrete = 74002646) 
AND (CodTipoPagamento = 3)

select TarifaFreteEmpresa, * from ConhecimentosTransporte where NumConhecto = 499981 and CodUF = 'MS' -- 771.27
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa =  984.1017 where Sequencial = 250000076987  
