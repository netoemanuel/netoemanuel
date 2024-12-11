SELECT CTRC.Sequencial, CTRC.CodPedidoFrete, CTRC.SituacaoConhecto, CTRC.NumConhecto, NFSe.NumeroNfse, CTRC.SerieConhecto, CTRC.CodUF, CTRC.CodFornecedor, CTRC.CodVeiculo, CTRC.CodOrdemEmbarque FROM ConhecimentosTransporte CTRC LEFT OUTER JOIN Lontano_GSe.dbo.NFSe NFSe ON NFSe.Sequencial = CTRC.Sequencial WHERE (CTRC.Sequencial = 310000101177)

SELECT COUNT(*) AS Registros FROM Lontano_GSe.dbo.NFSe_DSF WHERE (CodGS = 310000101177) AND (ISNULL(IndImpressao, 'N') = 'N')

SELECT COUNT(*) AS Registros FROM ConhecimentosTransporte WHERE (Sequencial = 310000101177) AND (ModeloDocumento = 'NFS-e') AND (ISNULL(NumFormulario, 0) = 0)

SELECT * FROM ConhecimentosTransporte WHERE (Sequencial = 310000101177) AND (ModeloDocumento = 'NFS-e') AND (ISNULL(NumFormulario, 0) = 0)

--Transporte efetuado pelo CT-e Nº 000091222 emitido pelo Consignatário. Chave de Acesso 35240903307926003057570030000912221004770822. PAGAR SALDO DE FRETE MEDIANTE TICKET DA BALANÇA DE DESCARGA ORIGINAL JUNTO DA CARTA FRETE OU CIOT.
--CONTAINER : TXGU 527938-6  BOOKING : 1740704_GO

-- objImpressao.Impressao
--(, NFS-e Nº:  & rsDados1!NumeroNFSe, {NFSe.Sequencial} =  & Sequencial, {CTe_Dacte.Sequencial} =  & Sequencial, , \\ & frmPrincipal.ServRelatorios & \GS2000\Relatorios\Financeiro\NFSeGO.rpt, \\ & frmPrincipal.ServRelatorios & \GS2000\Relatorios\Financeiro\DACTE2_CartaFrete_NFSe.rpt, , frmPrincipal.NomeServidor, frmPrincipal.NomeBanco, , )
--NFS-e Nº: 65940             {NFSe.Sequencial} = 310000101177          {CTe_Dacte.Sequencial} = 310000101177                   \\EmanuelNeto\GS2000\RelatoriosLontano\GS2000\Relatorios\Financeiro\NFSeGO.rpt      \\EmanuelNeto\GS2000\RelatoriosLontano\GS2000\Relatorios\Financeiro\DACTE2_CartaFrete_NFSe.rpt                  192.168.0.3   LONTANO                     


select * from HistoricoConjuntosVeiculo where CodVeiculo = 6814 ORDER by DataCriacao desc

SELECT Clientes.RazaoSocial, Clientes.CNPJ_CPF, Clientes.Endereco, Clientes.Bairro, Clientes.CEP, Cidades.NomeCidade, Cidades.CodUF, Clientes_Complemento.Email, Clientes_Complemento.InscMunicipal, Clientes.InscEstadual,
ConhecimentosTransporte.BaseCalculoICMS, ConhecimentosTransporte.ValorTotalFrete, NFSe.CodigoVerificacao, ConhecimentosTransporte.ValorICMSFrete, ConhecimentosTransporte.NumConhecto, NFSe.ValorLiquidoNF, NFSe.CidadeTributacao,
NFSe.DataEmissaoNfse, NFSe.RPS, Clientes_Complemento.IndRetencaoISS, NFSe.Discriminacao
 FROM   (LONTANO.dbo.Clientes_Complemento Clientes_Complemento
 INNER JOIN ((LONTANO.dbo.NFSe NFSe INNER JOIN LONTANO.dbo.ConhecimentosTransporte ConhecimentosTransporte ON NFSe.Sequencial=ConhecimentosTransporte.Sequencial) 
 INNER JOIN LONTANO.dbo.Clientes Clientes ON ConhecimentosTransporte.CodClientePagto=Clientes.CodCliente) ON Clientes_Complemento.CodCliente=Clientes.CodCliente) 
 INNER JOIN LONTANO.dbo.Cidades Cidades ON Clientes.CodCidade=Cidades.CodCidade
 WHERE NFSe.Sequencial = 310000101177

 exec LONTANO_GSe.dbo.pr_Dados_Nfse 310000101177

 