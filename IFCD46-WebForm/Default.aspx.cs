using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IFCD46_WebForm
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Text = txtNombre.Text;
        }

        protected void DropDownDias_CambiarButton(object sender, EventArgs e)
        {
            Button2.Text = DropDownDias.SelectedValue.ToString();
        }

        protected void DropDown_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownDias_CreatingModelDataSource(object sender, CreatingModelDataSourceEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Console.WriteLine(DropDownDias.SelectedIndex);
            Console.WriteLine(DropDownDias.SelectedValue);
            Button1.Text = DropDownDias.SelectedValue.ToString();
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (TxtUser.Text == "admin" && TxtPassword.Text == "admin")
            { 
                Session["estado"] = "logged";
                estado.InnerText = Session["estado"].ToString();
            }
            else
            {
                estado.InnerText = "Login fallido";
            }
        }
    }
}