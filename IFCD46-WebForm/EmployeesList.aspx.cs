using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IFCD46_WebForm
{
    public partial class EmployeesList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                LoadEmployees();
            }

        }

        private void LoadEmployees()
        {
            using (EmployeesDataContext db = new EmployeesDataContext())
            {
                // Traer todos los empleados
                var employees = db.employees
                                  .Select(emp => new
                                  {
                                      emp.first_name,
                                      emp.last_name,
                                      emp.salary
                                  })
                                  .ToList();

                // Limpiar el tbody antes de llenar
                EmployeesRepeater.Controls.Clear();

                foreach (var emp in employees)
                {
                    // Crear una fila <tr>
                    var tr = new System.Web.UI.HtmlControls.HtmlTableRow();

                    // Crear celdas <td>
                    var tdFirstName = new System.Web.UI.HtmlControls.HtmlTableCell { InnerText = emp.first_name };
                    var tdLastName = new System.Web.UI.HtmlControls.HtmlTableCell { InnerText = emp.last_name };
                    var tdSalary = new System.Web.UI.HtmlControls.HtmlTableCell { InnerText = emp.salary.ToString()};

                    // Agregar celdas a la fila
                    tr.Cells.Add(tdFirstName);
                    tr.Cells.Add(tdLastName);
                    tr.Cells.Add(tdSalary);

                    // Agregar fila al tbody
                    EmployeesRepeater.Controls.Add(tr);
                }
            }
        }

    }
}