exec VerificaCTe 40000038207


select * from RODOMAIOR_GSe.dbo.nfe where ID = '51240314796754001003550100000512101528470962'


exec MonitoraMDFe 4039895
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 574323
exec MonitoraMDFe 4039894
--UPDATE RODOMAIOR_GSe.dbo.MDFe set Status = 0 where Sequencial = 574323


select PercDescSeguro,* from ParametrosGerais_log where CodFilial = 'CST' order by DataLog desc
SELECT U1.DescUF AS UFOrigem, U2.DescUF AS UFDestino FROM UnidadesFederacao U1, UnidadesFederacao U2 WHERE (U1.CodUF = 'PR') AND (U2.CodUF = 'AC')


SELECT * FROM SeguroTranspCargas where UFOrigem = 'PR' and UFDestino = 'AC'
