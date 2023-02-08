--• Incluir o campo "CodigoRH" na guia 1 do cadastro sempre que:
--	○ "Tipo Fornecedor" for "Transportadora" (código 2)
--	○ Usuário tiver o acesso especial "Ver/Alterar Código RH do Fornecedor" (a ser criado)
--• Informação é opcional, porém quando for informada deverá validar se o código informado não existe em algum OUTRO fornecedor.
-- VerAlterarCodigoRHFornecedor - Acesso Especial
--lblLabels(72)  - txtCodigoRH

select CodigoRH, CodTipoFornecedor, * from Fornecedores where CodFornecedor = 1092739
--UPDATE Fornecedores set PisPasep = NULL where CodFornecedor = 1092739

SELECT * FROM PermissoesAcesso WHERE (CodUsuario = 12451)  AND(CodPrograma = 'VerAlterarCodigoRHFornecedor') AND (TipoEspecial = 'S')
 

 --cboTipoFornecedor.text = "Transportadora"

 --txtCodigoRH - lost focus , barrando o coigo do banco numreg