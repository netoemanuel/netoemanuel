select * from Usuarios where NomeUsuario like 'Emanuel%'
select * from Usuarios where CodUsuario IN (10234,10012)
select * from MovimentacaoBancaria order BY DataCriacao desc

select * from MovimentacaoBancaria where CodMovBancaria = 1004603
select * from MovimentacaoBancaria_log where CodMovBancaria = 1004603

select * from MovimentacaoBancaria where CodMovBancaria = 1004613
select * from MovimentacaoBancaria_log where CodMovBancaria = 1004613


SELECT DescTipoDespesa, NivelContaDespesa, SituacaoConta FROM PlanoContasDespesa WHERE (CodTipoDespesa = 625)

SELECT DescTipoDespesa, NivelContaDespesa, SituacaoConta,* FROM PlanoContasDespesa_Log WHERE (CodTipoDespesa = 625)

SELECT * from MovimentacaoBancaria where CodRecDesp = 625 ORDER BY DataCriacao desc

select * from Usuarios where CodUsuario IN (10216,10229,10127,10193)