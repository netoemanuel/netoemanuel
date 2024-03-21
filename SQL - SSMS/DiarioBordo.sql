--==============================================================================================================
--| Diário de Bordo
--==============================================================================================================

SELECT DISTINCT TOP(50) CodMotorista, MesAno, CodVeiculo, CodUsuarioCriacao
FROM DiarioBordoMotorista ORDER BY MesAno DESC


SELECT DiarioBordo.*, Feriados.DescFeriado AS DiaSemana FROM DiarioBordo LEFT OUTER JOIN Feriados 
ON Feriados.Data = DiarioBordo.DataCompleta 
WHERE (CodMotorista = 1105489   ) AND (MesAno = '05/2015') ORDER BY Dia, HoraInicial

SELECT * FROM DiarioBordoMotorista WHERE MesAno = '09/2023' AND Dia = 31


SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489 AND MesAno = '03/2022' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489 AND MesAno = '04/2022' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489 AND MesAno = '05/2022' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 91003077 AND MesAno = '06/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1040394 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1106118 AND MesAno = '09/2023' ORDER BY Dia

SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1106116 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1104187 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1045274 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1004475 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1004475 AND MesAno = '09/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105666 AND MesAno = '11/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE MesAno = '11/2023' and Dia = 31 ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105835 AND MesAno = '11/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1104730 AND MesAno = '11/2023' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE dia = 31 AND MesAno = '11/2023' ORDER BY Dia


SELECT * FROM DiarioBordoMotorista_log WHERE CodMotorista = 7000017  order by DataLog desc AND MesAno = '02/2024'

----DELETE FROM DiarioBordoMotorista WHERE Sequencial = 7024679
--DELETE FROM DiarioBordoMotorista WHERE Sequencial = 6997264

--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 7024679

--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6978045 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6740665 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6766110 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6791016 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6740665 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6747225 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6801160 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6747030 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6815231
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6758011 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6749677 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6756400 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6786103 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6774553 

--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6740665 
--update DiarioBordoMotorista  set dia = 30 WHERE Sequencial = 6815733 


SELECT DiarioBordo.*, Feriados.DescFeriado AS DiaSemana FROM DiarioBordo
LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordo.DataCompleta 
WHERE (CodMotorista = 1040394) AND (MesAno = '09/2023') ORDER BY Dia, HoraInicial


SELECT SituacaoVeiculo, * FROM Veiculos WHERE CodVeiculo = 4466


--SELECT * FROM DiarioBordoMotorista WHERE MesAno = '01/2016' ORDER BY Dia DESC --06/2017	31	18:35	21:35
SELECT * FROM DiarioBordoMotorista WHERE MesAno = '09/2023' AND Dia = 31 
--DELETE FROM DiarioBordoMotorista WHERE MesAno = '09/2023' AND Dia = 31

------
--DELETE FROM DiarioBordoMotorista WHERE MesAno = '09/2023' AND Dia = 31
--08/09/2023 - Atendimento Clovis, Grupo GS: 
--Sequencial	CodMotorista	MesAno	Dia	HoraInicial	HoraFinal	Tipo	CodVeiculo	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	SeqJornadaOmnilink	IndConferencia
--6737650	1040394	09/2023	31	15:01	16:54	D	22034	20044	RO	2023-09-08 07:52:11.000	20044	RO	2023-09-08 07:53:38.000	NULL	N
---------


--DELETE FROM DiarioBordoMotorista WHERE CodMotorista = 1105489     AND MesAno = '09/2016' 

SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489AND Sequencial = 3953393
--DELETE DiarioBordoMotorista WHERE CodMotorista = 1105489     AND Sequencial = 3953393
--UPDATE DiarioBordoMotorista SET MesAno = '10/2016' WHERE CodMotorista = 1105489  AND Sequencial = 1455956

SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489    and Sequencial = 1932243
--Delete FROM DiarioBordoMotorista WHERE CodMotorista = 1105489    and Sequencial = 1932243
--UPDATE DiarioBordoMotorista SET MesAno = '11/2015' WHERE CodMotorista = 1105489    and Sequencial = 732878

