<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IFCD46_WebForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <p>
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </p>
                <p>
                    <asp:DropDownList ID="DropDownDias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownDias_CambiarButton">
                        <asp:ListItem>LUNES</asp:ListItem>
                        <asp:ListItem>MARTES</asp:ListItem>
                        <asp:ListItem>MIERCOLES</asp:ListItem>
                        <asp:ListItem>JUEVES</asp:ListItem>
                        <asp:ListItem>VIERNES</asp:ListItem>
                        <asp:ListItem>SABADO </asp:ListItem>
                        <asp:ListItem>DOMINGO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button2" runat="server" OnClick="DropDownDias_CambiarButton" Text="Button" />
                </p>
                <p>
                    &nbsp;</p>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="user"></asp:Label>
                    <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
                    <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
                </p>
                <p>
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                </p>
                <p ID="estado" runat="server">
                    unlogged
                    &nbsp;</p>    

            </section>
        </div>
    </main>

</asp:Content>
