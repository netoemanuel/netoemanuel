exec MonitoraMDFe 81004103

select datavalidacaopis, PisPasep, * from Fornecedores where codfornecedor = 1000117 
--UPDATE Fornecedores set PisPasep = '1.242.286.797-0' where codfornecedor = 1000117 -- "#.###.###.###-#"

select datavalidacaopis, PisPasep, * from Fornecedores_Log where codfornecedor = 1000117 order by DataLog desc
