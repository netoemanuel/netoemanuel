SELECT DISTINCT ContasReceber.CodContasReceber, ContasReceber.DataEmissao, ContasReceber.CodCliente,  ContasReceber.DataVencimento, ContasReceber.Saldo,
ContasReceber.ValorReceber, ContasReceber.Situacao --TiposContasReceber.DescTipoContasRec, ContasReceber.NumDocumento
FROM ConhecimentosTransporte INNER JOIN ConhecimentosContasReceber ON ConhecimentosTransporte.Sequencial = ConhecimentosContasReceber.NumSeqConhecto 
RIGHT OUTER JOIN ContasReceber ON ConhecimentosContasReceber.CodContasReceber = ContasReceber.CodContasReceber
INNER JOIN Clientes ON ContasReceber.CodCliente = Clientes.CodCliente INNER JOIN TiposContasReceber ON ContasReceber.CodTipoContasRec = TiposContasReceber.CodTipoContasRec 
LEFT OUTER JOIN Clientes_Endereco ON Clientes_Endereco.CodCliente = ContasReceber.CodCliente AND TipoEndereco = 'Cobrança' 
LEFT JOIN Clientes_Complemento ON Clientes.CodCliente = Clientes_Complemento.CodCliente 
LEFT OUTER JOIN ConhecimentosTerceiros_ContasReceber ON ContasReceber.CodContasReceber = ConhecimentosTerceiros_ContasReceber.CodContasReceber
 WHERE (ContasReceber.CodCliente = 1000337) ORDER BY ContasReceber.CodContasReceber


 select * from ContasReceber where CodContasReceber = 1000612

 select * FROM Clientes where CodCliente = 1000361


SELECT * from RODOMAIOR_GSe.dbo.nfe where ID = '51240904854422001580550010001056701034734443'

SELECT Sequencial, DataMovimento, NumDoc, CodTipoMovEstoque, QtdeMovimento, EntradaSaida 
FROM MovimentoEstoque
WHERE (Situacao = 'Normal') AND (CodFilial = 'CG') AND (CodProduto = 4740) AND (DataMovimento >= '08/28/2024 00:00:00' AND DataMovimento <= '09/11/2024 23:59:29') 
ORDER BY DataMovimento, EntradaSaida

select * from Usuarios where CodUsuario = 12233
SELECT * FROM Usuarios where NomeUsuario LIKE '%Jackson%'
select DataAlteracao,CodUsuarioAlteracao,* from PermissoesAcesso where CodUsuario = 11803
select DataAlteracao,CodUsuarioAlteracao,* from PermissoesAcesso where CodUsuario = 128
select * from PermissoesAcesso_log where CodUsuario = 11803 ORDER BY DataLog desc
select * from Usuarios_log where CodUsuario = 11803 ORDER BY DataLog desc

SELECT * FROM Colaboradores where CodColaborador = 11803
SELECT Observacao,ObsDemissao, * FROM Colaboradores_log where CodColaborador = 11803 order BY DataLog desc

SELECT Observacao,CodFornecedor,* FROM Colaboradores where Observacao like '%PJ%'

SELECT  Historico,* FROM ContasPagar where Historico LIKE '%ferias%' ORDER by DataCriacao desc

SELECT * FROM MovimentoEstoque where Sequencial = 328819
--delete MovimentoEstoque where Sequencial = 328819

--CodMovEstoque	CodFilial	CodDeposito	CodProduto	DataMovimento	CodTipoMovEstoque	NumDoc	QtdeMovimento	ValorMovimento	ValorMovtoInd	EntradaSaida	Situacao	TipoMovimento	Sequencial	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao
--100316785	CG	9	4740	2024-08-28 00:00:00	9	1023401	5000.000	27200.00	NULL	Entrada	Normal	C	328819	12949	CG	2024-08-29 11:54:38.000	NULL	NULL	NULL




