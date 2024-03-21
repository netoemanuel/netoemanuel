use RODOMAIOR

exec MonitoraMDFe 24003637

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem_ESP 24003637, 12451, 'CG'
--exec Grava_MDFe 24003637
select CodOrdemMDFE,* from ConhecimentosTransporte where NumConhecto = 191906 and CodUF = 'SP' and SerieConhecto = '0'   --24003637
--UPDATE ConhecimentosTransporte set CodOrdemMDFE = null where NumConhecto = 191906 and CodUF = 'SP' and SerieConhecto = '0'
select * from RODOMAIOR_GSe.dbo.AverbacaoFrete where SequencialCTe = 240000003806
select * from RODOMAIOR_GSe.dbo.Seguro_MDFe where SeqConhecto = 240000003806

--Msg 50000, Nível 16, Estado 1, Procedimento Rodomaior_GSe.dbo.GeraMDFeViagem_ESP, Linha 126 [Linha de Início do Lote 4]
--Após inserir MDFeViagem_OrdemEmbarque. Erro geração do MDFe: 50000-638740 - Gravação tabela CIOT_MDFe ok. Erro gravação MDF-e: 2628-String or binary data would be truncated in table 'RODOMAIOR_GSe.dbo.Seguro_MDFe', co

--EXEC Rodomaior_GSe.dbo.GeraMDFeViagem 24003637, 12451, 'CG'
--exec Grava_MDFe 24003637
--EXEC  RODOMAIOR_GSe.dbo.GeraMDFeViagem 24003637, 12451, 'CG'

--exec MonitoraMDFe 64070159


				--SELECT  top 1 oe.DataOrdemEmbarque, oe.CodMotorista, oe.CodVeiculo, Fil.CodFilial, REPLACE(REPLACE(REPLACE(Fil.CNPJ,'.',''),'/',''),'-',''), cidfil.CodUFIBGE, cidFil.CodMunicipioIBGE, 
				--	   ISNULL(CidIniE2.CodMunicipioIBGE,CidIniE1.CodMunicipioIBGE), ISNULL(CidFimE2.CodMunicipioIBGE,CidFimE1.CodMunicipioIBGE), Unid.cUnid, Ped.CodRota, Ped.CodPedidoFrete, f.CodFornecedor,
				--	   12451, 'CG', GETDATE()
				--FROM RODOMAIOR.dbo.OrdemEmbarque oe
				--INNER JOIN RODOMAIOR.dbo.RelatorioEmbarque Rel ON Rel.NumRelatorioEmbarque = oe.NumRelatorioEmbarque
				--INNER JOIN RODOMAIOR.dbo.FiliaisAgencias fil1 on fil1.CodFilial = Rel.CodFilial
				--INNER JOIN RODOMAIOR.dbo.FiliaisAgencias Fil ON Fil.CNPJ = Fil1.CNPJ AND Fil.TipoFilial in ('Filial com CNPJ','Matriz')
				--INNER JOIN RODOMAIOR_GSe.dbo.Cidades_e cidfil on cidfil.CodCidade = fil.CodCidade
				--INNER JOIN RODOMAIOR_GSe.dbo.UnidadeMedida_e Unid ON Unid.CodUnidadeMedida = OE.CodUnidadeMedida
				--INNER JOIN RODOMAIOR.dbo.PedidosFrete Ped ON Ped.CodPedidoFrete = OE.CodPedidoFrete
				--INNER JOIN RODOMAIOR.dbo.Rotas ON Rotas.CodRota = Ped.CodRota
				--INNER JOIN RODOMAIOR.dbo.Cidades CidIni1 ON CidIni1.CodCidade = Rotas.CodCidadeOrigem
				--LEFT OUTER JOIN RODOMAIOR.dbo.Cidades CidIni2 ON CidIni2.CodCidade = CidIni1.CodCidade_Subor
				--LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e CidIniE1 ON CidIniE1.CodCidade = CidIni1.CodCidade
				--LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e CidIniE2 ON CidIniE2.CodCidade = CidIni1.CodCidade_Subor
				--INNER JOIN RODOMAIOR.dbo.Cidades CidFim1 ON CidFim1.CodCidade = Rotas.CodCidadeDestino
				--LEFT OUTER JOIN RODOMAIOR.dbo.Cidades CidFim2 ON CidFim2.CodCidade = CidFim1.CodCidade_Subor
				--LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e CidFimE1 ON CidFimE1.CodCidade = CidFim1.CodCidade
				--LEFT OUTER JOIN RODOMAIOR_GSe.dbo.Cidades_e CidFimE2 ON CidFimE2.CodCidade = CidFim1.CodCidade_Subor
				--LEFT OUTER JOIN RODOMAIOR.dbo.Fornecedores f ON f.RazaoSocial LIKE (OE.EmpresaValePedagio+'%')
				--CROSS APPLY RODOMAIOR.dbo.SugereMDFe(oe.NumOrdemEmbarque) AS S
				--WHERE oe.NumOrdemEmbarque = 24003637 AND S.Ordem IS NOT NULL


				select * from OrdemEmbarque where NumOrdemEmbarque = 41028712

				select * from ConhecimentosTransporte where CodOrdemEmbarque = 41028716

				select SeguroAverbado from ConhecimentosTransporte where CodFilialEmitente = 'CST' order by DataEmissao desc



select * from Clientes where CodCliente <> 1008825

SELECT COUNT(*) AS Registros FROM Clientes WHERE CodCliente not in (1008825) 

SELECT COUNT(*) AS Registros FROM PedidosFrete P JOIN Clientes_Complemento C ON C.CodCliente = P.CodClientePagamento WHERE P.CodPedidoFrete = 4006760 AND (C.CodClienteMatriz in (16000231,1000456,1008825))
