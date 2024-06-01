USE RODOMAIOR

SELECT * from RODOMAIOR_GSe.dbo.cte where ID = '50240511595217000108570000002001311002001314'
EXEC VerificaCTe 190000013675
SELECT * FROM RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 190000013675
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 190000013675


select * from AcertoViagem_Log where CodUsuarioLog = 11803 AND AcaoLog = 'E' ORDER by DataLog desc
select * from AcertoViagem where CodMotorista = 1090396 order BY DataCriacao desc



SELECT * from ConhecimentosTransporte WHERE NumConhecto = 200234 and CodUF =  'MS'
EXEC VerificaCTe 80000019133
SELECT * FROM RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 80000019133
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 80000019133
--Rejeicao: Vedado cancelamento se existir MDF-e autorizado para o CTe [chMDFe: 50240511595217000108580000001194141006709916]

SELECT * from CaramuruControle where ID IN ('6001844220','6001844278','6001844303')

EXEC MonitoraMDFe 18015703
--UPDATE RODOMAIOR_GSe.dbo.MDFe SET Status = 0 where Sequencial = 598419
--delete FROM RODOMAIOR_GSe.dbo.MDFe WHERE Sequencial = 598420