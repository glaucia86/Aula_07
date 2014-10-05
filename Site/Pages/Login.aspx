<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Site.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sistema - ABC</title>
    
    <link href="../Bootstrap/Content/bootstrap.min.css" type="text/css" rel="stylesheet" /> 

</head>
<body>
    
    <script src="../Bootstrap/Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Bootstrap/Scripts/jquery-1.9.0.min.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <div class="jumbotron">
        <!-- Componente customizado para página de autenticação -->
        
        <asp:Login ID="formLogin" runat="server" OnAuthenticate="AutenticarUsuario" 
            TitleText="Formulário de Acesso"
            UserNameLabelText="Login de Acesso:"
            PasswordLabelText="Senha:"
            LoginButtonText="Acessar Sistema"
            FailureText="Acesso Negado. Tente novamente."
            DisplayRememberMe="false"
            DestinationPageUrl="../Admin/Home.aspx"
            TextBoxStyle-CssClass="form-control"
            LoginButtonStyle-CssClass="btn btn-primary btn-sm"
            LabelStyle-CssClass="label"
            LabelStyle-ForeColor="Black"
            />
        <br /><br />
        
        <a href="../Pages/CadastrarUsuario.aspx">Cadastro de Novo Usuário</a>
    </div>
    </form>
</body>
</html>
