CREATE TABLE [dbo].[Usuario] (
    [IdUsuario]  INT           IDENTITY (1, 1) NOT NULL,
    [Nome]       NVARCHAR (50) NULL,
    [Login]      NVARCHAR (50) NULL,
    [Senha]      NVARCHAR (50) NULL,
    [DataCadastro] DATE          NULL,
    PRIMARY KEY CLUSTERED ([IdUsuario] ASC)
);

