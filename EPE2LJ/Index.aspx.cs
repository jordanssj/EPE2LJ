using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPE2LJ
{
    public partial class Index : System.Web.UI.Page
    {
        protected void btnPagina1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagina1.aspx");
        }

        protected void btnPagina2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagina2.aspx");
        }

        protected void btnPagina3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagina3.aspx");
        }

        protected void btnPagina4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagina4.aspx");
        }
        protected void btnPagina5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagina5.aspx");
        }
    }
}