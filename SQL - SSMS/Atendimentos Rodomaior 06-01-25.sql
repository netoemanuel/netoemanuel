--EXEC GravaPosicaoDiariaFretesReceber
--GO
SELECT GETDATE() AS 'DataReferencia'
	 , (SELECT SUM(ctrc.ValorTotalFrete) AS Valor 
		FROM ConhecimentosTransporte ctrc 
		WHERE SituacaoConhecto = 'Emitido') AS 'FretesNaoFaturados'
	 , (SELECT SUM(ctrc.ValorTotalFrete) AS Valor 
		FROM ConhecimentosTransporte ctrc 
		WHERE dbo.Data112(DataEmissao) = dbo.Data112(GETDATE()-1)) AS 'EmitidosDiaAnterior'
	 , (SELECT SUM(cr.Saldo) AS Valor 
		FROM ContasReceber cr 
		WHERE cr.CodTipoContasRec = 1 
			AND dbo.Data112(DataVencimento) < dbo.Data112(GETDATE())
			AND cr.Situacao <> 'Liquidada'
			AND cr.Saldo > 0) AS 'VencidasAteDiaAnterior'
	 , (SELECT SUM(cr.Saldo) AS Valor 
		FROM ContasReceber cr 
		WHERE cr.CodTipoContasRec = 1 
			AND dbo.Data112(DataVencimento) >= dbo.Data112(GETDATE())
			AND cr.Situacao <> 'Liquidada'
			AND cr.Saldo > 0) AS 'AVencerAteDiaAnterior'
	 , (SELECT SUM(mov.ValorMovimento) AS Valor 
		FROM MovimentacaoBancaria mov
		WHERE mov.CodTipoMovBancaria = 2
			AND mov.SituacaoCredito = 'Pendente') AS 'RecebidoSemAcerto'


SELECT GETDATE() AS 'DataReferencia'
	 , ctrc.Sequencial
	 , ctrc.TipoConhecimento
	 , ctrc.SituacaoConhecto
	 , ctrc.ValorTotalFrete
	 , ctrc.DataCriacao
FROM ConhecimentosTransporte ctrc
WHERE ctrc.SituacaoConhecto = 'Emitido'


SELECT * --SUM(cr.Saldo) AS Valor 
		FROM ContasReceber cr 
		WHERE cr.CodTipoContasRec = 1 
			AND dbo.Data112(DataVencimento) < dbo.Data112(GETDATE())
			AND cr.Situacao <> 'Liquidada'
			AND cr.Saldo > 0  ORDER BY DataCriacao desc--AS 'VencidasAteDiaAnterior'

select * FROM ConhecimentosTransporte where DataEmissao > '2024-12-31 00:00:00' ORDER BY DataCriacao desc