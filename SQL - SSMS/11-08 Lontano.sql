use LONTANO

blk
--kill 449
--wtf 449

-- EXEC sp_GravaRegSaidaProgramas 14286,'frmFornecedores'
--EXEC GravaLogConsultaRNTRC @usu = 14316, @fil = 'RDN', @tplog = 'Retorno', @origem = 'Fornecedores - Botão Consulta RNTRC', @tpcons = 'eFrete', @metodo = 'eFrete.ObterProprietario',
--@retorno = 'erro', @ordem = 0, @veiculo = 0, @prop = 88000636, @consultatipo = 'CNPJ', @usuarioTS = 'LONTANO\ro.tharlesoliveira', @maquinaremota = 'SRV-TS-02'

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 659284 and CodUF = 'MT'
select Status, * from LONTANO_GSe.dbo.cte where Sequencial = 110000017821
exec VerificaCTe 110000017821

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT CodFilial FROM FiliaisAgencias WHERE (TipoFilial = 'Matriz')
SELECT * FROM PermissoesAcessoFiliais WHERE (CodUsuario = 10509) AND (CodFilial = 'UBL') AND (CodFilialAcesso IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = 9))
SELECT NomeFilial, SituacaoFilial, Par.CaminhoFotoMotorista AS CaminhoFotos FROM FiliaisAgencias Fil LEFT JOIN ParametrosGerais Par ON Par.CodFilial = Fil.CodFilial WHERE (Fil.CodFilial = 'ARX')
(ConhecimentosTransporte.CodFilialEmitente = 'AFN' OR ConhecimentosTransporte.CodFilialEmitente = 'APU' OR ConhecimentosTransporte.CodFilialEmitente = 'ARC' OR ConhecimentosTransporte.CodFilialEmitente = 'ARG' 
OR ConhecimentosTransporte.CodFilialEmitente = 'ARX' OR ConhecimentosTransporte.CodFilialEmitente = 'BRA' OR ConhecimentosTransporte.CodFilialEmitente = 'BRT' OR ConhecimentosTransporte.CodFilialEmitente = 'CAB' 
OR ConhecimentosTransporte.CodFilialEmitente = 'CAT' OR ConhecimentosTransporte.CodFilialEmitente = 'CRD' OR ConhecimentosTransporte.CodFilialEmitente = 'CRT' OR ConhecimentosTransporte.CodFilialEmitente = 'FOR' 
OR ConhecimentosTransporte.CodFilialEmitente = 'IPR' OR ConhecimentosTransporte.CodFilialEmitente = 'PRT' OR ConhecimentosTransporte.CodFilialEmitente = 'PTC' OR ConhecimentosTransporte.CodFilialEmitente = 'PTM' 
OR ConhecimentosTransporte.CodFilialEmitente = 'UBA' OR ConhecimentosTransporte.CodFilialEmitente = 'UBE' OR ConhecimentosTransporte.CodFilialEmitente = 'UBL' OR ConhecimentosTransporte.CodFilialEmitente = 'UNA'
OR ConhecimentosTransporte.CodFilialEmitente = 'VLR')
SELECT COUNT(*) AS Registros FROM PermissoesAcessoFiliais WHERE (CodUsuario = 10509) AND (CodFilial = 'UBL') AND (CodFilialAcesso IN (SELECT CodFilial FROM FiliaisParamDespRecFilial WHERE NumCol = 9))

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * from ConhecimentosTransporte where NumConhecto = 2485 and CodUF = 'PR'
--UPDATE ConhecimentosTransporte set DataEmissao = '2023-06-13 00:00:00' where Sequencial = 640000055809 -- 2023-08-09 00:00:00

select * from Usuarios where NomeUsuario like '%Arlete%'
SELECT * From TaloesConhecimento WHERE SerieConhecto = '2' and (CodUF = 'MT') AND (ConhecimentoInicial <= 88036095) AND (ConhecimentoFinal >= 88036095)
--MsgBox "Não existe Talão de Conhecimento para a Série: " & txtSerie.Text & " e UF: " & txtUFConhecto.Text & ".", vbCritical, "Erro"

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

