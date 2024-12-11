SELECT ObrigaImagemCTePagtoSaldo, DataCriacao,* FROM ParametrosGerais where ObrigaImagemCTePagtoSaldo IS null
SELECT ObrigaImagemCTePagtoSaldo, DataCriacao,* FROM ParametrosGerais where ObrigaImagemCTePagtoSaldo IS not null



SELECT ObrigaImagemCTePagtoSaldo, * FROM ParametrosGerais_log where ObrigaImagemCTePagtoSaldo IS null
SELECT ObrigaImagemCTePagtoSaldo, * FROM ParametrosGerais_log where ObrigaImagemCTePagtoSaldo IS not null


SELECT ObrigaImagemCTePagtoSaldo, * FROM ParametrosGerais_log where CodFilial = 'CAM' ORDER BY DataLog desc

SELECT * from ConhecimentosTransporte where NumConhecto IN (214554) and CodUF = 'PR'

select * from DocumentosCte where SequencialConhecimento = 640000067629
select * from ImagensCTe where Sequencial = 640000067629

select * from ItensRelacaoPostos where SeqConhecto = 640000067629

SELECT * from ConhecimentosTransporte where NumConhecto IN (646191) and CodUF = 'GO'

EXEC VerificaCTe 280000185212
--EXEC Grava_CTe 280000185212