<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="BankingSystem.Staff" EnableViewState="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Dashboard - Banking System</title>
    <link rel="stylesheet" href="Styles/Styles.css" />
    <style>
        /* Preserve specific styles for form-group */
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; width: auto; }
        .form-group select, .form-group input[type="text"] { width: 100%; max-width: 300px; }
        .form-group input[type="submit"] { margin-right: 10px; }
        /* Inline GridView styles will be overridden by .gridview in Styles.css */
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Banking System - Staff Dashboard</h1>
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
            <!-- Add New Staff Member -->
            <h3>Add New Staff Member</h3>
            <div class="form-group">
                <label for="txtNewStaffUsername">New Staff Username:</label>
                <asp:TextBox ID="txtNewStaffUsername" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtNewStaffPassword">New Staff Password:</label>
                <asp:TextBox ID="txtNewStaffPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddStaff" runat="server" Text="Add Staff Member" OnClick="btnAddStaff_Click" />
            </div>
            <h2>Staff Dashboard</h2>
            <h3>All Users</h3>
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                </Columns>
            </asp:GridView>
            <h3>All Accounts</h3>
            <asp:GridView ID="gvAccounts" runat="server" AutoGenerateColumns="false" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="AccountName" HeaderText="Account Name" />
                    <asp:BoundField DataField="Balance" HeaderText="Balance" DataFormatString="{0:C}" />
                    <asp:BoundField DataField="Owner" HeaderText="Owner" />
                </Columns>
            </asp:GridView>
            <h3>Manage Account Balance</h3>
            <div class="form-group">
                <label for="ddlAccounts">Select Account:</label>
                <asp:DropDownList ID="ddlAccounts" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtAmount">Amount:</label>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnDeposit" runat="server" Text="Deposit" OnClick="btnDeposit_Click" />
                <asp:Button ID="btnWithdraw" runat="server" Text="Withdraw" OnClick="btnWithdraw_Click" />
            </div>
            <div class="form-group">
                <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>