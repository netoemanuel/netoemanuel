--caso repassado no chamado que ja foi corrigido!
--SELECT * from ConhecimentosTransporte where NumConhecto in (87360,87427) and CodUF = 'MT' AND SerieConhecto = '2'

select * from ConhecimentosTransporte where numformulario = 1587520 order by dataemissao desc
select * from usuarios where codusuario in (select distinct Codusuariocriacao from ConhecimentosTransporte where numformulario = 1696624) or codusuario in (select distinct Codusuarioalteracao from ConhecimentosTransporte where numformulario = 1696624)

SELECT * from ConhecimentosTransporte where NumConhecto in (87360,87427) and CodUF = 'MT' AND SerieConhecto = '2'

select numformulario, * from ConhecimentosTransporte_log where sequencial = 690000013296
select numformulario, * from ConhecimentosTransporte_log where sequencial = 690000013295
select numformulario, * from ConhecimentosTransporte_log where sequencial = 690000013294

select ModeloDocumento, NumFormulario, * from ConhecimentosTransporte where numformulario = 1587520 order by dataemissao desc, horaemissao asc
select ModeloDocumento, * from ConhecimentosTransporte where numformulario = 1049035 order by dataemissao desc, horaemissao asc
select ModeloDocumento, * from ConhecimentosTransporte where numformulario = 148912 order by dataemissao desc, horaemissao asc

--como gera tipos de conhecimentos diferente sendo que no pedido esta como recibo?
select ModeloDocumento, numformulario, * from ConhecimentosTransporte where numformulario = 1976356 order by dataemissao desc, horaemissao asc
--como gera NFSe com o modelo documento no pedido de frete igual a recibo?
select ModeloDocumento, * from pedidosfrete_log where codpedidofrete = 43001913 order by datalog desc

--ordenando pela quantidade
SELECT CT.NumFormulario, 
       CT.ModeloDocumento,
       COUNT(*) AS QtdConhecimentos, 
       STRING_AGG(CAST(CT.Sequencial AS NVARCHAR(MAX)), ', ') AS Sequenciais
FROM ConhecimentosTransporte CT
WHERE CT.NumFormulario <> 0
GROUP BY CT.NumFormulario, CT.ModeloDocumento
HAVING COUNT(*) > 1
ORDER BY QtdConhecimentos DESC;

--Ordenando pela data craicao
SELECT CT.NumFormulario, 
       CT.ModeloDocumento,
       COUNT(*) AS QtdConhecimentos, 
       STRING_AGG(CAST(CT.Sequencial AS NVARCHAR(MAX)), ', ') AS Sequenciais,
       MAX(CT.DataCriacao) AS DataCriacao
FROM ConhecimentosTransporte CT
WHERE CT.NumFormulario <> 0
GROUP BY CT.NumFormulario, CT.ModeloDocumento
HAVING COUNT(*) > 1
ORDER BY DataCriacao DESC;

select ModeloDocumento, * from pedidosfrete_log where codpedidofrete = 53013855 order by datalog desc
select NumFormulario, situacaoconhecto, * from ConhecimentosTransporte_log where sequencial = 530000169785


--SELECT CTRC.CodUF, CTRC.NumConhecto, CRF.NumFormularioCF, CRF.CodRelacaoFrete, CBO.Descricao FROM ConhecimentosTransporte CTRC " & _
--        "INNER JOIN ConhecimentosRelacaoFretes CRF ON CRF.NumSeqConhecto = CTRC.Sequencial " & _
--        "INNER JOIN ComboBox_Financeiro CBO On CBO.Codigo = CRF.CodTipoPagamento And CBO.NomeComboBox = 'cboTipoPagamento' " & _
--        "WHERE NumSeqConhecto = " & rsCTRC!Sequencial & " AND CBO.Descricao <> '" & DescTipoPagamento & "' AND NumFormularioCF <> 0 AND NumFormularioCF <> " & NumCF



