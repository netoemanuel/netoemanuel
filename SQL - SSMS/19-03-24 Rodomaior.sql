use RODOMAIOR


SELECT CodUF, SerieConhecto FROM TaloesConhecimento WHERE (CodUF = 'GO') AND (TipoImpressao = 'CT-e') ORDER BY SequencialTalao DESC
SELECT CodFilial FROM RelatorioEmbarque WHERE (NumRelatorioEmbarque = 31005015) -- 31004405 apagr log
SELECT CodUF, SerieConhecto,* FROM TaloesConhecimento WHERE (CodUF = 'GO') AND (TipoImpressao = 'CT-e') ORDER BY SequencialTalao DESC


SELECT CodUF, SerieConhecto,* FROM TaloesConhecimento WHERE (CodUF = 'GO') AND (TipoImpressao = 'CT-e') ORDER BY SequencialTalao DESC
SELECT CodFilial FROM RelatorioEmbarque WHERE (NumRelatorioEmbarque = 31005015)
select * from RelatorioEmbarque 
select * from PedidosFrete_Log where CodPedidoFrete = 22003759 order by DataLog desc

    --Dim rsAux As New recordset
    --rsAux.Open "SELECT CodFilial FROM RelatorioEmbarque WHERE (NumRelatorioEmbarque = " & frmOrdemEmbarque.txtNumRelatorioEmbarque.Text & ")", frmPrincipal.db, adOpenForwardOnly, adLockReadOnly
    --If Not rsAux.BOF Then
    --    Dim rsTal As New recordset
    --    rsTal.Open "SELECT CodUF, SerieConhecto FROM TaloesConhecimento WHERE (CodUF = '" & Estado(rsAux!CodFilial) & "') AND (TipoImpressao = 'Recibo') ORDER BY SequencialTalao DESC", frmPrincipal.db, adOpenForwardOnly, adLockReadOnly
    --    If Not rsTal.BOF Then
    --        Dim SQLNumReg As String
    --        SQLNumReg = "MovimentosTaloesCTRC INNER JOIN TaloesConhecimento ON TaloesConhecimento.SequencialTalao = MovimentosTaloesCTRC.SequencialTalao AND TaloesConhecimento.CodUF = MovimentosTaloesCTRC.CodUF"
    --        SQLNumReg = SQLNumReg & " WHERE (" & txtNumConhecimento.Text & " BETWEEN MovimentosTaloesCTRC.ConhecimentoInicial AND MovimentosTaloesCTRC.ConhecimentoFinal)"
    --        SQLNumReg = SQLNumReg & " AND (MovimentosTaloesCTRC.CodUF = '" & rsTal!CodUF & "') AND (SerieConhecto = '" & rsTal!SerieConhecto & "') AND (TaloesConhecimento.TipoImpressao = 'Recibo')"
    --        If NumReg(SQLNumReg) = 0 Then
    --            ValidacaoNumFormulario = False
    --            MsgBox "Formulário não liberado para esta Filial. Verificar Movimento do Talão!", vbCritical, "Erro"
    --            Exit Function
    --        End If
    --    End If
    --    rsTal.Close: Set rsTal = Nothing
    --End If
    --rsAux.Close: Set rsAux = Nothing

select * from ConhecimentosTransporte where CodOrdemEmbarque = 31014834
select * from ConhecimentosTransporte where NumConhecto = 2097 and CodUF = 'MT'
--UPDATE ConhecimentosTransporte set SerieConhecto = 'E' where Sequencial = 530000005094


select * from ConhecimentosTransporte where NumConhecto = 113654  and CodUF = 'GO'
select * from RODOMAIOR_GSe.dbo.Eventos_CTe where Sequencial_CTe = 220000022771
--UPDATE RODOMAIOR_GSe.dbo.Eventos_CTe set Status = 0 where Sequencial_CTe = 220000022771
--exec VerificaCTe 220000022771


select * from RODOMAIOR_GSe.dbo.NFe where id = '51240314796754001690550100000999041572559888'
