using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarCampos();
        }

        private void CarregarCampos()
        {
            try
            {
                var u = (Session["usuario"] as Usuario);

                lblNomeUsuario.Text     = u.Nome;
                lblLogin.Text           = u.Login;
                lblDataCadastro.Text    = u.DataCadastro.ToString("dddd dd/MM/yyyy");
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Logout(object sender, EventArgs e)
        {
           //Destruir o ticket de Acesso:
            FormsAuthentication.SignOut(); //retorna a ser usuário anônimo

            //Excluir a sessão:
            Session.Remove("usuario");
            Session.Abandon();

            //Redireciona o usuário de volta para a página de login:
            FormsAuthentication.RedirectToLoginPage();

        }
    }
}