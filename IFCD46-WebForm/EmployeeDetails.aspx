<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeDetails.aspx.cs" Inherits="IFCD46_WebForm.EmployeeDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Detalles del empleado</h2>
    <div class="row">
        <section class="col-md-6" aria-labelledby="employeeDetailsTitle">
            <table class="">
                <tr>
                    <th>Nombre:</th>
                    <td><asp:Textbox ID="TxtFirstName" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Apellido:</th>
                    <td><asp:Textbox ID="TxtLastName" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Email:</th>
                    <td><asp:Textbox ID="TxtEmail" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Teléfono:</th>
                    <td><asp:Textbox ID="TxtPhoneNumber" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Fecha de contratación:</th>
                    <td><asp:Textbox ID="TxtHireDate" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Puesto:</th>
                    <td>
                        <asp:DropDownList ID="DropDownListJob" runat="server" CssClass="form-select w-100">
                        </asp:DropDownList>
                    </td>
                    </tr>
                <tr>
                    <th>Salario:</th>
                    <td><asp:Textbox ID="TxtSalary" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Gerente:</th>
                    <td><asp:Textbox ID="TxtManager" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                    </tr>
                <tr>
                    <th>Departamento:</th>
                    <td>
                        <asp:DropDownList ID="DropDownListDepartament" runat="server" CssClass="form-select w-100">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th>Ciudad:</th>
                    <td><asp:Textbox ID="TxtCity" runat="server" CssClass="form-control" ReadOnly="True"></asp:Textbox></td>
                </tr>
            </table>
            <div>
            <%-- guardar los cambios cuando hayan cambios --%>
                <asp:Button ID="BtnSaveChanges" runat="server" Text="Guardar Cambios" CssClass="btn btn-primary mt-3"   />
            </div>
        </section>

    </div>
</asp:Content>
