using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Model;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class InstrutorDAL : Conexao
    {
        public void Gravar(Instrutor i)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into tb_instrutor (NomeInstrutor,EmailInstrutor,Login,Senha) values (@nomeInstrutor,@emailInstrutor,@login,@senha)", Con);

                Cmd.Parameters.AddWithValue("@nomeInstrutor", i.NomeInstrutor);
                Cmd.Parameters.AddWithValue("@emailInstrutor", i.EmailInstrutor);
                Cmd.Parameters.AddWithValue("@login", i.Login);
                Cmd.Parameters.AddWithValue("@senha", i.Senha);
               

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao inserir o Instrutor." + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Atualizar(Instrutor i)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update tb_instrutor set NomeInstrutor=@nomeInstrutor, EmailInstrutor=@emailInstrutor, Login=@login where IdInstrutor=@idInstrutor", Con);
                Cmd.Parameters.AddWithValue("@idInstrutor", i.IdInstrutor);
                Cmd.Parameters.AddWithValue("@nomeInstrutor", i.NomeInstrutor);
                Cmd.Parameters.AddWithValue("@emailInstrutor", i.EmailInstrutor);
                Cmd.Parameters.AddWithValue("@login", i.Login);


                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao tentar atualizar o Instrutor" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Instrutor PesquisarPorCodigo(int IdInstrutor)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from tb_instrutor where IdInstrutor =@idInstrutor", Con);
                Cmd.Parameters.AddWithValue("@idInstrutor", IdInstrutor);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Instrutor i = null; // Ponteiro

                if (Dr.Read())
                {
                    i = new Instrutor();
                    i.IdInstrutor = Convert.ToInt32(Dr["IdInstrutor"]);
                    i.NomeInstrutor = Convert.ToString(Dr["NomeInstrutor"]);
                    i.EmailInstrutor = Convert.ToString(Dr["EmailInstrutor"]);
                    i.Login = Convert.ToString(Dr["Login"]);
                }

                return i;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao obter Instrutor pelo Código" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

    }
}
