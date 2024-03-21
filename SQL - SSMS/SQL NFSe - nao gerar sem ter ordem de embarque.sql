--#15344 - NFPS não gerada Prefeitura Rio Verde - GO

--Não estava sendo enviada a pois não tinha ordem de de embarque vinculada a NFSe, foi feito a comparação com a ultima autorizada 
--do mesmo cliente a, vamos verificar com Laércio pois se trada de um substitição em Lote (Começo do sequencial com 7). 
--Apos isso, foi dado um update com uma ordem semelhante e de forma automatica foi gerada na prifeitura. 

--1º verificar se esta aparecendo na procedure abaixo
exec Lontano_gse.dbo.ListarNFSeRO_EnvioPendente

--2º SQL usada para encontrar outras NFSe geradas para o mesmo cliente filial emitente e UF
select * from ConhecimentosTransporte where CodFilialEmitente = 'JAT' and Sequencial between 730000133000 and 730000134376 and coduf = 'GO' order by Sequencial

--3º Comparando a NFSe com problemas com outras geradas para o mesmo cliente e emitidas pela mesma filial.
select SituacaoConhecto, TipoConhecimento, * from ConhecimentosTransporte where Sequencial in (730000133905, 730000133906, 730000134375)
--Constatado que a dieferença entre elas era a falta de ordem de embarques no CTRC

--4º apos dar o update as mesma foram geradas automaticamentes
--update ConhecimentosTransporte set CodOrdemEmbarque = 28129652 where Sequencial in (730000134375) --28129652
--update ConhecimentosTransporte set CodOrdemEmbarque = NULL where Sequencial in (730000134375) --28129652





