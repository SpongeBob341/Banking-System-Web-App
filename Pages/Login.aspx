<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankingSystem.Login" EnableViewState="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Banking System</title>
    <link rel="stylesheet" href="Styles/Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Banking System - Login</h1>
        </div>

        <!-- Navigation Bar -->
        <div class="navbar">
            <div>
                <a href="Default.aspx">Home</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="container">
            <h2>Login</h2>
            <div>
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <label for="lblCaptcha">CAPTCHA:</label>
                <asp:Label ID="lblCaptcha" runat="server"></asp:Label>
            </div>
            <div>
                <label for="txtCaptcha">Enter CAPTCHA:</label>
                <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="result"></asp:Label>
            <p>Need an account? <a href="Register.aspx">Register</a></p>
        </div>
    </form>
</body>
</html>