using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Site.Pages
{
    public partial class CadastrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCadastrarUsuario(object sender, EventArgs e)
        {
            var u = new Usuario()
            {
                Nome = txtNome.Text,
                Login = txtUsuario.Text,
                Senha = txtSenha.Text,
                DataCadastro = DateTime.Now
            };

            var d = new UsuarioDal();
            d.CadastrarUsuario(u);

            lblMensagem.Text = "Usuário Cadastrado com sucesso!!!";

            LimparCampos();

            
        }

        private void LimparCampos()
        {
            txtNome.Text = string.Empty;
            txtUsuario.Text = string.Empty;
            txtSenha.Text = string.Empty;
        }
    }
}