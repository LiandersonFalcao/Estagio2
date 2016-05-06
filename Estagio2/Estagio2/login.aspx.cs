using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;
using System.Data.SqlClient;

namespace Estagio2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string Usuario = txtUsuario.Text;
                string Senha = txtSenha.Text;
                ValidarUsuario v = new ValidarUsuario();
                Instrutor i = v.ValidarLogin(Usuario, Senha);
                if (i != null)
                {
                    Session["SessionID"] = i.IdInstrutor;
                    Session["SessionNome"] = txtUsuario.Text;
                    Response.Redirect("/DashBoard/index.aspx");
                }
                else {
                    lblMensagem.Text = "Usuário ou senha incorretos";
                }
               
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }

        }
    }
}