<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Site.Pages.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    
    <link href="../Bootstrap/Content/bootstrap.min.css" type="text/css" rel="stylesheet" /> 
    
    <% Response.AddHeader("Last-Modified", DateTime.Now.ToString()); %>
    <% Response.AddHeader("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0, post-check=0, pre-check=0"); %>
    <% Response.AddHeader("Pragma", "no-cache"); %>

</head>
<body>
    <script src="../Bootstrap/Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="../Bootstrap/Scripts/jquery-1.9.0.min.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <div class="jumbotron">
        
        <h3>Bem Vindo ao Sistema - ABC</h3>
            <hr />
            <br />
    </div>
        <div class="col-lg-10">
 
            <b>Nome do Usuário:</b>
            <asp:Label ID="lblNomeUsuario" runat="server"/>
            <br />

            <b>Login de Acesso:</b>
            <asp:Label ID="lblLogin" runat="server"/>
            <br />

            <b>Data do Cadastro:</b>
            <asp:Label ID="lblDataCadastro" runat="server"/>
            <br />
            <br />
        
            <asp:Button ID="btnLogout" runat="server" Text="Logout"  CssClass="btn btn-success btn-lg" OnClick="Logout"/>
            <br /><br />
           </div>
    </form>
</body>
</html>
