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
                Cmd = new SqlCommand("insert into tb_instrutor (Nome,Login,Senha,Email) values (@nome,@login,@senha,@email)", Con);

                Cmd.Parameters.AddWithValue("@nome", i.Nome);
                Cmd.Parameters.AddWithValue("@login", i.Login);
                Cmd.Parameters.AddWithValue("@senha", i.Senha);
                Cmd.Parameters.AddWithValue("@email", i.Email);

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
                Cmd = new SqlCommand("update tb_instrutor set nome=@nome, Login=@login, Senha=@senha,Email=@email where Codigo=@codigo", Con);
                Cmd.Parameters.AddWithValue("@codigo", i.IdInstrutor);
                Cmd.Parameters.AddWithValue("@nome", i.Nome);
                Cmd.Parameters.AddWithValue("@login", i.Login);
                Cmd.Parameters.AddWithValue("@senha", i.Senha);
                Cmd.Parameters.AddWithValue("@email", i.Email);

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

        public void Excluir(int IdInstrutor)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from Pessoa where IdInstrutor=@idinstrutor", Con);
                Cmd.Parameters.AddWithValue("@idinstrutor", IdInstrutor);
                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir o Instrutor" + ex.Message);
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
                Cmd = new SqlCommand("select * from tb_instrutor where IdInstrutor =@idinstrutor", Con);
                Cmd.Parameters.AddWithValue("@idinstrutor", IdInstrutor);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Instrutor i = null; // Ponteiro

                if (Dr.Read())
                {
                    i = new Instrutor();
                    Cmd.Parameters.AddWithValue("@idinstrutor", i.IdInstrutor);
                    Cmd.Parameters.AddWithValue("@nome", i.Nome);
                    Cmd.Parameters.AddWithValue("@login", i.Login);
                    Cmd.Parameters.AddWithValue("@senha", i.Senha);
                    Cmd.Parameters.AddWithValue("@email", i.Email);
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

        public List<Pessoa> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from tb_instrutor", Con);
                Dr = Cmd.ExecuteReader();

                List<Pessoa> lista = new List<Pessoa>();

                while (Dr.Read())
                {
                    Pessoa p = new Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["idinstrutor"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Endereco = Convert.ToString(Dr["Login"]);
                    p.Endereco = Convert.ToString(Dr["Senha"]);
                    p.Email = Convert.ToString(Dr["Email"]);

                    lista.Add(p);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar Alunos" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
