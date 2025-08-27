<%@ Page Title="Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="BankingApp.Staff" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Staff Page</title>
    </head>
    <body>
        <form id="form1">
            <div>
                <h1>Staff Page</h1>
                <p>You can view this page because you are signed in as staff. You will continue to have access to this page until you log out.</p>
                    

                <asp:Button ID="logoutBtn" runat="server" Text="Logout" OnClick="Logout_Click" />
            </div>
        </form>
    </body>
    </html>
 </asp:Content>
