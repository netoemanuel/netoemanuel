Private Sub txtProntuarioCNH_LostFocus()
    On Error GoTo Erro
    If Status1 = "" Then Exit Sub
    If Screen.ActiveForm.Name <> Me.Name Then Exit Sub
    
    '+ + + + + + + + + + +
    '02/03/16 (c/ Marta): novas cr�ticas para "for�ar" o usu�rio a conferir os dados (vindo do cadastro da Ordem de Embarque).
    Saiu_ProntuarioCNH = True
    '31/03/16 (c/ Marta): deixar todos os campos em vermelho, para indicar ao usu�rio que precisa de confer�ncia. Ao sair do campo, voltar o mesmo � cor normal.
    lblLabels(46).BackColor = &H8000000F: lblLabels(46).ForeColor = vbBlack
    '+ + + + + + + + + + +
    
    '+ + + + + + + + + + +
    '25/05/2025 - Emanuel Neto - Jeferson - Comentado conforme orienta��o Jeferson, n�o faz sentido usar essa fun��o para verificar a CNH no numero do Prontu�rio.
'    If txtProntuarioCNH.Text <> "" Then
'        If Not DigitoVerificadorCNH(txtProntuarioCNH.Text) Then
'            txtProntuarioCNH.SetFocus
'            MsgBox "CNH inv�lida!", vbCritical, "Erro"
'        Else
'            If Status1 = "I" Then
'                If ExisteNumeroCNH(txtProntuarioCNH.Text) Then
'                    txtProntuarioCNH.SetFocus
'                    MsgBox "CNH j� existe no cadastro.", vbCritical, "Erro"
'                End If
'            ElseIf Status1 = "A" Then
'                    If txtProntuarioCNH.Text <> rsDados1!NumeroCNH Then
'                        If ExisteNumeroCNH(txtProntuarioCNH.Text) Then
'                            txtProntuarioCNH.SetFocus
'                            MsgBox "CNH j� existe no cadastro.", vbCritical, "Erro"
'                        End If
'                    End If
'            End If
'        End If
'        If txtNumeroCNH.Text <> "" Then
'            If txtProntuarioCNH.Text = txtNumeroCNH.Text Then
'                txtProntuarioCNH.SetFocus
'                MsgBox "N� CNH e N� Prontu�rio n�o podem ser iguais.", vbCritical, "Erro"
'            End If
'        End If
'    Else
'        MsgBox "Favor informar o N� do Prontu�rio na Observa��o.", vbCritical, "Erro"
'    End If

    If txtProntuarioCNH.Text = "" Then
        MsgBox "Favor informar o N� do Prontu�rio.", vbExclamation, "Aten��o"
        txtProntuarioCNH.SetFocus
    End If
    
    If txtNumeroCNH.Text <> "" Then
        If txtProntuarioCNH.Text = txtNumeroCNH.Text Then
            txtProntuarioCNH.SetFocus
            MsgBox "N� CNH e N� Prontu�rio n�o podem ser iguais.", vbCritical, "Erro"
        End If
    End If
    '+ + + + + + + + + + +

    Exit Sub
Erro:
    If Err = 5 Then     'Caso de ter dois campos obrigat�rios um ap�s o outro.
        Exit Sub
    Else
        MostraErro Err, Me.Caption
    End If
End Sub
