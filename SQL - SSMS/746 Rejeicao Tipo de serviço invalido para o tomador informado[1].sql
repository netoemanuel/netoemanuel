--746 Rejeicao Tipo de servi�o invalido para o tomador informado

--A rejei��o ocorre quando foi utilizado os seguintes par�metros:

--Tomador do Servi�o � o emitente do CTe
--Contribuinte de ICMS (indIEtoma = 1)
--Possui o CNPJ base diferente do Remetente e Destinat�rio do CTe
--Tipo do Servi�o do CTe � Normal (tpServ = 0)
--A Sefaz n�o aceita estas condi��es para CTe e por esse motivo faz a rejei��o.

--1- Altere o Tipo de Servi�o, selecionando uma das op��es dispon�veis:

--1 - Subcontrata��o
--2 - Redespacho
--3 - Redespacho Intermedi�rio
--4 - Ou remova do cadastro do Tomador a Inscri��o Estadual para que seja gerado como: N�o Contribuinte.

--CASO DE EXEMPLO SOLICITADO POR THIAGO NO PLANT�O 08/08/2023
--exec VerificaCTe 80000085157
--para autorizar como ISENTO
--precisa alterar a IE do tomador para ISENTO
--update LONTANO_GSe.dbo.cte set status = 0, indIEToma = 9 where sequencial = 80000085157

--###############################################################################################################
--CASO CORRIGIDO TROCANDO O TOMADOR QUE ERA O MESMO QUE ESTAVA EMITINDO O CTE(LTN).
--############################################################################################################### 

--CASO RDM ###############################################################################################################
--CASO CORRIGIDO COLOCANDO COMO N�O CONTRIBUINTE E AUTORIZOU O CTE(RDM). 
--alteramos para n�o contribuinte o Saulo achou uma consulta aqui a qual fala que deve colocar o tomador como consumidor 
--final nesse caso, o consumidor final ele n�o � contribuinte colocou como n�o contribuinte e autorizou o cte
--EXEC VERIFICACTE 160000015755

--6/7/22 Joilson
--EXEC VERIFICACTE 660000016339

--24/02/23 Eni/Joilson
--EXEC VERIFICACTE 690000008473
--###############################################################################################################