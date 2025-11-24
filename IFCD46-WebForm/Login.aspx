<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IFCD46_WebForm.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text="User: "></asp:Label>
        <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
    </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <asp:Button ID="BtnLogout" runat="server" OnClick="BtnLogout_Click" Text="Logout" />
    </p>
    </main>
</asp:Content>
