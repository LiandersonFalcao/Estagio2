using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    public class PessoaDAL : Conexao
    {
        //INSERT SQL
        public void Gravar(Pessoa p) 
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into Pessoa (Nome,Endereco,Email) values (@v1,@v2,@v3)", Con);

                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao inserir Pessoa." + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //UPDATE SQL
        public void Atualizar(Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update Pessoa set nome=@v1, Endereco=@v2, Email=@v3 where Codigo=@v4", Con);
                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Endereco);
                Cmd.Parameters.AddWithValue("@v3", p.Email);
                Cmd.Parameters.AddWithValue("@v4", p.Codigo);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao tentar atualizar Pessoa" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //DELETE SQL
        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from Pessoa where Codigo=@v1", Con);
                Cmd.Parameters.AddWithValue("@v1", Codigo);
                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir Pessoa" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //SELECT BY ID SQL
        public Pessoa PesquisarPorCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa where Codigo =@v1", Con);
                Cmd.Parameters.AddWithValue("@v1", Codigo);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Pessoa p = null; // Ponteiro

                if (Dr.Read()) 
                {
                    p = new Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Endereco = Convert.ToString(Dr["Endereco"]);
                    p.Email = Convert.ToString(Dr["Email"]);
                }

                return p;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao obter Pessoa pelo Código" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //SELECT SQL
        public List<Pessoa> Listar() 
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa", Con);
                Dr = Cmd.ExecuteReader();
                
                List<Pessoa> lista = new List<Pessoa>();

                while(Dr.Read())
                {
                    Pessoa p = new Pessoa();
                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Endereco = Convert.ToString(Dr["Endereco"]);
                    p.Email = Convert.ToString(Dr["Email"]);

                    lista.Add(p);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar pessoas" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
