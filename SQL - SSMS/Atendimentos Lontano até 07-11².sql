exec VerificaCTe 10000025810
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 where Sequencial = 10000025810
EXEC VerificaCTe 190000038847

EXEC Lontano_GSe.dbo.ResultadoFinanceiroRegiao @Usu = 14102, @Filial = 'CG', @Criacao = '11/04/2024 08:26:45', @Ini = '20240101', @Fim = '20240229', @Regiao = '1', @Periodo = 'Competência'
EXEC Lontano_GSe.dbo.ResultadoFinanceiroRegiao @Usu = 14102, @Filial = 'CG', @Criacao = '11/04/2024 09:56:19', @Ini = '20240101', @Fim = '20240229', @Regiao = '1', @Periodo = 'Competência'
EXEC Lontano_GSe.dbo.ResultadoFinanceiroRegiao @Usu = 14102, @Filial = 'CG', @Criacao = '11/04/2024 10:01:00', @Ini = '20240101', @Fim = '20240229', @Regiao = '1', @RegFil = 'AAR', @Periodo = 'Competência'

SELECT ClassifFiscal,CodClassifFornec,CodTipoFornecedor,* from Fornecedores where CodFornecedor = 1108049
SELECT ClassifFiscal,CodClassifFornec,PisPasep,CodTipoFornecedor,* from Fornecedores where CodTipoFornecedor = 2 AND PisPasep IS null ORDER BY DataCadastro desc

exec VerificaCTe 10000025891
--UPDATE LONTANO_GSe.dbo.CTe SET Status = 0 WHERE Sequencial = 10000025891

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 707283 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 707283 and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 723871 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 723871 and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 534620  and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 534620  and CodUF = 'MS' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 534623  and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 534623  and CodUF = 'MS' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 534624  and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 534624  and CodUF = 'MS' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 534626   and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 534626   and CodUF = 'MS' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 534627    and CodUF = 'MS' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 534627    and CodUF = 'MS' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 729764 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 729764 and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 706569 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 706569 and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 734275 and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 734275 and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 734308  and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 734308  and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 734772  and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 734772  and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 735157  and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 735157  and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 736247   and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 736247   and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 736251   and CodUF = 'MT' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 736251   and CodUF = 'MT' and SerieConhecto = '0'

select QuantidadeSaida, QuantidadeChegada,TarifaFreteMotorista,* from ConhecimentosTransporte where NumConhecto = 200264  and CodUF = 'PR' and SerieConhecto = '0'
--UPDATE ConhecimentosTransporte set QuantidadeSaida = 1000.000, QuantidadeChegada = 1000.000  where NumConhecto = 200264   and CodUF = 'PR' and SerieConhecto = '0'

select * from Clientes where CodCliente IN (3000115,3001456)
--UPDATE Clientes set InscEstadual= '00017133240017' where CodCliente IN (3001456)
--UPDATE Clientes set InscEstadual= '0017133240017' where CodCliente IN (3000115)

select * from ConhecimentosTransporte where Sequencial IN (10000025873,10000025867)
SELECT * from LONTANO_GSe.dbo.CTe where Sequencial = 10000025873
--DELETE from LONTANO_GSe.dbo.CTe where Sequencial = 10000025873
--exec Grava_CTe 10000025873
EXEC VerificaCTe 10000025873
SELECT * from LONTANO_GSe.dbo.CTe where Sequencial = 10000025867
--DELETE from LONTANO_GSe.dbo.CTe where Sequencial = 10000025867
--exec Grava_CTe 10000025867
EXEC VerificaCTe 10000025867
	
select * from Usuarios where CodUsuario =14785
select * from PermissoesAcesso where CodUsuario = 14785 and CodPrograma LIKE 'conta%'
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--06/11/2024


exec Lontano_gse.dbo.MonitorarNFSe_RO_GO '5107602'
		
exec Lontano_gse.dbo.MonitorarNFSe_RO_GO '5218805'
--exec Lontano_gse.dbo.ReenviarNFSe_RO_GO '5218805', 113655  -- Reenviar


select NumRenavam, * FROM Veiculos where CodVeiculo = 265360

SELECT * from	ConhecimentosTransporte where NumConhecto = 414264 and CodUF = 'mg'
select NumeroCartao,* from OrdemEmbarque where NumOrdemEmbarque = 53111061
--UPDATE  OrdemEmbarque set NumeroCartao =  null where NumOrdemEmbarque = 53111061 --749617775

SELECT * from	ConhecimentosTransporte where NumConhecto = 414322 and CodUF = 'mg'
select NumeroCartao,* from OrdemEmbarque where NumOrdemEmbarque = 53111076
--UPDATE  OrdemEmbarque set NumeroCartao =  null where NumOrdemEmbarque = 53111076 --749728085


SELECT * from ConhecimentosTransporte where NumConhecto = 737450 and CodUF = 'mt'

EXEC VerificaCTe 890000032639
SELECT Status,* from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 890000032639
--UPDATE LONTANO_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 890000032639


EXEC MonitoraMDFe 89041996

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto IN (65952,65945,65953 ) and CodUF = 'GO' and SerieConhecto = '2'  -- Emitido
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Complemento'  where NumConhecto IN (65952,65945,65953 ) and CodUF = 'GO' and SerieConhecto = '2'

SELECT SituacaoConhecto,* from ConhecimentosTransporte where NumConhecto IN (65956) and CodUF = 'GO' and SerieConhecto = '2'  -- Emitido
--UPDATE ConhecimentosTransporte SET SituacaoConhecto = 'Complemento'  where NumConhecto IN (65956) and CodUF = 'GO' and SerieConhecto = '2'