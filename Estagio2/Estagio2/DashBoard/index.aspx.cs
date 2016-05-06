using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;

namespace Estagio2.DashBoard
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            txtIdUsuario.Text = Session["SessionID"].ToString();
            NomeUser.Text = Session["SessionNome"].ToString();

        }
    }
}