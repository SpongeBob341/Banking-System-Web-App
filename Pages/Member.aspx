<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="BankingSystem.Member" EnableViewState="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Dashboard - Banking System</title>
    <link rel="stylesheet" href="Styles/Styles.css" />
    <style>
        /* Preserve specific styles for form-group and hidden */
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; width: auto; }
        .form-group select, .form-group input[type="text"] { width: 100%; max-width: 300px; }
        .form-group input[type="submit"] { margin-right: 10px; }
        .hidden { display: none; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Banking System - Member Dashboard</h1>
        </div>

        <!-- Navigation Bar -->
        <div class="navbar">
            <div>
                <a href="Default.aspx">Home</a>
            </div>
            <div>
                <asp:Label ID="lblUsername" runat="server" ForeColor="White"></asp:Label>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </div>
        </div>

        <!-- Main Content -->
        <div class="container">
            <h3>Functions</h3>
            <p>This page allows you to:</p>
            <ul>
                <li>Create a new bank account with an initial balance.</li>
                <li>Deposit money into your account.</li>
                <li>Withdraw money from your account.</li>
                <li>Transfer money to another account.</li>
                <li>Check your account balance.</li>
            </ul>
            <h2>Member Dashboard</h2>
            <h3>Your Accounts</h3>
            <asp:GridView ID="gvAccounts" runat="server" AutoGenerateColumns="false" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="AccountName" HeaderText="Account Name" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" DataFormatString="{0:C}" />
                </Columns>
            </asp:GridView>
            <h3>Functions</h3>
            <hr />
            <h3>Account Management</h3>
            <div class="form-group">
                <label for="ddlAccountName">Your Account:</label>
                <asp:DropDownList ID="ddlAccountName" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="btnCreateAccount" runat="server" Text="Create New Account" OnClick="btnCreateAccount_Click" />
            </div>
            <div id="divCreateAccount" runat="server" class="form-group hidden">
                <label for="txtNewAccountName">New Account Name:</label>
                <asp:TextBox ID="txtNewAccountName" runat="server"></asp:TextBox>
                <div class="form-group">
                    <asp:Button ID="btnConfirmCreate" runat="server" Text="Confirm" OnClick="btnConfirmCreate_Click" />
                    <asp:Button ID="btnCancelCreate" runat="server" Text="Cancel" OnClick="btnCancelCreate_Click" />
                </div>
            </div>
            <div class="form-group">
                <label for="txtAmount">Initial Balance/Amount:</label>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtToAccount">To Account (for Transfer):</label>
                <asp:TextBox ID="txtToAccount" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnCheckBalance" runat="server" Text="Check Balance" OnClick="btnCheckBalance_Click" />
                <asp:Button ID="btnDeposit" runat="server" Text="Deposit" OnClick="btnDeposit_Click" />
                <asp:Button ID="btnWithdraw" runat="server" Text="Withdraw" OnClick="btnWithdraw_Click" />
                <asp:Button ID="btnTransfer" runat="server" Text="Transfer" OnClick="btnTransfer_Click" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>