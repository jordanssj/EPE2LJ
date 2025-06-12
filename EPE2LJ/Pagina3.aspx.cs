using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPE2LJ
{
    public partial class Pagina3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string celular = txtCelular.Text.Trim();
            string email = txtEmail.Text.Trim();
            string descripcion = txtDescripcion.Text.Trim();

            lblResultado.Text = $"El correo fue enviado exitosamente a: {nombre} {apellido}<br/>" +
                                $"Email: {email}<br/>" +
                                $"Celular: {celular}<br/>" +
                                $"Su mensaje fue: {descripcion}";
        }
    }
}