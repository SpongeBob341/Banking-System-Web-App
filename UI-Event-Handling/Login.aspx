<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankingApp.Login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta charset="UTF-8" />
    <title>Login Page</title>
    <!-- Add this in the <head> section of your page -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

    <style>
        .login-lists {
            display: flex;
            gap: 50px;
        }
        .login-lists ul {
            list-style-type: none; 
            padding: 0;
            margin: 0;
        }
    </style>

</head>
<body>

    <h1>Login</h1>
    <p>Login with the usernames and passwords provided below. Verfiy you have been logged in by going to home -> member/staff OR tryit -> cookie secret message at the bottom of the page.</p>
    <div class="login-lists">
        <ul>
            <li><strong>Username:</strong> TA</li>
            <li><strong>Password:</strong> Cse445!</li>
        </ul>
        <ul>
            <li><strong>Username:</strong> staff</li>
            <li><strong>Password:</strong> meowaroni</li>
        </ul>
    </div>
    <form id="form1" >
        
        <asp:TextBox ID="userTB" runat="server" Placeholder="Username"></asp:TextBox><br />
        <asp:TextBox ID="passwordTB" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox><br />

        <asp:Button ID="loginB" runat="server" Text="Login" OnClick="loginClick" />
        <asp:Label ID="errorMsg" runat="server" ForeColor="Red"></asp:Label><br />

    </form>
</body>
</html>
    </asp:Content>
