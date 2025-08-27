<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BankingSystem.Register" EnableViewState="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Banking System</title>
    <link rel="stylesheet" href="Styles/Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Banking System - Register</h1>
        </div>

        <!-- Navigation Bar -->
        <div class="navbar">
            <div>
                <a href="Default.aspx">Home</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="container">
            <h2>Register</h2>
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
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </div>
            <asp:Label ID="lblMessage" runat="server" CssClass="result"></asp:Label>
            <p>Already have an account? <a href="Login.aspx">Login</a></p>
        </div>
    </form>
</body>
</html>