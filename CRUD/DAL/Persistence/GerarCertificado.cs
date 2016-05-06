using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    class GerarCertificado : Conexao
    {
        public void PreencherCertificado(int IdCurso, int IdAluno, int IdInstrutor)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select NomeAluno, NomeCurso, convert(varchar(20),DataInicial,103) as DataInicial, convert(varchar(20),DataFinal,103) as DataFinal, CargaHoraria, convert(varchar(02),DatePart(day,getdate())) + ' De ' + DateName(Month,getdate()) + ' de ' + convert(varchar(04),DatePart(YEar,getdate())) as DataImpressão, NomeInstrutor from tb_aluno a join tb_curso b on b.IdCurso = a.IdCurso join tb_instrutor c on c.IdInstrutor = a.IdInstrutor where a.IdAluno=@idAluno and a.IdCurso=@idCurso and IdInstrutor=@idInstrutor", Con);
                Cmd.Parameters.AddWithValue("@idCurso", IdCurso);
                Cmd.Parameters.AddWithValue("@idAluno", IdAluno);
                Cmd.Parameters.AddWithValue("@idAluno", IdAluno);
                Dr = Cmd.ExecuteReader();
            }

            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
