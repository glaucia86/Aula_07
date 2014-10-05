create procedure sp_CadastrarUsuario

	@Nome nvarchar(50),
	@Login nvarchar(50),
	@Senha nvarchar(50),
	@DataCadastro date

as
begin
	
	insert into Usuario
	(
		Nome,
		Login,
		Senha,
		DataCadastro
	)
	values 
	(
		@Nome,
		@Login,
		@Senha,
		@DataCadastro
	)
end


