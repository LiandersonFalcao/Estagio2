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
    public partial class ConsultarAluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();

            try
            {
                if (!(IsPostBack))
                {
                    int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);

                    CursoDAL cDAL = new CursoDAL();
                    ddl.DataSource = cDAL.Listar(IdUsuario);
                    ddl.DataBind();
                    
                }
            }
            catch (Exception ex)
            {

                lblmensagemFalse.Text = ex.Message;
            }

        }

        private void CarregarGridView()
        {
            try
            {
                int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);
                int IdCurso = Convert.ToInt32(ddl.SelectedItem.Value);

                AlunoDAL aDAL = new AlunoDAL();
                gridAlunos.DataSource = aDAL.Listar(IdUsuario, IdCurso);
                gridAlunos.DataBind();

                

            }
            catch (Exception ex)
            {

                lblmensagemFalse.Text = ex.Message;
            }
        }


        protected void btnPesquisarCurso_Click(object sender, EventArgs e)
        {
            CarregarGridView();
        }

        protected void gridAlunos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridAlunos.EditIndex = e.NewEditIndex;
            CarregarGridView();
        }

        protected void gridAlunos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridAlunos.EditIndex = -1;
            CarregarGridView();
        }

        protected void gridAlunos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            Label lblIdAluno = gridAlunos.Rows[index].FindControl("lblIdAluno") as Label;
            TextBox txtNomeAluno = gridAlunos.Rows[index].FindControl("txtNomeAluno") as TextBox;
            TextBox txtEmailAluno = gridAlunos.Rows[index].FindControl("txtEmailAluno") as TextBox;

            Aluno a = new Aluno();
            a.IdAluno = Convert.ToInt32(lblIdAluno.Text);
            a.NomeAluno = Convert.ToString(txtNomeAluno.Text);
            a.EmailAluno = Convert.ToString(txtEmailAluno.Text);
            AlunoDAL aDAL = new AlunoDAL();
            aDAL.Atualizar(a);

            gridAlunos.EditIndex = -1;
            CarregarGridView();
        }

        protected void gridAlunos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            int index = e.RowIndex;
            Label lblIdAluno = gridAlunos.Rows[index].FindControl("lblIdAluno") as Label;
            int IdCurso = Convert.ToInt32(lblIdAluno.Text);
            AlunoDAL aDAL = new AlunoDAL();
            aDAL.Excluir(IdCurso);

            gridAlunos.EditIndex = -1;
            CarregarGridView();
        }
    }
}