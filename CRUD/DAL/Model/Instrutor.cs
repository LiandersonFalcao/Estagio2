using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Instrutor
    {
        public int IdInstrutor { get; set; }
        public string NomeInstrutor { get; set; }
        public string EmailInstrutor { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }

        public string NomeCurso { get; set; }
    }
}
