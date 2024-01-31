	--
SELECT CodOrdemEmbarque,CIOT, * from ConhecimentosTransporte where NumConhecto = 700760   and CodUF = 'MT' --2023-05-02 20:20:00
--update ConhecimentosTransporte set DataEmissao = '2023-05-02 20:20:00' where sequencial = 450000023531
--
SELECT CodOrdemEmbarque FROM ConhecimentosTransporte WHERE CodUF = 'SP' AND NumConhecto = 179355
--
SELECT EmpresaValePedagio, ValorPedagioSemParar, TipoDispositivoValePedagio,CIOT FROM OrdemEmbarque WHERE NumOrdemEmbarque = 81011801

SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 40014451


--
--Alterar dispositivo
select TipoDispositivoValePedagio  from OrdemEmbarque where NumOrdemEmbarque = 53101266 -- 0
--update OrdemEmbarque set TipoDispositivoValePedagio = 1 where NumOrdemEmbarque = 78029340

--update OrdemEmbarque set TipoDispositivoValePedagio = 0 where NumOrdemEmbarque = 78029340
--
--update OrdemEmbarque set NumCartaoValePedagio = null where NumOrdemEmbarque = 78029340
--
--Limpar a Roteirzação--
SELECT CodOrdemEmbarque,CIOT, Pedagio,* from ConhecimentosTransporte where NumConhecto = 395257   and CodUF = 'MG'
--UPDATE ConhecimentosTransporte set Pedagio = 276.60 where Sequencial = 40000036424 -- 276.60
	SELECT EmpresaValePedagio, NumCartaoValePedagio, RotaSemParar,ValorPedagioSemParar FROM OrdemEmbarque WHERE NumOrdemEmbarque = 30060345
--update OrdemEmbarque set EmpresaValePedagio = 'Banco Bradesco S/A' , NumCartaoValePedagio = 4417812013348815, RotaSemParar = 'UNAI MG X UBERLANDIA MG', ValorPedagioSemParar = 266.40  where  NumOrdemEmbarque = 30060345 
--update OrdemEmbarque set EmpresaValePedagio = NULL , NumCartaoValePedagio = NULL, RotaSemParar = NULL, ValorPedagioSemParar =NULL  where  NumOrdemEmbarque = 30060345 

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812013348815	UNAI MG X UBERLANDIA MG	266.40


--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	0	177.80

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Roadcard Instituição de Pag. I	4417812006743972	1	276.60

--#13434 - Limpar roteirização
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--NULL	0733628018	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70

--Novo ticket criado: #13380 - LIMPAR ROTEIRIZAÇÃO
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	0733628018	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0733628686	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0733627912	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0729095419	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0733628245	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0735074156	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0733627994	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70
--Centro de Gestao de Meios de P	0734402834	SORRISO-MT X RODONOPOLIS-MT VIA MUTUM	353.70

--Novo ticket criado: #13314 - ROTEIRIZAÇÃO PEDAGIO CTE: 192980
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--NULL	4198071020115015	GUAIRA-MS X RIO GRANDE-RS	418.00

--#13207 - ROTEIRIZAÇÃO PEDAGIO CTE: 192980
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	0732721958	GUAIRA-MS X RIO GRANDE-RS	284.40

--#13038 - Mudança de Dispositivo de Pedágio CTe 692469-MT
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	0735486746	IPIRANGA DO NORTE - MT X MIRITITUBA - MT (VIA IPIRANGA)	944.19


--#13135 - Limpar roteirização
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812016490424	CAMPO GRANDE X SANTOS	1224.90


--#12734 - EXCLUSAO DE ROTERIZACAO DE CTE 604910 E CTE 604911

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812015519264	0	0.00

--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4198071136422446	0	0.00

 --#12626 - EXCLUIR ROTERIZAÇÃO OC 4030275
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812015773234	SAPEZAL/MT X  RONDONOPOLIS/MT	293.40

--plantao 17/10
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812014411182	NULL	NULL

--#12227 - Alterar pedágio ct-e DF-16542
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812000660016	BRASILIA/DF X ARAGUARI/MG	218.70


--# 11770 - SOLICITO SUPORTE DE EMBARQUE CONHECIMENTO 687459
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	0	682.50

