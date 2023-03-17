

DECLARE @Usuario as varchar(20) set @Usuario = 'Emanuel'
DECLARE @UsuarioSolicitante as varchar(20) set @UsuarioSolicitante = 'Eni'

DECLARE @DesabilitarANTT as varchar(1) set @DesabilitarANTT = 'N' 
--SELECT IndDesabilitaCriticaPIS,  * from Fornecedores where IndDesabilitaCriticaANTT <> 'S'   --Verificar se tem algum fornecedor com a Crítica ativa.

declare @Descricao as varchar (100) set @Descricao = null
IF @DesabilitarANTT = 'S'
	BEGIN
		update Fornecedores SET IndDesabilitaCriticaANTT = 'S' 
		set @Descricao = 'Desabilitar Critica Pis'
	end
	ELSE
		BEGIN
		    update Fornecedores SET IndDesabilitaCriticaANTT = 'N' 
			set @Descricao = 'Desabilitar Critica Pis'
		end
	


if (@Descricao is not null)
	begin
		Select 'Gravou na tabela atendimentos'
		insert dbo.Ctrl_atendimentos values (GETDATE(), @Usuario, @Descricao, 'Desabilitar_Critica_ANTT', @UsuarioSolicitante)
	end