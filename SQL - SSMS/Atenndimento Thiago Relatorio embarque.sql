use LONTANO

select * from ConhecimentosTransporte where NumConhecto = 563499 and Coduf = 'GO'
exec VerificaCTe 560000028172
--exec Grava_CTe 560000028172
select * from ConhecimentosTransporte where NumConhecto = 563498 and Coduf = 'GO'
exec VerificaCTe 30000149492
--exec Grava_CTe 30000149492

select * from RelatorioEmbarque where NumRelatorioEmbarque = 6009769
select * from RelatorioEmbarque where NumRelatorioEmbarque = 6009766

select * from RelatorioEmbarque_log where NumRelatorioEmbarque = 6009769
select * from RelatorioEmbarque_log where NumRelatorioEmbarque = 6009766

SELECT * FROM RelatorioEmbarque 
INNER JOIN FiliaisAgencias on FiliaisAgencias.CodFilial = RelatorioEmbarque.CodFilial
WHERE DataRelatorioEmbarque = '02/17/2023 00:00:00'
and (RelatorioEmbarque.CodFilial = 'Cub'
or CodCidade IN (SELECT CodCidade FROM FiliaisAgencias WHERE CodFilial = 'Cub')) and NumRelatorioEmbarque = 6009767

