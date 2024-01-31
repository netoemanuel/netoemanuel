use RODOMAIOR

select Status, * from RODOMAIOR_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 528113	
--UPDATE RODOMAIOR_GSe.dbo.Eventos_MDFe set Status = 0 where Sequencial_MDFe = 528113
exec monitoramdfe 18014083

select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON E.descevento = 'Encerramento' AND E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where E.Status = 9 and M.Status = 1

select 'exec MonitoraMDFe ' + convert(varchar,mvoe.NumOrdemEmbarque) AS SQL1, E.descEvento, E.Sequencial_MDFe, E.Origem
from RODOMAIOR_GSe.dbo.mdfe M
join RODOMAIOR_GSe.dbo.Eventos_MDFe E ON  E.Sequencial_MDFe = M.Sequencial
join MDFeViagem_OrdemEmbarque mvoe ON mvoe.SeqViagem = M.CodManifestoCarga
where (E.Status = 9 and M.Status <> 9) OR (E.Status = 5 and M.Status <> 5)



select saldo,* from ContasPagar where CodContasPagar = 35002880 -- Saldo = -2941.00
--UPDATE ContasPagar set saldo = 0.00 where CodContasPagar = 35002880
select * from ContasPagas where CodContasPagar = 35002880


SELECT * from Colaboradores where NomeColaborador like '%Marcia%'

