--402 -  Rejeicao   XML da area de dados com codificacao diferente de UTF8
--ESSE PROBLEMA OCORRE POR ALGUMA DIVERGENCIA NO XML COM ALGUM CARACTER ESPECIAL COLOCADO PELOS EMBARCADORES COPIANDO DADOS DE ALGUM LUGAR
--PARA RESOLVER PRECISA ABRIR O XML DE ENVIO E ANALISAR PO ALGUM CARACTER DIFERENTE, APÓS ENCONTRAR O CARACTER PROCURAR DE ONDE ESTA VINDO ESSE INFORMAÇÃO E FAZER A CORREÇÃO
--CAMPOS QUE JA ENCONTREI COM PROBLEMA (ObsConhecto, TAMBEM NO CADASTRO DE MOTORISTAS)
--CARACTERS JA ENCONTRADOS(NBSP(html), º)


select ObsConhecto, * from ConhecimentosTransporte where NumConhecto = 691038 and CodUF = 'MT'--CodFilialEmitente = 'SRS' order by DataEmissao desc
exec VerificaCTe 20000148753
select XML_Enviado,* from LONTANO_GSe.dbo.cte where Sequencial = 120000024221	
--delete from LONTANO_GSe.dbo.cte where Sequencial = 20000148770
--delete from LONTANO_GSe.dbo.cte_log where Sequencial = 20000148753
exec Grava_CTe 20000148770
select Observacoes,* from OrdemEmbarque where NumOrdemEmbarque = 37004432
select ObsConhecto, * from ConhecimentosTransporte where Sequencial = 20000148770
--update ConhecimentosTransporte set ObsConhecto	= 'PARA PAGAMENTO DE SALDO NECESSARIO TICKET DE DESCARGA D3 /PRODUTO FOSFATO MONOAMONICO 11%N TOCANTINS GRANEL D.I 23/1896198-0 - Pedido 118961980 - LOTE SINOP  #30214#.' where Sequencial = 20000148770
--UPDATE LONTANO_GSe.dbo.cte set Status = 0 where Sequencial = 20000148753

--CASOS COM ESSE PROBLEMA RESOLVIDOS ANTERIORMENTE PARA SE BASEAR
select ObsConhecto, * from ConhecimentosTransporte  where NumConhecto = 684965 and CodUF = 'MT'
exec VerificaCTe 20000148770
exec VerificaCTe 370000003478

-- #11548 Filial Rondonópolis - MT foi necessario alterar o nome da cidade para retirar Ç das obs que formam o XML de envio. 
select * from Cidades where CodCidade = 57681
--UPDATE Cidades SET NomeCidade = 'Nova Esperanca' where CodCidade = 57681
--UPDATE Cidades SET NomeCidade = 'Nova Esperança' where CodCidade = 57681
select * from LONTANO_GSe.dbo.Cidades_e where NomeMunicipioIBGE = 'Nova Esperança'


