using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EPE2LJ
{
    public partial class Pagina1 : System.Web.UI.Page
    {
        protected void btnCalcularPromedio_Click(object sender, EventArgs e)
        {
            double eva1Weight = 0.07, epe1Weight = 0.07, epe2Weight = 0.14;
            double eva2Weight = 0.07, eva3Weight = 0.14, epe3Weight = 0.21;
            double totalWeight = eva1Weight + epe1Weight + epe2Weight + eva2Weight + eva3Weight + epe3Weight;

            if (double.TryParse(txtEva1.Text, out double eva1) &&
                double.TryParse(txtEpe1.Text, out double epe1) &&
                double.TryParse(txtEpe2.Text, out double epe2) &&
                double.TryParse(txtEva2.Text, out double eva2) &&
                double.TryParse(txtEva3.Text, out double eva3) &&
                double.TryParse(txtEpe3.Text, out double epe3))
            {
                if (AreNotesValid(eva1, epe1, epe2, eva2, eva3, epe3))
                {
                    double weightedSum = (eva1 * eva1Weight) + (epe1 * epe1Weight) +
                                         (epe2 * epe2Weight) + (eva2 * eva2Weight) +
                                         (eva3 * eva3Weight) + (epe3 * epe3Weight);

                    double promedio = weightedSum / totalWeight;
                    string estado = (promedio >= 4.0) ? "¡Aprobado!" : "Reprobado.";
                    lblPromedioResultado.Text = $"Promedio Final: {promedio:F1} ({estado})";
                }
                else
                {
                    lblPromedioResultado.Text = "Error: Las notas deben estar entre 1.0 y 7.0.";
                }
            }
            else
            {
                lblPromedioResultado.Text = "Error: Por favor, ingrese valores numéricos válidos para todas las notas.";
            }
        }

        private bool AreNotesValid(params double[] notes)
        {
            foreach (double note in notes)
            {
                if (note < 1.0 || note > 7.0)
                    return false;
            }
            return true;
        }
    }
}