--#11692 - ERRO INTEGRAÇÃO PEDAGIO
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Banco Bradesco S/A	4417812013828154	0	0.00

--#11703 - VERIFICAR PEDAGIO CTE 686343 FILIAL SORRISO
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	0730310348	SORRISO X MIRITITUBA - NOVO	818.19

--#11571 - ERRO AO PAGAR PEDÁGIO SEM PARAR CT-E 14651
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	2	772.20

--#11567 - TROCA DE PEDAGIO - TAG PARA PAMCARD - FILIAL CAMPO NOVO DO PARECIS-MT
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	0736213769	Campo Novo do Parecis, MT X Imbituba, SC	673.40

--#11226 - Alterar dispositivo de pedágio
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	0736397043	CARLINDA-MT ITAITUBA-PA	831.60

--#10966 com Assunto: "FAVOR VERIFICAR REFERENTE PAGAMENTO DE PEDAGIO CTE 683079".
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--Centro de Gestao de Meios de P	00000000	1	287.10

--#10421 - Pedágio ct-e GO-588052
--EmpresaValePedagio	NumCartaoValePedagio	RotaSemParar	ValorPedagioSemParar
--		NULL			  4417812011092605			 0					90.00


SELECT RotaSemParar, ValorPedagioSemParar, TipoDispositivoValePedagio,EmpresaValePedagio,NumCartaoValePedagio FROM OrdemEmbarque WHERE NumOrdemEmbarque = 24076776
 --UPDATE ConhecimentosTransporte set TipoDispositivoValePedagio = null, NumCartaoValePedagio = null where Sequencial = 140000003034

SELECT * FROM LogRoteirizacaoPedagio WHERE NumOrdemEmbarque = 19037203
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao, DataLog
from OrdemEmbarque_Log where NumOrdemEmbarque = 81011801 ORDER BY datalog desc
--
SELECT RotaSemParar, ValorPedagioSemParar,EmpresaValePedagio , TipoDispositivoValePedagio, NumCartaoValePedagio, Situacao
from OrdemEmbarque where NumOrdemEmbarque = 40014293
--
SELECT TOP(1000) oe.CIOT,CTRC.TipoConhecimento,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN CartaFrete CF ON CF.Sequencial = CTRC.Sequencial
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 191137 
ORDER BY O.NumSeq DESC, O.SeqConsulta DESC
--update OrdemEmbarque set CIOT ='REPOM' where NumOrdemEmbarque = 84025247

-- quando for olhar apenas um CTRC, no caso for complemento usar essa SQL:
--SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
--INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
--INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
--inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
--LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id AND CF.Sequencial = CTRC.Sequencial
--WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'MG' AND CTRC.Numconhecto = 387207                     
--ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC 
--
SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 119777                                 
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC
	
select NumeroCartao,* from OrdemEmbarque where NumOrdemEmbarque = 7037862 
--UPDATE OrdemEmbarque set NumeroCartao = 751781147 where NumOrdemEmbarque = 7037862 -- NUMERO CARTÃO REPOM ANTIGO 751781287
select CIOT, * from OrdemEmbarque_log where NumOrdemEmbarque = 72049216 order by DataLog desc
--
select ciot,* from OrdemEmbarque_log where NumOrdemEmbarque = 25109296 order by DataLog desc
--
select * from ConhecimentosRelacaoFretes where NumSeqConhecto = 100000002297 
select * from ConhecimentosRelacaoFretes_Log where NumSeqConhecto = 100000002297 
SELECT * FROM CartaFrete WHERE Id = 778459
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 778459
--
select CIOT,* from OrdemEmbarque where NumOrdemEmbarque = 41057445
--
SELECT RotaSemParar, ValorPedagioSemParar, EixosSemParar, TipoDispositivoValePedagio 
from OrdemEmbarque_Log where NumOrdemEmbarque = 11020034 ORDER BY datalog desc
--
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1388581 -- 73906459
--
SELECT * FROM CartaFrete WHERE Id = 80195288
SELECT * FROM CartaFrete_Parcela WHERE IdCartaFrete = 80195288
--
--Neste caso a roteirização foi feita na pamcard e o dispositivo foi alterado para Sem Parar, 
--Ai não achar o pedágio. Posso apagar os dados da roteirização da ordem para você poder refazer a roteirização e pagar pela Sem Parar,
--Mas pode dar divergência no valor que foi destacado no conhecimento.
--
SELECT RotaSemParar, ValorPedagioSemParar  FROM OrdemEmbarque WHERE NumOrdemEmbarque = 74011946
SELECT RotaSemParar, ValorPedagioSemParar  FROM OrdemEmbarque_log WHERE NumOrdemEmbarque = 74011946
--
--UPDATE OrdemEmbarque SET RotaSemParar = NULL, ValorPedagioSemParar = NULL, NumCartaoValePedagio = null  WHERE NumOrdemEmbarque = 44061232
--update OrdemEmbarque set EmpresaValePedagio = null , NumCartaoValePedagio = null  where  NumOrdemEmbarque = 63009078 
--

