using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPE2LJ
{
    public partial class Pagina6 : System.Web.UI.Page
    {
        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            try
            {
                string input = txtNumeros.Text;
                // Split the input string by comma and trim whitespace from each part
                string[] numbersAsString = input.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

                if (numbersAsString.Length == 0)
                {
                    lblResultado.Text = "Error: Por favor, ingrese al menos un número.";
                    lblResultado.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                double sum = 0;
                foreach (string numStr in numbersAsString)
                {
                    // Try to parse each number. If it fails, an exception will be caught.
                    sum += double.Parse(numStr.Trim());
                }

                double average = sum / numbersAsString.Length;

                lblResultado.Text = $"La suma de los números es: {sum.ToString()} <br /> El promedio de los números es: {average:F2}";
                lblResultado.ForeColor = System.Drawing.Color.Green;
            }
            catch (FormatException)
            {
                lblResultado.Text = "Error: Por favor, ingrese números válidos separados por comas.";
                lblResultado.ForeColor = System.Drawing.Color.Red;
            }
            catch (Exception ex)
            {
                lblResultado.Text = "Ha ocurrido un error: " + ex.Message;
                lblResultado.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnVolverIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx"); // Redirects to Index.aspx. Make sure this page exists.
        }
    }
}