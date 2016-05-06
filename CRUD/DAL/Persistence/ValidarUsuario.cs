using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Model;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class ValidarUsuario : Conexao
    {
        public Instrutor ValidarLogin(string login, string senha)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from tb_instrutor where Login=@login and Senha=@senha", Con);
                Cmd.Parameters.AddWithValue("@login", login);
                Cmd.Parameters.AddWithValue("@senha", senha);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Instrutor i = null; // Ponteiro

                if (Dr.Read())
                {
                    i = new Instrutor();
                    i.IdInstrutor = Convert.ToInt32(Dr["IdInstrutor"]);

                }

                return i;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao obter o Instrutor pelo ID" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
