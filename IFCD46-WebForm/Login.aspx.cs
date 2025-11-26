using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography; // Para RandomNumberGenerator y SHA256
using System.Text;

namespace IFCD46_WebForm
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckUserExists(object sender, EventArgs e)
        {
            string usermail = TxtUser.Text;

            using (EmployeeDataContext db = new EmployeeDataContext())
            {
                // Buscar en la tabla employees el primer registro cuyo username y pwd coincidan
                // con los valores proporcionados. Si no encuentra ninguno, devuelve null.
                var user = db.employees.FirstOrDefault(emp => emp.email == usermail);

                if (user != null)
                {
                    Session["Email"] = user.email;
                    loginUserContainer.Visible = false;
                    if (user.passwordSalt != null && user.passwordHash != null)
                        loginPwdContainer.Visible = true;
                    else if (user.passwordHash == null && user.passwordSalt == null)
                        loginCreatePasswordContainer.Visible = true;
                    else
                        loginPwdContainer.Visible = true;
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
            }
        }
        protected void CheckPassword(object sender, EventArgs e)
        {
            using (EmployeeDataContext db = new EmployeeDataContext())
            {
                string usermail = Session["Email"].ToString();

                var user = db.employees.FirstOrDefault(emp => emp.email == usermail);

                string password = TxtPassword.Text;

                if (user != null && user.passwordHash != null && user.passwordSalt != null)
                {
                    // Convertir Binary a byte[]
                    byte[] storedHash = user.passwordHash.ToArray();
                    byte[] storedSalt = user.passwordSalt.ToArray();

                    if (PasswordHelper.VerifyPasswordHash(password, storedHash, storedSalt))
                    {
                        Session["User"] = user.first_name;
                        loginPwdContainer.Visible = false;
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        // Mostrar mensaje de error
                        // lblError.Text = "Contraseña incorrecta";
                    }
                }
            }
            }

        protected void CreatePassword(object sender, EventArgs e)
        {
            string usermail = Session["Email"].ToString();
            string newPassword = TextBox1.Text;
            string repeatPassword = TextBox2.Text;

            if (newPassword != repeatPassword)
            {
                // Mostrar mensaje de error: las contraseñas no coinciden
                return;
            }

            using (EmployeeDataContext db = new EmployeeDataContext())
            {
                var user = db.employees.FirstOrDefault(emp => emp.email == usermail);
                if (user != null)
                {
                    byte[] hash, salt;
                    PasswordHelper.CreatePasswordHash(newPassword, out hash, out salt);

                    user.passwordHash = hash;
                    user.passwordSalt = salt;

                    db.SubmitChanges();

                    // Después de crear la contraseña, mostrar login de password
                    Response.Redirect("Login.aspx");
                }
            }
        }



        protected void Logout(object sender, EventArgs e)
        {
            Session["User"] = null;
        }
    }
}