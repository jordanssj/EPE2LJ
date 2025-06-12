using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPE2LJ
{
    public partial class Pagina4 : System.Web.UI.Page
    {
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double numero1, numero2, resultado = 0;
            string operacion = ddlOperacion.SelectedValue;

            bool esValido1 = double.TryParse(txtNumero1.Text, out numero1);
            bool esValido2 = double.TryParse(txtNumero2.Text, out numero2);

            if (!esValido1 || !esValido2)
            {
                lblResultado.Text = "Ingrese números válidos.";
                return;
            }

            switch (operacion)
            {
                case "sumar":
                    resultado = numero1 + numero2;
                    break;
                case "restar":
                    resultado = numero1 - numero2;
                    break;
                case "multiplicar":
                    resultado = numero1 * numero2;
                    break;
                case "dividir":
                    if (numero2 == 0)
                    {
                        lblResultado.Text = "No se puede dividir por cero.";
                        return;
                    }
                    resultado = numero1 / numero2;
                    break;
            }

            lblResultado.Text = $"Resultado: {resultado}";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}