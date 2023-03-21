use RODOMAIOR

--Verifica_Req_OS_Pneu_Acerto
--Requisição não pode ser Alterada/Excluída
--por estar no Acerto de Viagem.
--Veículo: OOI-0063
--Mês/Ano: 02/2023

SELECT CodVeiculo, MesAno, * FROM OrigemDadosItensAcerto 
INNER JOIN AcertoViagem on Sequencial = SeqAcerto WHERE CodOrigemDados = 1325114 
and (CodTipoMovAcerto = 15 or CodTipoMovAcerto = 18 or CodTipoMovAcerto = 34 or CodTipoMovAcerto = 10 or CodTipoMovAcerto = 9)
and Marcador = 'X'
SELECT PlacaVeiculo FROM Veiculos WHERE (CodVeiculo = 63)


Select ValorTotalMov, CodMovCaixa,  * from RequisicaoProdutos where CodRequisicao = 1325114
--update RequisicaoProdutos set ValorTotalMov = 7458.30 where CodRequisicao = 1325114

--Select ValorTotalMov,  * from RequisicaoProdutos_log where CodRequisicao = 1325114

select * from ContasPagar_RequisicaoProdutos where CodRequisicao = 1325114

select  * from ItensRequisicaoProdutos where CodRequisicao = 1325114
select * from RequisicaoCAP where CodRequisicao = 1325114
select * from AcertoViagem where CodVeiculo =63 order by DataAcerto desc



select  * from OrigemDadosItensAcerto where SeqAcerto = 100020493 and CodOrigemDados = 1325114

--update OrigemDadosItensAcerto set Marcador = null where SeqAcerto = 100020493 and CodOrigemDados = 1325114 and CodTipoMovAcerto = 34

--SeqAcerto	CodTipoMovAcerto	CodOrigemDados	Marcador	CodUsuarioCriacao	CodFilialCriacao	DataCriacao	CodUsuarioAlteracao	CodFilialAlteracao	DataAlteracao	DescontarMotorista	ConfSegundaVia	MarcadorComissao
--100020493			34				1325114			X				12461				CG				2023-03-03 11:03:31.000	12461	CG	2023-03-03 11:09:00.000	NULL	NULL	NULL