SELECT * FROM DiarioBordoMotorista WHERE Sequencial = 1762896
--DELETE FROM DiarioBordoMotorista WHERE Sequencial = 1762896
	


--==============================================================================================================
--| Diário de Bordo Sintético
--==============================================================================================================

--select * FROM DiarioBordoSintetico where CodMotorista = 1105489     and MesAno = '01/2016' and Dia > '2016-01-20'
--select * FROM DiarioBordoSintetico where CodMotorista = 1105489     and MesAno = '01/2016' and Dia < '2016-01-21'
SELECT * FROM DiarioBordoSintetico WHERE MesAno = '11/2016' and Dia > '2016-11-20'
SELECT * FROM DiarioBordoSintetico WHERE MesAno = '01/2017'

SELECT * FROM DiarioBordoSintetico WHERE CodMotorista = 1105489 AND MesAno = '09/2021' ORDER BY Dia
SELECT * FROM DiarioBordoSintetico WHERE CodMotorista = 1105489 AND MesAno = '09/2021' ORDER BY Dia

SELECT * FROM DiarioBordoSintetico WHERE CodMotorista = 1105489 AND MesAno = '01/2021' ORDER BY Dia
SELECT * FROM DiarioBordoSintetico WHERE  MesAno = '01/2021' ORDER BY Dia
--UPDATE DiarioBordoSintetico SET MesAno = '12/2020'  WHERE  MesAno = '01/2021' 

SELECT * FROM DiarioBordoSintetico WHERE CodMotorista = 1105489 ORDER BY DataCriacao DESC

SELECT SituacaoVeiculo, * FROM Veiculos WHERE CodVeiculo = 8505


SELECT * FROM DiarioBordoSintetico WHERE CodMotorista = 1105489    AND Sequencial >= 673070 AND Sequencial <= 673081 
--UPDATE DiarioBordoSintetico SET MesAno = '12/2020' WHERE CodMotorista = 1105489    AND Sequencial >= 673070 AND Sequencial <= 673081
--UPDATE DiarioBordoSintetico SET MesAno = '05/2017' WHERE CodMotorista = 1105489    AND Sequencial = 180930

--DELETE FROM DiarioBordoSintetico WHERE CodMotorista = 1105489    AND Sequencial >= 180976 AND Sequencial <= 180978
--DELETE FROM DiarioBordoSintetico WHERE CodMotorista = 1105489    AND Sequencial = 50953 AND Sequencial <= 50929 and MesAno = '11/2015'
--DELETE FROM DiarioBordoSintetico WHERE CodMotorista = 1105489     AND MesAno = '04/2020'

--=============VERIFICA LOG==============================================================================
SELECT * from DiarioBordoMotorista_Log WHERE CodMotorista = 1105489     AND MesAno = '12/2015' ORDER BY Dia
--=============VERIFICA USUÁRIO==========================================================================
SELECT * FROM Usuarios WHERE CodUsuario = 11752

--SELECT * FROM Motoristas WHERE CodMotoristas = 1105489   
--SELECT * FROM LONTANO.dbo.motorista

SELECT * FROM Usuarios WHERE 
--CodUsuario = 11517
CodUsuario = 11752

--==================================================================================================

SELECT * FROM PermissoesAcessoFiliais WHERE CodUsuario = 11657

SELECT SituacaoVeiculo, * FROM Veiculos WHERE CodVeiculo = 1042
SELECT * FROM Motoristas WHERE CodMotorista = 39000049
SELECT * FROM Fornecedores WHERE CodFornecedor = 39000037


SELECT * FROM Clientes WHERE CodCliente = 1000829
SELECT * FROM Clientes WHERE CodCliente = 1016222
SELECT * FROM Rotas WHERE CodRota = 640968

SELECT * FROM Cidades WHERE CodCidade = 109361
SELECT * FROM Cidades WHERE CodCidade = 152279

SELECT * FROM PedidosFrete WHERE CodPedidoFrete = 64001071

