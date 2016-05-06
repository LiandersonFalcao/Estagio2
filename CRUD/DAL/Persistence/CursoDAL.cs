using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Model;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class CursoDAL : Conexao
    {
        public void Gravar(Curso c)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into tb_Curso (IdInstrutor,NomeCurso,DataInicial,DataFinal,CargaHoraria,DescricaoCurso) values (@idInstrutor,@nomeCurso,@dataInicial,@dataFinal,@cargaHoraria,@descricaoCurso)", Con);

                Cmd.Parameters.AddWithValue("@idInstrutor", c.IdInstrutor);
                Cmd.Parameters.AddWithValue("@nomeCurso", c.NomeCurso);
                Cmd.Parameters.AddWithValue("@dataInicial", c.DataInicial);
                Cmd.Parameters.AddWithValue("@dataFinal", c.DataFinal);
                Cmd.Parameters.AddWithValue("@cargaHoraria", c.CargaHoraria);
                Cmd.Parameters.AddWithValue("@descricaoCurso", c.DescricaoCurso);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao inserir o Curso." + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Atualizar(Curso c)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update tb_curso set NomeCurso=@nomeCurso, DataInicial=@dataInicial, DataFinal=@dataFinal ,CargaHoraria=@cargaHoraria, DescricaoCurso=@descricaoCurso where IdCurso=@idCurso", Con);
                Cmd.Parameters.AddWithValue("@idCurso", c.IdCurso);
                Cmd.Parameters.AddWithValue("@nomeCurso", c.NomeCurso);
                Cmd.Parameters.AddWithValue("@dataInicial", c.DataInicial);
                Cmd.Parameters.AddWithValue("@dataFinal", c.DataFinal);
                Cmd.Parameters.AddWithValue("@cargaHoraria", c.CargaHoraria);
                Cmd.Parameters.AddWithValue("@descricaoCurso", c.DescricaoCurso);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao tentar atualizar o Curso" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void AtualizarGrid(Curso c)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update tb_curso set NomeCurso=@nomeCurso, DataInicial=@dataInicial, DataFinal=@dataFinal ,CargaHoraria=@cargaHoraria where IdCurso=@idCurso", Con);
                Cmd.Parameters.AddWithValue("@idCurso", c.IdCurso);
                Cmd.Parameters.AddWithValue("@nomeCurso", c.NomeCurso);
                Cmd.Parameters.AddWithValue("@dataInicial", c.DataInicial);
                Cmd.Parameters.AddWithValue("@dataFinal", c.DataFinal);
                Cmd.Parameters.AddWithValue("@cargaHoraria", c.CargaHoraria);

                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao tentar atualizar o Curso" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public void Excluir(int IdCurso)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from tb_curso where IdCurso=@idCurso", Con);
                Cmd.Parameters.AddWithValue("@idCurso", IdCurso);
                Cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao excluir o Curso" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public Curso PesquisarPorCodigo(int IdCurso)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from tb_curso where IdCurso=@idCurso", Con);
                Cmd.Parameters.AddWithValue("@idCurso", IdCurso);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Curso c = null; // Ponteiro

                if (Dr.Read())
                {
                    c = new Curso();
                    c.IdCurso = Convert.ToInt32(Dr["IdCurso"]);
                    c.NomeCurso = Convert.ToString(Dr["NomeCurso"]);
                    c.DataInicial = Convert.ToString(Dr["DataInicial"]);
                    c.DataFinal = Convert.ToString(Dr["DataFinal"]);
                    c.CargaHoraria = Convert.ToInt32(Dr["CargaHoraria"]);
                    c.DescricaoCurso = Convert.ToString(Dr["DescricaoCurso"]);
                }

                return c;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao obter o Curso pelo ID" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        public List<Curso> Listar(int idLogin)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select IdCurso, NomeCurso, convert(varchar(10), DataInicial, 103) as DataInicial, convert(varchar(10), DataFinal, 103) as DataFinal, CargaHoraria from tb_curso where IdInstrutor=@idInstrutor", Con);
                Cmd.Parameters.AddWithValue("@idInstrutor", idLogin);
                Dr = Cmd.ExecuteReader();

                List<Curso> lista = new List<Curso>();

                while (Dr.Read())
                {
                    Curso c = new Curso();

                    c.IdCurso = Convert.ToInt32(Dr["IdCurso"]);
                    c.NomeCurso = Convert.ToString(Dr["NomeCurso"]);
                    c.DataInicial = Convert.ToString(Dr["DataInicial"]);
                    c.DataFinal = Convert.ToString(Dr["DataFinal"]);
                    c.CargaHoraria = Convert.ToInt32(Dr["CargaHoraria"]);

                    lista.Add(c);
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
    }
}
