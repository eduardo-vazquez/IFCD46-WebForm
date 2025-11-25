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

        protected void LoginUser(object sender, EventArgs e)
        {
            string username = TxtUser.Text;
            string password = TxtPassword.Text;

            using (EmployeesDataContext db = new EmployeesDataContext())
            {
                var user = db.employees
                    .FirstOrDefault(u => u.username == username && u.pwd == password);
                if (user != null)
                {
                    Session["User"] = user.first_name;   
                }

                if (DateTime.Now.Hour < 12)
                {
                    Session["Saludo"] = "Buenos días";
                }
                else if (DateTime.Now.Hour > 20)
                {
                    Session["Saludo"] = "Buenas tardes";
                }
                else
                {
                    Session["Saludo"] = "Buenas tardes";
                }
                Response.Redirect("Default.aspx");
            }
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["User"] = null;
        }
    }
}