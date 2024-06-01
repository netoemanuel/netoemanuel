--746 Rejeicao Tipo de serviço invalido para o tomador informado

--A rejeição ocorre quando foi utilizado os seguintes parâmetros:

--Tomador do Serviço é o emitente do CTe
--Contribuinte de ICMS (indIEtoma = 1)
--Possui o CNPJ base diferente do Remetente e Destinatário do CTe
--Tipo do Serviço do CTe é Normal (tpServ = 0)
--A Sefaz não aceita estas condições para CTe e por esse motivo faz a rejeição.

--1- Altere o Tipo de Serviço, selecionando uma das opções disponíveis:

--1 - Subcontratação
--2 - Redespacho
--3 - Redespacho Intermediário
--4 - Ou remova do cadastro do Tomador a Inscrição Estadual para que seja gerado como: Não Contribuinte.

--CASO DE EXEMPLO SOLICITADO POR THIAGO NO PLANTÃO 08/08/2023
--exec VerificaCTe 80000085157
--para autorizar como ISENTO
--precisa alterar a IE do tomador para ISENTO
--update LONTANO_GSe.dbo.cte set status = 0, indIEToma = 9 where sequencial = 80000085157

--###############################################################################################################
--CASO CORRIGIDO TROCANDO O TOMADOR QUE ERA O MESMO QUE ESTAVA EMITINDO O CTE(LTN).
--############################################################################################################### 

--CASO RDM ###############################################################################################################
--CASO CORRIGIDO COLOCANDO COMO NÃO CONTRIBUINTE E AUTORIZOU O CTE(RDM). 
--alteramos para não contribuinte o Saulo achou uma consulta aqui a qual fala que deve colocar o tomador como consumidor 
--final nesse caso, o consumidor final ele não é contribuinte colocou como não contribuinte e autorizou o cte
--EXEC VERIFICACTE 160000015755

--6/7/22 Joilson
--EXEC VERIFICACTE 660000016339

--24/02/23 Eni/Joilson
--EXEC VERIFICACTE 690000008473
--###############################################################################################################