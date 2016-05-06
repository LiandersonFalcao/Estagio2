using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Aluno
    {
        public int IdAluno { get; set; }
        public int IdCurso { get; set; }
        public int IdInstrutor { get; set; }
        public string NomeAluno { get; set; }
        public string EmailAluno { get; set; }
    }
}
