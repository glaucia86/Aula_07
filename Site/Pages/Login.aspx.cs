using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AutenticarUsuario(object sender, AuthenticateEventArgs e)
        {
            try
            {
                //Resgatar os conteúdos dos campos do asp:Login:
                string login = formLogin.UserName;
                string senha = formLogin.Password;

                var d = new UsuarioDal();
                var u = d.ObterUsuario(login, senha);

                //caso encontre o usuário:
                if (u != null)
                {
                    e.Authenticated = true; //dou permissão de acesso
                    Session.Add("usuario", u); //Gravar o objeto usuario dentro da Sessão
                }
                else
                {
                    e.Authenticated = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}