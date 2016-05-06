using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Persistence;
using DAL.Model;

namespace Estagio2.DashBoard
{
    public partial class ConsultarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();
            if (!IsPostBack) 
            {
                CarregarGridView();
            }
            
        }

        private void CarregarGridView() 
        {
            try
            {
                int IdUsuario = Convert.ToInt32(txtIdUsuario.Text);

                CursoDAL iDAL = new CursoDAL();
                gridCursos.DataSource = iDAL.Listar(IdUsuario);
                gridCursos.DataBind();
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }

        protected void gridCursos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridCursos.EditIndex = e.NewEditIndex;
            CarregarGridView();
        }

        protected void gridCursos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int index = e.RowIndex;
            Label lblId = gridCursos.Rows[index].FindControl("lblId") as Label;
            int IdCurso = Convert.ToInt32(lblId.Text);
            CursoDAL cDAL = new CursoDAL();
            cDAL.Excluir(IdCurso);

            gridCursos.EditIndex = -1;
            CarregarGridView();

        }

        protected void gridCursos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            Label lblId = gridCursos.Rows[index].FindControl("lblId") as Label;
            TextBox txtNomeCurso = gridCursos.Rows[index].FindControl("txtNomeCurso") as TextBox;
            TextBox txtDataInicial = gridCursos.Rows[index].FindControl("txtDataInicial") as TextBox;
            TextBox txtDataFinal = gridCursos.Rows[index].FindControl("txtDataFinal") as TextBox;
            TextBox txtCargaHoraria = gridCursos.Rows[index].FindControl("txtCargaHoraria") as TextBox;

                Curso c = new Curso();
                c.IdCurso = Convert.ToInt32(lblId.Text);
                c.NomeCurso = Convert.ToString(txtNomeCurso.Text);
                c.DataInicial = Convert.ToString(txtDataInicial.Text);
                c.DataFinal = Convert.ToString(txtDataFinal.Text);
                c.CargaHoraria = Convert.ToInt32(txtCargaHoraria.Text);
                CursoDAL cDAL = new CursoDAL();
                cDAL.AtualizarGrid(c);

            gridCursos.EditIndex = -1;
            CarregarGridView();
        }

        protected void gridCursos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridCursos.EditIndex = -1;
            CarregarGridView();
        }

    }
}