SELECT TOP(100) oe.TipoDispositivoValePedagio,CTRC.DataEmissao, CTRC.SituacaoConhecto, oe.CIOT, CF.Ciot,apf.Descricao, oe.CodNaturezaCarga,  CTRC.CodOrdemEmbarque, CTRC.Sequencial, ctrc.CodUF + '-' + CONVERT(varchar(12), CTRC.NumConhecto) as 'CTRC', CTRC.CIOT, O.* FROM ConhecimentosTransporte CTRC
INNER JOIN OrdemEmbarque oe on oe.numordemembarque = ctrc.codordemembarque
INNER JOIN CartaFrete CF ON CF.NumOrdemEmbarque = oe.NumOrdemEmbarque
inner join AdmPagamentoFrete APF on  CF.CodAdmPagtoFrete = APF.CodAdmFrete
LEFT OUTER JOIN CartaFrete_Ocorrencia O ON O.IdCartaFrete = CF.Id
WHERE CTRC.SerieConhecto = '0' AND CTRC.CodUF = 'SP' AND CTRC.Numconhecto = 195970                                   
ORDER BY O.DataCriacao DESC, O.NumSeq DESC, O.SeqConsulta DESC

select * from CartaFrete where Id = 991801
select * from CartaFrete_Parcela where IdCartaFrete = 991801
--UPDATE CartaFrete_Parcela SET Pago = 'N' where IdCartaFrete = 991801 and Id = 74193

select * from Clientes where CodCliente = 1021597
select  CodClienteMatriz,* from Clientes_Complemento where CodCliente = 1002854

SELECT * from PedidosFrete where CodClienteEmitente = 1002854
--select * from OrdemEmbarque where


select CodClienteMatriz,* from Clientes_log C
join Clientes_Complemento CC ON CC.CodCliente = C.CodCliente
where RazaoSocial LIKE 'Grão%' ORDER BY DataLog desc


select CodClienteMatriz,* from Clientes C
join Clientes_Complemento CC ON CC.CodCliente = C.CodCliente
where RazaoSocial LIKE 'Grão%' ORDER BY DataLog desc


select * from Clientes where RazaoSocial = 'Grao de Ouro Com. E Exp. de Commoditieis'

select CodClienteMatriz,* from Clientes_Complemento where CodCliente = 16000558
select CodClienteMatriz,* from Clientes_Complemento_log where CodCliente = 16000558

select CodFilialCriacao,AverbacaoImpSuspenso,* from PedidosFrete where CodClientePagamento = 16000558 ORDER BY DataCriacao desc
EXEC ValorSeguroImpostoSuspenso 5003050, 115023.19

select * from ConhecimentosTransporte where Sequencial = 50000018354
select CodFilialCriacao,AverbacaoImpSuspenso,* from PedidosFrete where CodPedidoFrete = 34003154
SELECT * from NotasFiscaisConhecimento where ChaveAcessoNFe = '41210792660604012865550500000552901715091200'


select * from OrdemEmbarque where NumOrdemEmbarque = 92002328
SELECT AverbacaoImpSuspenso, * from PedidosFrete where CodPedidoFrete = 1011154
--UPDATE  PedidosFrete set AverbacaoImpSuspenso = 'S' where CodPedidoFrete = 1011154


SELECT * from ConhecimentosTransporte where NumConhecto = 87102

exec VerificaCTe 920000002280



select CodFilialCriacao,AverbacaoImpSuspenso,* from PedidosFrete where CodClientePagamento = 16000558 ORDER BY DataCriacao desc
EXEC ValorSeguroImpostoSuspenso 5002842, 115023.19

select * from ConhecimentosTransporte where CodPedidoFrete = 5002842
select CodFilialCriacao,AverbacaoImpSuspenso,* from PedidosFrete where CodPedidoFrete = 34003154
SELECT * from NotasFiscaisConhecimento where SequencialConhecimento = 270000004817