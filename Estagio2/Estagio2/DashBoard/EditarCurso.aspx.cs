using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.Data.SqlClient;

namespace Estagio2.DashBoard
{
    public partial class EditarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                pnlDados.Visible = false;
                txtIdUsuario.Text = Session["SessionID"].ToString();
                NomeUser.Text = Session["SessionNome"].ToString();

                try
                {
                    if (!(IsPostBack)) 
                    { 

                        int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);

                        CursoDAL iDAL = new CursoDAL();
                        ddl.DataSource = iDAL.Listar(IdUsuario);
                        ddl.DataBind();
                    }
                }
                catch (Exception ex)
                {

                    lblmensagemFalse.Text = ex.Message;
                }
        }

        protected void btnPesquisarCurso_Click(object sender, EventArgs e)
        {
            try {
                 
                int IdCurso = Convert.ToInt32(ddl.SelectedItem.Value);
                CursoDAL cDAL = new CursoDAL();
                Curso c = cDAL.PesquisarPorCodigo(IdCurso);

                if (c != null)
                {
                    lblmensagemFalse.Text = string.Empty;
                    pnlDados.Visible = true;
                    txtNomeCurso.Text = c.NomeCurso;
                    txtDataInicial.Text = c.DataInicial;
                    txtDataFinal.Text = c.DataFinal;
                    txtCargaHoraria.Text = Convert.ToString(c.CargaHoraria);
                    txtDescricaoCurso.InnerText = c.DescricaoCurso;
                }
                else
                {
                    lblmensagemFalse.Text = "Você não possui cursos com este Id.";
                }
            }
            catch (Exception ex)
            {
                lblmensagemFalse.Text = ex.Message;
                
            }
        }

        protected void AtualizarCurso_Click(object sender, EventArgs e)
        {
            try
            {
                Curso c = new Curso();
                c.IdCurso = Convert.ToInt32(ddl.SelectedItem.Value);
                c.NomeCurso = Convert.ToString(txtNomeCurso.Text);
                c.DataInicial = Convert.ToString(txtDataInicial.Text);
                c.DataFinal = Convert.ToString(txtDataFinal.Text);
                c.CargaHoraria = Convert.ToInt32(txtCargaHoraria.Text);
                c.DescricaoCurso = Convert.ToString(txtDescricaoCurso.Value);

                CursoDAL cDAL = new CursoDAL();
                cDAL.Atualizar(c);
                lblmensagemTrue.Text = "Curso " + c.NomeCurso + " atualizado com sucesso.";
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void ExcluirCurso_Click(object sender, EventArgs e)
        {
            try
            {
                int IdCurso = Convert.ToInt32(ddl.SelectedItem.Value);
                Curso c = new Curso();
                CursoDAL cDAL = new CursoDAL();

                cDAL.Excluir(IdCurso);

                lblmensagemTrue.Text = "Curso " + c.NomeCurso + "excluído com sucesso.";
                txtNomeCurso.Text = string.Empty;
                txtDataInicial.Text = string.Empty;
                txtDataFinal.Text = string.Empty;
                txtCargaHoraria.Text = string.Empty;
                txtDescricaoCurso.Value = string.Empty;
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}