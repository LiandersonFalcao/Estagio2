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
                Cmd = new SqlCommand("insert into tb_Curso (NomeCurso,DataInicio,DataFinal,CargaHoraria,DescricaoCurso) values (@nomecurso,@datainicio,@datafinal,@cargahoraria,@descricaocurso)", Con);

                Cmd.Parameters.AddWithValue("@nomecurso", c.NomeCurso);
                Cmd.Parameters.AddWithValue("@datainicio", c.DataInicio);
                Cmd.Parameters.AddWithValue("@datafinal", c.DataFinal);
                Cmd.Parameters.AddWithValue("@cargahoraria", c.CargaHoraria);
                Cmd.Parameters.AddWithValue("@descricaocurso", c.DescricaoCurso);

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
                Cmd = new SqlCommand("update tb_curso set NomeCurso=@nomecurso, DataInicio=@datainicio, DataFinal=@datafinal,CargaHoraria=@cargahoraria,Descricao=@descricao where IdCurso=@idcurso", Con);
                Cmd.Parameters.AddWithValue("@idcurso", c.IdCurso);
                Cmd.Parameters.AddWithValue("@nomecurso", c.NomeCurso);
                Cmd.Parameters.AddWithValue("@datainicio", c.DataInicio);
                Cmd.Parameters.AddWithValue("@datafinal", c.DataFinal);
                Cmd.Parameters.AddWithValue("@cargahoraria", c.CargaHoraria);
                Cmd.Parameters.AddWithValue("@descricao", c.DescricaoCurso);

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
                Cmd = new SqlCommand("delete from Pessoa where IdCurso=@idcurso", Con);
                Cmd.Parameters.AddWithValue("@idcurso", IdCurso);
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
                Cmd = new SqlCommand("select * from tb_Curso where IdCurso =@idcurso", Con);
                Cmd.Parameters.AddWithValue("@idcurso", IdCurso);
                Dr = Cmd.ExecuteReader(); //execução da leitura

                Curso c = null; // Ponteiro

                if (Dr.Read())
                {
                    c = new Curso();
                    c.IdCurso = Convert.ToInt32(Dr["IdCurso"]);
                    c.NomeCurso = Convert.ToString(Dr["NomeCurso"]);
                    c.DataInicio = Convert.ToDateTime(Dr["DataInicio"]);
                    c.DataFinal = Convert.ToDateTime(Dr["DataFinal"]);
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

        public List<Curso> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from tb_curso", Con);
                Dr = Cmd.ExecuteReader();

                List<Curso> lista = new List<Curso>();

                while (Dr.Read())
                {
                    Curso c = new Curso();
                    c.IdCurso = Convert.ToInt32(Dr["IdCurso"]);
                    c.NomeCurso = Convert.ToString(Dr["NomeCurso"]);
                    c.DataInicio = Convert.ToDateTime(Dr["DataInicio"]);
                    c.DataFinal = Convert.ToDateTime(Dr["DataFinal"]);
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
