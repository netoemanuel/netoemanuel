use RODOMAIOR


select TarifaFreteEmpresa,* from ConhecimentosTransporte where NumConhecto in( 62586,62587,62796 )and CodUF = 'MG'
select top (100) CodTipoFatura, * from ContasReceber where ContasReceber.CodTipoFatura = 1 order by DataEmissao desc--AND (ContasReceber.NumDocumento BETWEEN 'go-101431' AND 'go-101529')
select  top (100)TarifaFreteEmpresa,* from ConhecimentosTransporte where CodUF = 'go' order by DataCriacao desc