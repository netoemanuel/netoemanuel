use RODOMAIOR

select TarifaFreteEmpresa,ValorTotalFrete,* FROM ConhecimentosTransporte where NumConhecto = 8868 AND CodUF = 'MS' AND SerieConhecto = 'NE'
--UPDATE  ConhecimentosTransporte SET TarifaFreteEmpresa = 28.0000, ValorTotalFrete = 1061.20 where NumConhecto = 8868 AND CodUF = 'MS' AND SerieConhecto = 'NE'


EXEC VerificaCTe 860000002234

SELECT Status, * from LONTANO_GSe.dbo.cte where Sequencial = 860000002234