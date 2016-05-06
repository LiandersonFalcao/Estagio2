using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    public class AlunoDAL : Conexao
    {
        //INSERT SQL
        public void Gravar(Aluno a)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into tb_aluno (IdCurso,IdInstrutor,NomeAluno,EmailAluno) values (@idCurso,@idInstrutor,@nomeAluno,@emailAluno)", Con);

                Cmd.Parameters.AddWithValue("@idCurso", a.IdCurso);
                Cmd.Parameters.AddWithValue("@idInstrutor", a.IdInstrutor);
                Cmd.Parameters.AddWithValue("@nomeAluno", a.NomeAluno);
                Cmd.Parameters.AddWithValue("@emailAluno", a.EmailAluno);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao inserir Aluno." + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public List<Aluno> Listar(int idInstrutor, int idCurso)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select c.IdAluno,NomeAluno,EmailAluno from tb_instrutor a join tb_curso b on b.IdInstrutor = a.IdInstrutor join tb_aluno c on c.IdCurso = b.IdCurso where b.IdCurso = @idCurso and a.IdInstrutor = @IdInstrutor", Con);
                Cmd.Parameters.AddWithValue("@idCurso", idCurso);
                Cmd.Parameters.AddWithValue("@idInstrutor", idInstrutor);
                Dr = Cmd.ExecuteReader();

                List<Aluno> lista = new List<Aluno>();

                while (Dr.Read())
                {
                    Aluno a = new Aluno();

                    a.IdAluno = Convert.ToInt32(Dr["IdAluno"]);
                    a.NomeAluno = Convert.ToString(Dr["NomeAluno"]);
                    a.EmailAluno = Convert.ToString(Dr["EmailAluno"]);

                    lista.Add(a);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar Cursos" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Atualizar(Aluno a)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update tb_aluno set NomeAluno=@nomeAluno, EmailAluno=@emailAluno where IdAluno=@idAluno", Con);
                Cmd.Parameters.AddWithValue("@idAluno", a.IdAluno);
                Cmd.Parameters.AddWithValue("@nomeAluno", a.NomeAluno);
                Cmd.Parameters.AddWithValue("@emailAluno", a.EmailAluno);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao tentar atualizar o Aluno" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Excluir(int IdAluno)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from tb_aluno where IdAluno=@idAluno", Con);
                Cmd.Parameters.AddWithValue("@idAluno", IdAluno);
                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir o Aluno " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
