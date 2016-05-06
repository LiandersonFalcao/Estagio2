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
    public partial class MudarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();

            CarregarDadosUsuario();
            
        }

        private void CarregarDadosUsuario() 
        {
            int IdInstrutor = Convert.ToInt32(txtIdUsuario.Text);
            InstrutorDAL iDAL = new InstrutorDAL();
            Instrutor i = iDAL.PesquisarPorCodigo(IdInstrutor);

            if (i != null)
            {
                txtNomeInstrutor.Text = i.NomeInstrutor;
                txtEmailInstrutor.Text = i.EmailInstrutor;
                txtLogin.Text = i.Login;
            }
        }

        protected void btnAlterarInstrutor(object sender, EventArgs e)
        {
            try
            {
                Instrutor i = new Instrutor();
                i.IdInstrutor = Convert.ToInt32(txtIdUsuario.Text);
                i.NomeInstrutor = Convert.ToString(txtNomeInstrutor.Text);
                i.EmailInstrutor = Convert.ToString(txtEmailInstrutor.Text);
                i.Login = Convert.ToString(txtLogin.Text);

                InstrutorDAL iDAL = new InstrutorDAL();
                iDAL.Atualizar(i);
                lblMensagem.Text = "Usuário " + i.Login + " atualizado com sucesso.";

            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}