select Situacao, * from OrdemEmbarque where NumOrdemEmbarque = 64005818
--UPDATE OrdemEmbarque SET Situacao = 1 where NumOrdemEmbarque = 64005818


select * FROM ConhecimentosTransporte where CodOrdemEmbarque = 64005818 
SELECT * from CaramuruControle where id = 6000819361
SELECT * from CaramuruControle_NFe where id = 6000819361
select * from OrdemEmbarque where NumOrdemEmbarque = 64005818


SELECT DiarioBordo.*, Feriados.DescFeriado AS DiaSemana 
FROM DiarioBordo LEFT OUTER JOIN Feriados ON Feriados.Data = DiarioBordo.DataCompleta 
WHERE (CodMotorista = 1105489 ) AND (MesAno = '10/2016') ORDER BY Dia, HoraInicial

SELECT * FROM DiarioBordo WHERE (CodMotorista = 1105489 ) AND (MesAno = '11/2016')
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489     AND MesAno = '10/2016' ORDER BY Dia
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1105489  and Sequencial = 1471774
--DELETE FROM DiarioBordoMotorista WHERE CodMotorista = 1105489  and Sequencial = 1471774
--UPDATE DiarioBordoMotorista SET MesAno = '10/2016' WHERE CodMotorista = 1105489  and Sequencial = 1471774

--SELECT * FROM Feriados ORDER by Data DESC
--WHERE Data LIKE '%2016-11%'



--06/01/17
SELECT * FROM DiarioBordoMotorista WHERE CodMotorista = 1104081 AND MesAno = '01/2017'

SELECT ISNULL(CodColaboradorAprov , '0') AS CodColaboradorAprov,  * from AcertoViagem where CodMotorista = 1105489and MesAno = '01/2017' AND DataFinal >= '01/21/2017'

SELECT * FROM AcertoViagem WHERE CodMotorista = 1104081 and MesAno = '01/2017'
SELECT * FROM AcertoViagem WHERE DataFinal = '2017-01-21 00:00:00'

--172230	1105489	03/2017	2017-02-21 00:00:00	2017-03-20 00:00:00	7235	2017-02-21 00:00:00	07:20	10:00	01:40	00:00	NULL	Normal	10001	CG	2017-04-02 10:33:12.677	NULL	NULL	NULL	N	NULL


--htg-0017 - scania - 420
SELECT SituacaoVeiculo, * FROM Veiculos WHERE PlacaVeiculo = 'HTG-0017'
SELECT DescVeiculo, * FROM Veiculos WHERE (CodVeiculo = 407750)

SELECT CodVeiculo, SituacaoVeiculo, PlacaVeiculo FROM Veiculos WHERE (PlacaVeiculo = 'HTG-0017') AND (SituacaoVeiculo <> 'Inativo')

--EXEC ImportaDiarioAnalitico 1104712, '07/21/2021 00:00:00', '07/31/2021 00:00:00'
--EXEC ImportaDiarioAnalitico 1104712, '2021-07-22 00:00:00', '2021-07-23 00:00:00'


SELECT 
CONVERT(SMALLDATETIME,(RIGHT(MesAno,4) + '-' + CASE WHEN (LEFT(MesAno,2) = '02' AND Dia > CASE WHEN (CONVERT(INT,RIGHT(MesAno,4)) % 4) = 0 THEN 29 ELSE 28 END) THEN '03' ELSE CASE WHEN (LEFT(MesAno,2) = '04' AND Dia > 30) THEN '03' ELSE LEFT(MesAno,2) END END + '-' + CASE WHEN Dia < 10 THEN '0' ELSE '' END + CONVERT(VARCHAR(2),Dia)+' 00:00:00')) AS DataCompleta
FROM DiarioBordoMotorista WHERE CodMotorista = 1105489 AND MesAno = '07/2021' ORDER BY Dia

SELECT * FROM Usuarios WHERE NomeUsuario LIKE '%larissa isabel%'
SELECT Email, * FROM Colaboradores WHERE CodColaborador = 12288