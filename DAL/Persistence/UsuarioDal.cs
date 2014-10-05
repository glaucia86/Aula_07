using DAL.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.Persistence
{
    public class UsuarioDal : Conexao
    {
        //Método para retornar 1 usuario pelo Login e Senha:
        public Usuario ObterUsuario(string login, string senha)
        {
            try
            {
                AbrirConexao();

                Cmd = new SqlCommand("sp_SelecionarUsuario", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.Parameters.AddWithValue("@Login", login);
                Cmd.Parameters.AddWithValue("@Senha", senha);

                Dr = Cmd.ExecuteReader();

                if (Dr.Read())
                {
                    var u = new Usuario()
                    {
                        IdUsuario = Convert.ToInt32(Dr["IdUsuario"]),
                        Nome = Convert.ToString(Dr["Nome"]),
                        Login = Convert.ToString(Dr["Login"]),
                        Senha = Convert.ToString(Dr["Senha"]),
                        DataCadastro = Convert.ToDateTime(Dr["DataCadastro"])
                    };
                    return u;
                }
                return null;
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao obter o usuário! " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método Insert:
        public void CadastrarUsuario(Usuario u)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("sp_CadastrarUsuario", Con);
                Cmd.CommandType = CommandType.StoredProcedure;

                Cmd.Parameters.AddWithValue("@Nome", u.Nome);
                Cmd.Parameters.AddWithValue("@Login", u.Login);
                Cmd.Parameters.AddWithValue("@Senha", u.Senha);
                Cmd.Parameters.AddWithValue("DataCadastro", u.DataCadastro);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao cadastrar o usuário! " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
