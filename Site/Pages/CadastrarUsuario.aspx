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
        <!-- Componente para que a página possa utilizar recursos baseados em Ajax -->
        <asp:ScriptManager ID="ajax" runat="server"/>
           
        <!-- Definir uma área da página onde todos os eventos executados funcionarão
           baseados em Ajax-->
        <!-- Área Ajax -->
        <asp:UpdatePanel ID="painelAjax" runat="server">
            <ContentTemplate>
                 
         <div class="col-lg-12">
            <b>Informe seu Nome:</b><br />
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="40%"/>
            <asp:RequiredFieldValidator
                ID="requiredNome"
                runat="server"
                ControlToValidate="txtNome"
                ErrorMessage="Por favor, informe o nome."
                ForeColor="Red"
                />
            <br /><br />
        
            <b>Informe o Login:</b><br />
            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" Width="30%"/>
            <asp:RequiredFieldValidator
                ID="requiredUsuario"
                runat="server"
                ControlToValidate="txtUsuario"
                ErrorMessage="Por favor, informe o login."
                ForeColor="Red"
                />
            <br /><br />
        
            <b>Informe a Senha:</b><br />
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" Width="20%"/>
            <asp:RequiredFieldValidator
                ID="requiredSenha"
                runat="server"
                ControlToValidate="txtSenha"
                ErrorMessage="Por favor, informe a senha."
                ForeColor="Red"
                />
            <br /><br />
            
            <b>Confirme a Senha:</b><br />
            <asp:TextBox ID="txtConfirmaSenha" runat="server" CssClass="form-control" Width="20%"/>
            <asp:RequiredFieldValidator 
                ID="requiredConfirmaSenha"
                runat="server"
                ControlToValidate="txtConfirmaSenha"
                ErrorMessage="Por favor, confirme a senha."
                ForeColor="Red"
                />
            <br /><br />
        
            <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success btn-lg" OnClick="BtnCadastrarUsuario" />
            <a href="Login.aspx" class="btn btn-default btn-lg">Voltar</a>
            <br />

            <asp:CompareValidator ID="compareSenha" runat="server" 
                ControlToValidate="txtConfirmaSenha"
                ControlToCompare="txtSenha"
                ErrorMessage="Por favor, confirme com a mesma senha."
                ForeColor="Red"
                />
                <p>
                    <asp:Label ID="lblMensagem" runat="server"/>
                </p>
             
                <asp:UpdateProgress ID="carregamento" runat="server" AssociatedUpdatePanelID="painelAjax">
                    <ProgressTemplate>
                        <img src="../Images/ajax-loader.gif" alt="carregamento"/>
                    </ProgressTemplate>
                </asp:UpdateProgress>
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
