using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IFCD46_WebForm
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TxtUser.Text == TxtPassword.Text )
            { 
                if (TxtUser.Text == "admin")
                    Session["role"] = "admin";
                else
                    Session["role"] = "user";


                Session["User"] = TxtUser.Text;

                int hora = DateTime.Now.Hour;
                if ( hora < 12)
                {
                    Session["saludo"] = "Buenos días";
                }
                else if (hora < 20)
                {
                    Session["saludo"] = "Buenas tardes";
                }
                else
                {
                    Session["saludo"] = "Buenas noches";
                }
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
        }
    }
}