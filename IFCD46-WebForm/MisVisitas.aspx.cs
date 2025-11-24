using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IFCD46_WebForm
{
    public partial class MisVisitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                phMensaje.Controls.Add(new Literal { Text = "<p>Inicia sesión</p>" });
                LblVisitas.Visible = false; // ocultamos el contador
            }
            else
            {
                int visitas = 0;
                if (Session["visitas"] != null)
                    visitas = (int)Session["visitas"];

                visitas++; // incrementar contador
                Session["visitas"] = visitas;

                phMensaje.Controls.Clear(); // eliminamos mensaje si existía
                LblVisitas.Text = $"Has visitado esta página {visitas} veces.";
                LblVisitas.Visible = true;
            }
        }
}