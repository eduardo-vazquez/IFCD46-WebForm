<%@ Page Title="Mis Visitas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MisVisitas.aspx.cs" Inherits="IFCD46_WebForm.MisVisitas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %> Mis Visitas</h2>

        <asp:PlaceHolder ID="phMensaje" runat="server"></asp:PlaceHolder>
        <asp:Label ID="LblVisitas" runat="server" Text="0"></asp:Label>
    </main>
</asp:Content>

