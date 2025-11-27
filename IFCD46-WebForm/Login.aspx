<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IFCD46_WebForm.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="d-flex justify-content-center align-items-center vh-100">
        <div class="card p-4 shadow" style="width: 400px;">

            <!-- Usuario -->
            <div id="loginUserContainer" runat="server" class="login-step" Visible="true">
                <div class="mb-3">
                    <asp:Label ID="Label1" runat="server" Text="Email: " CssClass="form-label"></asp:Label>
                    <div class="input-group">
                        <asp:TextBox ID="TxtUser" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:LinkButton ID="BtnCheckUser" runat="server" OnClick="CheckUserExists" CssClass="btn btn-primary">
                            <i class="fa-solid fa-circle-arrow-right"></i>
                        </asp:LinkButton>
                    </div> 
                    <div id="email-error-messages">
                        <asp:RequiredFieldValidator
                            ErrorMessage="Ingrese un email"
                            ControlToValidate="TxtUser"
                            runat="server"
                            ForeColor="Red"
                            Display="Dynamic"/>

                        <asp:RegularExpressionValidator
                            ErrorMessage="Ingrese un correo valido"
                            ControlToValidate="TxtUser"
                            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                            runat="server"
                            ForeColor="Red"
                            Display="Dynamic" />
                    </div>
                </div>
            </div>

            <!-- Contraseña -->
            <div id="loginPwdContainer" runat="server" class="login-step" Visible="false">
                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña:" CssClass="form-label"></asp:Label>
                    <div class="input-group">
                        <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password" ></asp:TextBox>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="CheckPassword" CssClass="btn btn-primary">
                            <i class="fa-solid fa-circle-arrow-right"></i>
                        </asp:LinkButton>
                    </div>
                    <div id="pwd-error-messages">
                        <asp:RequiredFieldValidator
                            ErrorMessage="Ingrese un email"
                            ControlToValidate="TxtPassword"
                            runat="server"
                            ForeColor="Red"
                            Display="Dynamic"/>
                    </div>
                </div>
            </div>


            <!-- Crear nueva contraseña -->
            <div id="loginCreatePasswordContainer" runat="server" class="login-step" Visible="false">
                <h5 class="mb-3">El usuario existe pero necesita una nueva contraseña</h5>
                <div class="mb-3">
                    <asp:Label ID="Label3" runat="server" Text="Crea una nueva contraseña:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ErrorMessage="Campo Vacio"
                        ControlToValidate="TextBox1"
                        runat="server"
                        ForeColor="Red"
                        Display="Dynamic" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="Label4" runat="server" Text="Repite la contraseña:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ErrorMessage="Campo Vacio"
                        ControlToValidate="TextBox2"
                        runat="server"
                        ForeColor="Red"
                        Display="Dynamic"
                        />
                </div>
                <div class="d-flex justify-content-end">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="CreatePassword" CssClass="btn btn-success">
                        <i class="fa-solid fa-circle-arrow-right"></i>
                    </asp:LinkButton>
                </div>
                <div id="new-password-error-message">
                    <asp:CompareValidator
                        ControlToValidate="TextBox1"
                        ControlToCompare="TextBox2"
                        ErrorMessage="Las contraseñas no coinciden"
                        runat="server"
                        Display="Dynamic"
                    />
                </div>
            </div>

        </div>
    </main>

    <style>
        .login-step {
            transition: all 0.5s ease;
        }
        .login-step.hidden-left {
            opacity: 0;
            transform: translateX(-50px);
        }
        .login-step.hidden-right {
            opacity: 0;
            transform: translateX(50px);
        }
    </style>

</asp:Content>
