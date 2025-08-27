<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankingApp._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Bank Management Application</title>
        <link rel="stylesheet" href="Styles/Default.css" /> <!-- Link to custom CSS if needed -->
    </head>
    <body>
        <header>
            <h1>Welcome to your Bank Management App</h1>
            <p>Manage all your bank transactions and deposits in one place. Explore the menu bar at the top for logging in and trying currently offered services.</p>
            <p>If you wish to access member or staff pages, either log in at the top or click the corresponding "Member Page" or "Staff Page" button. Users who have not logged in
                will be immediately prompted to login upon clicking these buttons.
            </p>
            <p>For assigment 5 grading purposes, the Application + Components Summary Table can be accesed by clicking the button below or using the menu at the top.</p>
        </header>
            <br />
            <br />
            
            <h2>*Application + Components Summary Table*</h2>
            <p>(Service Directory Table)</p>
            <asp:Button ID="acButton" runat="server" CssClass="nav-button" Text="View Service Directory Table!" OnClick="summaryTable_Click" />
            <br />
            <br />
            <br />

            <h2>Member and Staff Pages:</h2>
            <asp:Button ID="btnMember" runat="server" CssClass="nav-button" Text="Member Page" OnClick="memberClick" />
            <asp:Button ID="btnStaff" runat="server" CssClass="nav-button" Text="Staff Page" OnClick="staffClick" />

            <br />
            <br />
    </body>
    </html>

</asp:Content>