USE LONTANO

SELECT PisPasep,* FROM Fornecedores WHERE CodFornecedor = 99000141
SELECT PisPasep,* FROM Fornecedores ORDER BY DataCriacao DESC  -- 125.96693.31-5
--UPDATE Fornecedores SET PisPasep = '119.63637.27-0' WHERE CodFornecedor = 99000141
--11963637270
-------------------------------------------------------------------------------------------------------------------------------
select Status,* from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1503797
-------------------------------------------------------------------------------------------------------------------------------

select * from Usuarios where NomeUsuario like '%Marilene%' -- 10278
SELECT CodFilial FROM FiliaisAgencias WHERE (TipoFilial = 'Matriz')
SELECT * FROM PermissoesAcessoFiliais WHERE (CodUsuario = 10509) AND (CodFilial = 'UBL') AND (CodFilialAcesso IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = 9))

-------------------------------------------------------------------------------------------------------------------------------
SELECT IndImpressao,* FROM Lontano_GSe.dbo.CTe_Dacte WHERE (Sequencial = 410000050109) AND (ISNULL(IndImpressao, 'N') = 'S')
select IndImpressao,* from LONTANO_GSe.dbo.CTe where Sequencial =  410000050109
--update LONTANO_GSe.dbo.CTe set IndImpressao = 'S' WHERE (Sequencial = 410000050109)
-------------------------------------------------------------------------------------------------------------------------------

--Emanuel/Klark (#10702) - Verificar ctes complementares
select * from ConhecimentosTransporte where NumConhecto in (681845,681844,681566) and CodUF = 'MT'
select tipoconhecimento, NumReqCombustivel, * from conhecimentostransporte where sequencial in (730000131678,10000022578,10000022579,730000131677)
select * from ConhecimentosTransporte_log where NumConhecto in (681845,681844) and CodUF = 'MT'
select tpEmis, tpImp, tpCTe, * from LONTANO_GSe.dbo.cte where Sequencial in (10000022579,10000022578)
exec VerificaCTe 10000022579
exec VerificaCTe 10000022578
select * from conhecimentoscomplementados where seqconhecimentocomplementar in (10000022578,10000022579)
select * from conhecimentossubstituidos where seqctrcsubstituto in (10000022578,10000022579)