--Ticket #3175 - Erro pedágio visto com Jhonny dia 10/08/2022
--falta a informação do CodViagemPamCard na tela do CTCR e Consulta Integração PamCard/SemParar 
--pegar o CodViagemPamcard na SQL acima (TOP100) na coluna descrição ocorrencia que estiver 'Inserir Viagem'.
--a SQL usada pelo Jhonny foi:

--Quando nao aparecer nada na grid, ver a conversa com Jhonny dia 19/12/2023 msg "deve ter perdido o log que mostra que a viagem foi comprada"
--#14244 < ERRO GS - ENVIAR PEDAGIO SEM PARAR CTE 610937 >
SELECT * FROM CartaFrete_Ocorrencia WHERE IdCartaFrete = 1507337 AND NumSeq = 19
--UPDATE CartaFrete_Ocorrencia SET CodViagemPamcard = 62094996, tipoOcorrencia = 'SUCESSO', Erro = '0 - OPERAÇÃO REALIZADA COM SUCESSO' WHERE IdCartaFrete = 1507337 AND NumSeq = 19

--IdCartaFrete	NumSeq	SeqConsulta	DataCriacao	CodUsuarioCriacao	CodFilialCriacao	DescricaoOcorrencia	ConteudoXml	tipoOcorrencia	Erro	Valido	CodAdmPagtoFrete	Protocolo	CodViagemPamcard
--1507337	19	1	2023-12-19 17:00:13.807	14102	CG	INSERIR VIAGEM	QPB5197	ENVIO		1	7	NULL	NULL
--

select * from LogRoteirizacaoPedagio where NumOrdemEmbarque =40014293

----------------------------------------------------------------------------------------------------------------------------------
--REPOM

--Erro ao Gerar CIOT
--CÓDIGO: 728 - 'TOTALFREIGHTVALUE' SHOULD NOT BE EMPTY.; CÓDIGO: 728 - 'TOTALFREIGHTVALUE' MUST BE GREATER THAN '0'.;
--Erro devido a ter saldo pago na guia 2 os CT-es do do chamado são complemento 


-- Erro ao pagar Estadia REPOM 
--Quando tiver ess retorno:
--CÓDIGO: 728 - 'PAYMENT.EXPECTEDDELIVERYDATE' MUST BE GREATER THAN OR EQUAL TO '8/31/2023 12:00:00 AM'.; 
--Fazer:
--Alterar a data da emissão do CT-e para uma data mais recente e depois de ser feito o pagamento, voltar a data original
SELECT DataEmissao,  * from ConhecimentosTransporte where NumConhecto = 180455   and CodUF = 'PR' --2023-08-24 00:00:00  -- EXEMPLO caso dia 31/08/2023
--update ConhecimentosTransporte set DataEmissao = '2023-06-09 08:55:53.000' where sequencial = 430000005373 -- 2023-10-31 13:15:00


-- #12791 - ERRO AO PAGAR ESTADIA CTE 383807  --2023-07-14 19:09:00


SELECT  * from ConhecimentosTransporte CTRC --where DataEmissao <> DataCriacao order by DataEmissao desc
inner join LONTANO_GSe.dbo.cte CTE on CTE.Sequencial = CTRC.Sequencial

where CTRC.DataEmissao <> CTE.DataCriacao order by CTE.DataCriacao desc







