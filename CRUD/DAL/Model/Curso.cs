﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Curso
    {
        public int IdCurso { get; set; }
        public int IdInstrutor { get; set; }
        public string NomeCurso { get; set; }
        public string DataInicial { get; set; }
        public string DataFinal { get; set; }
        public int CargaHoraria { get; set; }
        public string DescricaoCurso { get; set; }
    }
}
