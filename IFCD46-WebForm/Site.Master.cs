using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IFCD46_WebForm
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["User"] != null)
                {
                    LblUser.Text = $"{Session["Saludo"]}, {Session["User"]}";
                    LblUser.Visible = true;
                    LinkLogout.Visible = true;
                    LoginLink.Visible = false;
                    EmployeesListLink.Visible = true;
                    MisVisitasLink.Visible = true;
                }
                else
                {
                    LblUser.Visible = false;
                    LinkLogout.Visible = false;
                }

                if (Session["Role"] != null && Session["Role"].ToString() == "admin")
                { 
                    AdminLink.Visible = true;
                }
                else
                {
                    AdminLink.Visible = false;
                }
            }
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}