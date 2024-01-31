use RODOMAIOR


select * from Temp_BaixasMultiplas
--delete from Temp_BaixasMultiplas where Situacao = 'Agendada PAG-FOR'


 SELECT Veiculos.DescVeiculo, Fornecedores.RazaoSocial, Veiculos.CodFornecTerceiro, EmbarquesPorVeiculo.NumCTRC, EmbarquesPorVeiculo.Data, EmbarquesPorVeiculo.CodFornecTerceiro,
 EmbarquesPorVeiculo.CodVeiculo, EmbarquesPorVeiculo.Placa, EmbarquesPorVeiculo.CodUnidadeMedida, EmbarquesPorVeiculo.QuantidadeSaida, EmbarquesPorVeiculo.QuantidadeChegada,
 EmbarquesPorVeiculo.Origem, EmbarquesPorVeiculo.Emitente, EmbarquesPorVeiculo.Destino, EmbarquesPorVeiculo.TarifaFreteMotorista, EmbarquesPorVeiculo.TarifaFreteEmpresa, 
 EmbarquesPorVeiculo.FreteMotorista, EmbarquesPorVeiculo.FreteMotoristaChegada, Veiculos.CodVeiculo, EmbarquesPorVeiculo.ValorPedagio, EmbarquesPorVeiculo.TipoPagtoPedagio
 FROM 
(RODOMAIOR.dbo.EmbarquesPorVeiculo EmbarquesPorVeiculo 
INNER JOIN RODOMAIOR.dbo.Veiculos Veiculos ON EmbarquesPorVeiculo.CodVeiculo=Veiculos.CodVeiculo) 
INNER JOIN RODOMAIOR.dbo.Fornecedores Fornecedores ON EmbarquesPorVeiculo.CodFornecTerceiro=Fornecedores.CodFornecedor
WHERE 

EmbarquesPorVeiculo.CodFornecTerceiro = 53000609 
AND EmbarquesPorVeiculo.Propriedade <> 'Próprio' AND (EmbarquesPorVeiculo.CodClienteMatriz <> 1001683 AND EmbarquesPorVeiculo.CodClienteMatriz <> 1021505)
AND EmbarquesPorVeiculo.Data >='01/01/2023' And EmbarquesPorVeiculo.Data <= ('11/01/2024')
AND (EmbarquesPorVeiculo.TipoCTRC <> 'Terceiro')


select SituacaoFornecedor,* from Fornecedores where CodFornecedor = 53000609


 SELECT Veiculos.DescVeiculo, Fornecedores.RazaoSocial, Veiculos.CodFornecTerceiro, EmbarquesPorVeiculo.NumCTRC, EmbarquesPorVeiculo.Data, EmbarquesPorVeiculo.CodFornecTerceiro,
 EmbarquesPorVeiculo.CodVeiculo, EmbarquesPorVeiculo.Placa, EmbarquesPorVeiculo.CodUnidadeMedida, EmbarquesPorVeiculo.QuantidadeSaida, EmbarquesPorVeiculo.QuantidadeChegada,
 EmbarquesPorVeiculo.Origem, EmbarquesPorVeiculo.Emitente, EmbarquesPorVeiculo.Destino, EmbarquesPorVeiculo.TarifaFreteMotorista, EmbarquesPorVeiculo.TarifaFreteEmpresa, 
 EmbarquesPorVeiculo.FreteMotorista, EmbarquesPorVeiculo.FreteMotoristaChegada, Veiculos.CodVeiculo, EmbarquesPorVeiculo.ValorPedagio, EmbarquesPorVeiculo.TipoPagtoPedagio
 FROM 
(RODOMAIOR.dbo.EmbarquesPorVeiculo EmbarquesPorVeiculo 
INNER JOIN RODOMAIOR.dbo.Veiculos Veiculos ON EmbarquesPorVeiculo.CodVeiculo=Veiculos.CodVeiculo) 
INNER JOIN RODOMAIOR.dbo.Fornecedores Fornecedores ON EmbarquesPorVeiculo.CodFornecTerceiro=Fornecedores.CodFornecedor
WHERE 


