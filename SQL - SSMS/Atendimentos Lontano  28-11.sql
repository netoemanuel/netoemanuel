SELECT PisPasep,* FROM Fornecedores WHERE (CodFornecedor = 2007830) 
--UPDATE Fornecedores SET PisPasep = '168.18014.23-3' WHERE (CodFornecedor = 2007830) -- 16818014233 129.48291.38-2

--Anota !

EXEC MonitoraMDFe 47020587
select Status, * from LONTANO_GSe.dbo.MDFe where Sequencial = 1755032 
--UPDATE LONTANO_GSe.dbo.MDFe SET Status = 0 where Sequencial = 1755032
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET nRec = '941240030950153', nProt = '941240030950153' where Sequencial = 1755032 and ID = 25492569 
--coloca cstat = 204 e status do mdfe = 2 TABELA MDFe_LOG
--UPDATE LONTANO_GSe.dbo.MDFe_LOG SET Status = 2, cstat = 204 where Sequencial = 1755032 and ID = 25492569 





SELECT MovimentacaoPneus.NumPneu, Pneus.CodMarcaPneu, MovimentacaoPneus.DataMovimento, MovimentacaoPneus.CodPosicaoPneu, Pneus.CodModeloPneu, Pneus.MedidaDimensao, Pneus.CodFornecedor, Pneus.DataAquisicao, Pneus.ValorAquisicao, Pneus.SituacaoPneu, MovimentacaoPneus.CodVeiculo, Pneus.KmPneu, Pneus.EstadoPneu, MovimentacaoPneus.Odometro FROM MovimentacaoPneus
INNER JOIN Pneus ON MovimentacaoPneus.NumPneu = Pneus.NumPneu
WHERE (MovimentacaoPneus.NumPneu = 94658) ORDER BY MovimentacaoPneus.NumPneu, MovimentacaoPneus.DataMovimento, MovimentacaoPneus.SeqMovimento



SELECT NomeUsuario, * FROM PermissoesAcesso
join Usuarios u ON u.CodUsuario = PermissoesAcesso.CodUsuario
WHERE  (CodPrograma = 'frmImportarArquivoServidor') 
SELECT * from Programas where CodPrograma = 'frmImportarArquivoServidor'

SELECT * FROM PermissoesAcesso WHERE (CodUsuario = 14870) AND (CodPrograma = 'frmImportarArquivoServidor')
SELECT * from Usuarios where NomeUsuario like '%itamar%'

SELECT * FROM PermissoesAcesso_log WHERE (CodUsuario = 14870)