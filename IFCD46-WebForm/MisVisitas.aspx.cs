using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Antlr.Runtime.Tree.TreeWizard;

namespace IFCD46_WebForm
{
    public partial class MisVisitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                LblVisitas.Text = "Inicia Sesion";
                return;
            }

            Session["visitas"] = Convert.ToInt32(Session["visitas"] ?? 0) + 1;

            LblVisitas.Text = $"Has visitado esta página {Session["visitas"]} veces.";
        }
    }
}