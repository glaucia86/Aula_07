<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="Site.Pages.CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Usuário - ABC Sistema</title>
    <link href="../Bootstrap/Content/bootstrap.min.css" type="text/css" rel="stylesheet" />   
</head>
<body>
    <script src="../Bootstrap/Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Bootstrap/Scripts/jquery-1.9.0.min.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <div class="jumbotron">
        <h3>Cadastro de Usuário</h3>
        <hr />
        <br />
       
    </div>      
        <div class="col-lg-12">
            <b>Nome:</b><br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="40%"/>
            <br /><br />
        
            <b>Crie um Login:</b><br />
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" Width="30%"/>
            <br /><br />
        
            <b>Crie uma Senha:</b><br />
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" Width="20%"/>
            <br /><br />
        
            <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success btn-lg" OnClick="BtnCadastrarUsuario"/>
        
            <a href="Login.aspx" class="btn btn-default btn-lg">Voltar</a>
            <p>
                <asp:Label ID="lblMensagem" runat="server"/>
            </p>
            </div>
    </form>
</body>
</html>
