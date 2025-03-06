declare @codUsuario numeric set @codUsuario = 14102
declare @codFilial varchar(3) set @codFilial = 'RO'
declare @Incluir varchar(1) set @Incluir = 'S'

--Colocar os dados do usuario de criação
declare @codUsuarioCriacao numeric set @codUsuarioCriacao = 11605
declare @codFilialCriacao varchar(3) set @codFilialCriacao = 'CG'

select * from FiliaisTrabalho where CodUsuario = @codUsuario
select * from PermissoesAcessoFiliais where codusuario = @codUsuario

if @Incluir = 'S'
	begin
		--inserir permissão em uma filial
		INSERT FiliaisTrabalho VALUES (@codUsuario, @codFilial, @codUsuarioCriacao, @codFilialCriacao, CURRENT_TIMESTAMP, NULL, NULL, NULL)
		INSERT PermissoesAcessoFiliais VALUES (@codUsuario, @codFilial, @codFilial, @codUsuarioCriacao, @codFilialCriacao, CURRENT_TIMESTAMP, NULL, NULL, NULL)
		Select 'Permissão de Usuário inserido com sucesso!'
	end

	--delete FiliaisTrabalho where CodUsuario = 11605 and CodFilial = 'ALF'
	--delete FiliaisTrabalho where CodUsuario = 11605 and CodFilial = 'ANP'
	--delete FiliaisTrabalho where CodUsuario = 11605 and CodFilial = 'CBA'
	--delete FiliaisTrabalho where CodUsuario = 11605 and CodFilial = 'AMB'
	--delete FiliaisTrabalho where CodUsuario = 11605 and CodFilial = 'ALF'

	--CodFilial
--ALF
--AMB
--ANP
--CBA
--CG
 