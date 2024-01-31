use LONTANO


select * from LONTANO_GSe.dbo.Eventos_CTe where Sequencial_CTe = 110000018684

select * from LONTANO_GSe.dbo.Eventos_MDFe where Sequencial_MDFe = 1562107


select CodUsuarioCriacao,* from ConhecimentosTransporte where NumConhecto = 82931 and CodUF = 'MT'

select * from RegistroAcessoProgramas where CodUsuario = 14316 and DataAcesso BETWEEN '2023-10-12 14:00:22.000' and '2023-10-12 14:15:22.000'


SELECT cfo.CodViagemPamcard FROM ConhecimentosTransporte ctrc INNER JOIN CartaFrete cf ON cf.Sequencial = ctrc.Sequencial  INNER JOIN CartaFrete_Ocorrencia cfo ON cfo.IdCartaFrete = cf.Id AND cfo.DescricaoOcorrencia = 'CADASTRO FRETE' AND cfo.tipoOcorrencia = 'SUCESSO' AND cfo.CodAdmPagtoFrete = 12  WHERE CTRC.Sequencial = 30000156060

