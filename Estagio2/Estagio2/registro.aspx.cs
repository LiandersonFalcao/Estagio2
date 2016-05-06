using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace Estagio2
{
    public partial class joinus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CadastrarInstrutor(object sender, EventArgs e)
        {
            Instrutor i = new Instrutor();
            i.NomeInstrutor = txtNome.Text;
            i.Login = txtUsuario.Text;
            i.EmailInstrutor = txtEmail.Text;
            i.Senha = txtSenha.Text;

            InstrutorDAL iDAL = new InstrutorDAL();
            iDAL.Gravar(i);

            lblMensagem.Text = "Cadastro de " + i.NomeInstrutor + "  realizado com sucesso. Faça login agora mesmo.";
            txtNome.Text = string.Empty;
            txtUsuario.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSenha.Text = string.Empty;
            
        }
    }
}