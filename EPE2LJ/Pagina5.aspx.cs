using System;
using System.Web.UI;

namespace EPE2LJ
{
    public partial class Pagina5 : Page
    {
        // Variable de instancia
        private int variableInstancia = 20;

        // Variable estática
        private static int variableEstatica = 30;

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            // Variable local
            int variableLocal = 10;

            lblResultado.Text = $"Variable Local: {variableLocal}<br />" +
                                $"Variable de Instancia: {variableInstancia}<br />" +
                                $"Variable Estática: {variableEstatica}";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}