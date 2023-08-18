Use LONTANO


select * from OrdemEmbarque where NumOrdemEmbarque in (24076897,24076899)
--delete from OrdemEmbarque where NumOrdemEmbarque in (24076899)


-------------------------------------------------------------------------------------------------------------------------
select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 487206 and CodUF = 'ms'
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 38.5416 where Sequencial = 500000005627 -- 18.5000

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 486982 and CodUF = 'ms'
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 39.3620 where Sequencial = 500000005601 -- 18.5000

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 486985 and CodUF = 'ms'
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 38.5416 where Sequencial = 500000005603 -- 18.5000	

select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto = 486983 and CodUF = 'ms'
--UPDATE ConhecimentosTransporte set TarifaFreteEmpresa = 39.3615 where Sequencial = 500000005602 -- 18.5000	

-------------------------------------------------------------------------------------------------------------------------
-- 50230711455829000103570000004859791004859797 CT-e Sefaz
-- 50230711455829000103570000004859821004859822 CT-e GS
select * from ConhecimentosTransporte where NumConhecto = 485979  and CodUF = 'ms'
select * from ConhecimentosTransporte_log where NumConhecto = 485979  and CodUF = 'ms'
exec VerificaCTe 520000037233
select * from ConhecimentosTransporte where NumConhecto = 485982  and CodUF = 'ms'
exec VerificaCTe 520000036989

-------------------------------------------------------------------------------------------------------------------------
SELECT (Cidades.NomeCidade + '-' + Cidades.CodUF) AS Cidade, ('CNPJ: ' + fIL.CNPJ) AS CNPJ, (Fil.Endereco + ' ' + Fil.Bairro + ' ' + Fil.CEP) AS Endereco, ('(' + Fil.DDD + ') ' + Fil.Fone1) AS Fone FROM FiliaisAgencias Fil INNER JOIN Cidades ON Fil.CodCidade = Cidades.CodCidade WHERE (Fil.CodFilial = 'AGB')

 SELECT EmissaoOrdemEmbarque.NumOrdemEmbarque, EmissaoOrdemEmbarque.Cliente, EmissaoOrdemEmbarque.NomeMotorista, EmissaoOrdemEmbarque.CPFMotorista, EmissaoOrdemEmbarque.RGMotorista,
 EmissaoOrdemEmbarque.EmissorRGMotorista, EmissaoOrdemEmbarque.CNHMotorista, EmissaoOrdemEmbarque.DDDMotorista, EmissaoOrdemEmbarque.FoneMotorista, EmissaoOrdemEmbarque.CidadeMotorista,
 EmissaoOrdemEmbarque.NomeFornec, EmissaoOrdemEmbarque.EnderecoFornec, EmissaoOrdemEmbarque.CNPJFornec, EmissaoOrdemEmbarque.CidadeFornec, EmissaoOrdemEmbarque.CRNTRCFornec, 
 EmissaoOrdemEmbarque.DDDFornec, EmissaoOrdemEmbarque.FoneFornec, EmissaoOrdemEmbarque.NumRenavam, EmissaoOrdemEmbarque.PlacaCavalo, EmissaoOrdemEmbarque.PlacaCarreta1, 
 EmissaoOrdemEmbarque.PlacaCarreta2, EmissaoOrdemEmbarque.PlacaCarreta3, EmissaoOrdemEmbarque.QuantEmbarcar, EmissaoOrdemEmbarque.DescEspecieMercadoria, EmissaoOrdemEmbarque.DescNaturezaCarga,
 EmissaoOrdemEmbarque.Origem, EmissaoOrdemEmbarque.Destino, EmissaoOrdemEmbarque.NumeroPedidoTransf, EmissaoOrdemEmbarque.NumeroPedidoCliente, EmissaoOrdemEmbarque.CidadeFilialRelEmb, 
 EmissaoOrdemEmbarque.EnderecoFilialRelEmb, EmissaoOrdemEmbarque.FoneFilialRelEmb, ImpressaoDeclaracaoEstadia.Tipo, EmissaoOrdemEmbarque.UFCavalo, EmissaoOrdemEmbarque.UFCarreta1,
 EmissaoOrdemEmbarque.CRNTRCCarreta1, EmissaoOrdemEmbarque.UFCarreta2, EmissaoOrdemEmbarque.CRNTRCCarreta2, EmissaoOrdemEmbarque.UFCarreta3, EmissaoOrdemEmbarque.CRNTRCCarreta3, 
 EmissaoOrdemEmbarque.VenctoCNHMotorista, EmissaoOrdemEmbarque.Unidade, EmissaoOrdemEmbarque.NomeColaborador, ImpressaoDeclaracaoEstadia.ValorEstadia, ImpressaoDeclaracaoEstadia.ExtensoValorEstadia, 
 EmissaoOrdemEmbarque.ClienteConsig, EmissaoOrdemEmbarque.FilEmitente, EmissaoOrdemEmbarque.CNPJFilialRelEmb, EmissaoOrdemEmbarque.Observacoes
 FROM   LONTANO.dbo.EmissaoOrdemEmbarque EmissaoOrdemEmbarque
 INNER JOIN LONTANO.dbo.ImpressaoDeclaracaoEstadia ImpressaoDeclaracaoEstadia ON EmissaoOrdemEmbarque.NumOrdemEmbarque=ImpressaoDeclaracaoEstadia.Sequencial
 WHERE  (EmissaoOrdemEmbarque.NumOrdemEmbarque = 50011347)


 select Cliente, ClienteConsig, * from EmissaoOrdemEmbarque  where NumOrdemEmbarque = 50011347

 --UPDATe LONTANO.dbo.EmissaoOrdemEmbarque set Cliente = 'Fs Agrisolutions Industria de Biocombust' where EmissaoOrdemEmbarque.NumOrdemEmbarque = 50011347  -- Girassol Agricola Ltda

 -------------------------------------------------------------------------------------------------------------------------

 select ValorNF,* from ConhecimentosTransporte where NumConhecto = 486053  and CodUF = 'ms' -- 9470307.00
 --UPDATE ConhecimentosTransporte set ValorNF =  9470307.00 where Sequencial = 830000063303