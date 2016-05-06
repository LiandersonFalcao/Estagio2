using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    class Certificado
    {
        public string NomeAluno { get; set; }
        public string NomeCurso { get; set; }
        public string DataInicial { get; set; }
        public string DataFinal { get; set; }
        public string CargaHoraria { get; set; }
        public string DataImpressao { get; set; }
        public string NomeInstrutor { get; set; }
    }
}
