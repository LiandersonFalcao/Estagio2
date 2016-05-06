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
    public partial class GerarCertificado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();

            CarregarCursos();
            CarregarAlunos();
        }

        private void CarregarCursos() 
        {
            try
            {
                if (!(IsPostBack))
                {
                    int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);

                    CursoDAL iDAL = new CursoDAL();
                    ddlCurso.DataSource = iDAL.Listar(IdUsuario);
                    ddlCurso.DataBind();

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao listar Cursos" + ex.Message);
            }
        }

        private void CarregarAlunos()
        {
            try
            {
                if (!(IsPostBack))
                {
                    int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);
                    int IdCurso = Convert.ToInt32(ddlCurso.SelectedItem.Value);

                    AlunoDAL aDAL = new AlunoDAL();
                    ddlAluno.DataSource = aDAL.Listar(IdUsuario, IdCurso);
                    ddlAluno.DataBind();

                }
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao listar Cursos" + ex.Message);
            }
        }

        private void CarregarCertificado() 
        {
            int IdCurso = Convert.ToInt32(ddlCurso.SelectedItem.Value);
            int IdAluno = Convert.ToInt32(ddlAluno.SelectedItem.Value);
        }

        protected void ddlCurso_SelectedIndexChanged(object sender, EventArgs e)
        {
           try
                {
                    if (!String.IsNullOrEmpty(ddlCurso.SelectedValue))
                    {
                        int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);
                        int IdCurso = Convert.ToInt32(ddlCurso.SelectedItem.Value);

                        AlunoDAL aDAL = new AlunoDAL();
                        ddlAluno.DataSource = aDAL.Listar(IdUsuario, IdCurso);
                        ddlAluno.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception("Erro ao listar Cursos" + ex.Message);
                }
        }

    }
}