EmbarquesPorVeiculo.Data >= '01/01/2023' And EmbarquesPorVeiculo.Data <='11/01/2024'
AND ISNULL(EmbarquesPorVeiculo.TipoConhecimento, '', EmbarquesPorVeiculo.TipoConhecimento <> 'Substituto' 
AND ISNULL(EmbarquesPorVeiculo.SituacaoConhecto, '', EmbarquesPorVeiculo.SituacaoConhecto <> 'Substituto' 
AND ISNULL(EmbarquesPorVeiculo.SituacaoConhecto, '', EmbarquesPorVeiculo.SituacaoConhecto <> 'Cancelado' 
AND NOT (ISNULL(EmbarquesPorVeiculo.TipoServico, 0, EmbarquesPorVeiculo.TipoServico = 1 
AND EmbarquesPorVeiculo.Propriedade <> 'Próprio' AND (EmbarquesPorVeiculo.CodClienteMatriz <> 1001683 AND EmbarquesPorVeiculo.CodClienteMatriz <> 1021505)) 
AND EmbarquesPorVeiculo.CodFornecTerceiro = 53000609
--; and EmbarquesPorVeiculo.Data >= Cdate('01/01/2023') And EmbarquesPorVeiculo.Data <= Cdate('11/01/2024') AND (EmbarquesPorVeiculo.TipoCTRC <> 'Terceiro')


{EmbarquesPorVeiculo.Data} >= Cdate('01/01/2023') And {EmbarquesPorVeiculo.Data} <= Cdate('11/01/2024') AND IIF(ISNULL({EmbarquesPorVeiculo.TipoConhecimento}), '', {EmbarquesPorVeiculo.TipoConhecimento}) <> 'Substituto' AND IIF(ISNULL({EmbarquesPorVeiculo.SituacaoConhecto}), '', {EmbarquesPorVeiculo.SituacaoConhecto}) <> 'Substituto' AND IIF(ISNULL({EmbarquesPorVeiculo.SituacaoConhecto}), '', {EmbarquesPorVeiculo.SituacaoConhecto}) <> 'Cancelado' AND NOT (IIF(ISNULL({EmbarquesPorVeiculo.TipoServico}), 0, {EmbarquesPorVeiculo.TipoServico}) = 1 AND {EmbarquesPorVeiculo.Propriedade} = 'Próprio' AND ({EmbarquesPorVeiculo.CodClienteMatriz} <> 1001683 AND {EmbarquesPorVeiculo.CodClienteMatriz} <> 1021505)) AND {EmbarquesPorVeiculo.CodFornecTerceiro} = 53000609--;--{EmbarquesPorVeiculo.Data} >= Cdate('01/01/2023') And {EmbarquesPorVeiculo.Data} <= Cdate('11/01/2024') AND ({EmbarquesPorVeiculo.TipoCTRC} <> 'Terceiro')


--{EmbarquesPorVeiculo.Data} >= Cdate('01/01/2023') And {EmbarquesPorVeiculo.Data} <= Cdate('11/01/2024') AND IIF(ISNULL({EmbarquesPorVeiculo.TipoConhecimento}), '', {EmbarquesPorVeiculo.TipoConhecimento}) <> 'Substituto' AND IIF(ISNULL({EmbarquesPorVeiculo.SituacaoConhecto}), '', {EmbarquesPorVeiculo.SituacaoConhecto}) <> 'Substituto' AND IIF(ISNULL({EmbarquesPorVeiculo.SituacaoConhecto}), '', {EmbarquesPorVeiculo.SituacaoConhecto}) <> 'Cancelado' AND NOT (IIF(ISNULL({EmbarquesPorVeiculo.TipoServico}), 0, {EmbarquesPorVeiculo.TipoServico}) = 1 AND {EmbarquesPorVeiculo.Propriedade} = 'Próprio' AND ({EmbarquesPorVeiculo.CodClienteMatriz} <> 1001683 AND {EmbarquesPorVeiculo.CodClienteMatriz} <> 1021505)) AND {EmbarquesPorVeiculo.CodFornecTerceiro} = 53000609;{EmbarquesPorVeiculo.Data} >= Cdate('01/01/2023') And {EmbarquesPorVeiculo.Data} <= Cdate('11/01/2024') AND ({EmbarquesPorVeiculo.TipoCTRC} <> 'Terceiro')



 SELECT Veiculos.DescVeiculo, Fornecedores.RazaoSocial, Veiculos.CodFornecTerceiro, EmbarquesPorVeiculo.NumCTRC, EmbarquesPorVeiculo.Data, 
 EmbarquesPorVeiculo.CodFornecTerceiro, EmbarquesPorVeiculo.CodVeiculo, EmbarquesPorVeiculo.Placa, EmbarquesPorVeiculo.CodUnidadeMedida, EmbarquesPorVeiculo.QuantidadeSaida, 
 EmbarquesPorVeiculo.QuantidadeChegada, EmbarquesPorVeiculo.Origem, EmbarquesPorVeiculo.Emitente, EmbarquesPorVeiculo.Destino, EmbarquesPorVeiculo.TarifaFreteMotorista,
 EmbarquesPorVeiculo.TarifaFreteEmpresa, EmbarquesPorVeiculo.FreteMotorista, EmbarquesPorVeiculo.FreteMotoristaChegada, Veiculos.CodVeiculo, EmbarquesPorVeiculo.ValorPedagio, 
 EmbarquesPorVeiculo.TipoPagtoPedagio, EmbarquesPorVeiculo.TipoCTRC, EmbarquesPorVeiculo.Propriedade, EmbarquesPorVeiculo.TipoServico, EmbarquesPorVeiculo.CodClienteMatriz, 
 EmbarquesPorVeiculo.TipoConhecimento, EmbarquesPorVeiculo.SituacaoConhecto
 FROM   (RODOMAIOR.dbo.EmbarquesPorVeiculo EmbarquesPorVeiculo
 INNER JOIN RODOMAIOR.dbo.Veiculos Veiculos ON EmbarquesPorVeiculo.CodVeiculo=Veiculos.CodVeiculo) 
 INNER JOIN RODOMAIOR.dbo.Fornecedores Fornecedores ON EmbarquesPorVeiculo.CodFornecTerceiro=Fornecedores.CodFornecedor
 WHERE  (EmbarquesPorVeiculo.Data>={ts '2023-01-01 00:00:00'} AND EmbarquesPorVeiculo.Data<{ts '2024-01-12 00:00:00'}) AND EmbarquesPorVeiculo.TipoCTRC<>'Terceiro'




 SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = 'NE' AND CTRC.CodUF = 'MS' AND CTRC.Numconhecto = 8807                               
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC



