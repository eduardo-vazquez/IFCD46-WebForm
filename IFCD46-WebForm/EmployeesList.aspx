<%@ Page Title="Employee List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeesList.aspx.cs" Inherits="IFCD46_WebForm.EmployeesList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h2>Employee List</h2>
        <div class="row">
            <section class="col-md-12" aria-labelledby="hostingTitle">
                <table class="table table-striped" id="EmployeesListTable">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Salary</th>
                        </tr>
                    </thead>
                    <tbody ID="EmployeesRepeater" runat="server">
                    </tbody>
                 </table>
            </section>
        </div>
    </main>

</asp:Content>
