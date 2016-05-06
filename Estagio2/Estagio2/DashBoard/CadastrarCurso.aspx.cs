using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace Estagio2.DashBoard
{
    public partial class CadastrarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();
        }
            
        protected void btnCadastrarCurso_Click(object sender, EventArgs e)
        {
            Curso c = new Curso();
            c.IdInstrutor = Convert.ToInt32(txtIdUsuario.Text);
            c.NomeCurso = txtNomeCurso.Text;
            c.DataInicial = Convert.ToString(txtDataInicial.Text);
            c.DataFinal = Convert.ToString(txtDataFinal.Text);
            c.CargaHoraria = Convert.ToInt32(txtCargaHoraria.Text);
            c.DescricaoCurso = txtDescricaoCurso.InnerText;

            CursoDAL cDAL = new CursoDAL();

            cDAL.Gravar(c);

            lblMensagem.Text = "O curso " + c.NomeCurso + "  foi adicionado com sucesso.";
            txtNomeCurso.Text = string.Empty;
            txtDataInicial.Text = string.Empty;
            txtDataFinal.Text = string.Empty;
            txtCargaHoraria.Text = string.Empty;
            txtDescricaoCurso.InnerText = string.Empty;
        
        }
    }
}