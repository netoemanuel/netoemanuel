USE Lontano  
			-- usuario 14022, 12922
SELECT * from ConhecimentosTransporte where NumConhecto = 442105 AND CodUF = 'MS' -- 780000010646

SELECT * from RegistroAcessoProgramas where CodUsuario = 12922 AND DataAcesso BETWEEN '2022-08-02 17:20:00' AND '2022-08-02 17:35:00' ORDER BY DataAcesso
SELECT * from RegistroAcessoProgramas where CodUsuario = 14022 AND DataAcesso BETWEEN '2022-08-02 17:20:00' AND '2022-08-02 17:35:00' ORDER BY DataAcesso

SELECT SituacaoConhecto,ValorAdiantamento, DataLog,* from ConhecimentosTransporte_Log where Sequencial = 780000010646

SELECT * from Lontano_GSe.dbo.CTe_LOG where Sequencial = 780000010646 ORDER BY dhLog DESC 

SELECT * from conhecimentostransporte_log where Sequencial = 780000010646

SELECT * FROM ConhecimentosRelacaoFretes where CodRelacaoFrete = 25006306

SELECT * FROM ConhecimentosRelacaoFretes where NumSeqConhecto = 780000010646






