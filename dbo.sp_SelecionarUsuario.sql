create procedure dbo.sp_SelecionarUsuario

	@Login nvarchar(50),
	@Senha nvarchar(50)

as
begin

		select	*
		from	Usuario 
		where	Login = @Login and
				Senha = @Senha
end