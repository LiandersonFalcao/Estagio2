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
    public partial class CadastrarAluno : System.Web.UI.Page
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

        protected void btnCadastrarAluno_Click(object sender, EventArgs e)
        {
            try
            {
                Aluno a = new Aluno();

                a.IdInstrutor = Convert.ToInt32(txtIdUsuario.Text);
                a.IdCurso = Convert.ToInt32(ddl.SelectedItem.Value);
                a.NomeAluno = txtNomeAluno.Text;
                a.EmailAluno = txtEmailAluno.Text;
                AlunoDAL aDAL = new AlunoDAL();
                aDAL.Gravar(a);
                lblmensagemTrue.Text = "O aluno " + a.NomeAluno + "  foi adicionado com sucesso.";
                txtNomeAluno.Text = string.Empty;
                txtEmailAluno.Text = string.Empty;
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }

        protected void btnMostrarCadastro(object sender, EventArgs e)
        {
            pnlDados.Visible = true;
        }
    }
}