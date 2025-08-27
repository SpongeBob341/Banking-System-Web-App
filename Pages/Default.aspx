<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BankingSystem.Default" EnableViewState="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banking System</title>
    <link rel="stylesheet" href="Styles/Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Welcome to Banking System</h1>
        </div>

        <!-- Navigation Bar -->
        <div class="navbar">
            <div>
                <a href="Login.aspx">Login</a>
                <a href="Register.aspx">Register</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="container">
            <h2>Banking System</h2>
            <asp:HyperLink ID="lnkMember" runat="server" NavigateUrl="Member.aspx" Text="Member Dashboard" Visible="false"></asp:HyperLink><br />
            <asp:HyperLink ID="lnkStaff" runat="server" NavigateUrl="Staff.aspx" Text="Staff Dashboard" Visible="false"></asp:HyperLink><br />
            <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="Register.aspx" Text="Register"></asp:HyperLink><br />
            <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="Login.aspx" Text="Login"></asp:HyperLink><br />
            <asp:Button ID="btnTestSessions" runat="server" Text="Test Active Sessions" OnClick="btnTestSessions_Click" /><br />
            <asp:Label ID="lblSessionInfo" runat="server" CssClass="result"></asp:Label>
            <hr />
            <h3>TryIt Functions</h3>
            <asp:PlaceHolder ID="phTryIt" runat="server">
                <p><strong>Application and Components Summary Table (Assignments 5 and 6)</strong></p>
                <p><strong>Percentage of overall contribution:</strong> Divyansh Singh 100%</p>
                <table class="gridview">
                    <thead>
                        <tr>
                            <th>Provider name</th>
                            <th>Page and component type</th>
                            <th>Component description</th>
                            <th>Actual resources and methods used</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Assignment 5 Components -->
                        <tr>
                            <td>Divyansh</td>
                            <td>Default.aspx</td>
                            <td>The public Default page that serves as the entry point, linking to all other pages (Login, Register, Member, Staff). Includes session tracking.<br />Inputs: None<br />Outputs: Navigation links, session count</td>
                            <td>GUI design using ASP.NET server controls (HyperLink, Button, Label) and C# code-behind to handle session testing and navigation. Styled with Styles.css.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>Login.aspx</td>
                            <td>Handles user login with authentication verification.<br />Inputs: Username, Password, CAPTCHA<br />Output: Redirects to Member/Staff page or error message</td>
                            <td>C# code-behind to validate credentials against Member.xml and Staff.xml, using FormsAuthentication. Includes CAPTCHA validation. Linked to Default.aspx.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>Register.aspx</td>
                            <td>Allows new users to register.<br />Inputs: Username, Password, CAPTCHA<br />Output: Success message and redirect to Login page</td>
                            <td>C# code-behind to save new user data to Member.xml using XElement. Includes CAPTCHA validation. Linked to Default.aspx.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>Global.asax</td>
                            <td>Application start event handler to track active sessions.<br />Inputs: None<br />Outputs: Session count stored in Application state</td>
                            <td>C# code in Global.asax to increment/decrement session count using Application state. Used across the application for session management.</td>
                        </tr>
                        <!-- Assignment 6 Components -->
                        <tr>
                            <td>Divyansh</td>
                            <td>Member.aspx</td>
                            <td>Member dashboard for managing accounts.<br />Functions:<br />- Create account (Inputs: Account name, initial balance; Output: Success/error message)<br />- Check balance (Input: Account name; Output: Balance in USD)<br />- Deposit (Inputs: Account name, amount; Output: New balance)<br />- Withdraw (Inputs: Account name, amount; Output: New balance)<br />- Transfer (Inputs: From account, to account, amount; Output: Success/error message)<br />- Display user accounts (Output: List of accounts with balances)</td>
                            <td>GUI with ASP.NET controls (DropDownList, TextBox, Button, GridView). C# code-behind interacts with Service1.svc for banking operations. Styled with Styles.css.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>Staff.aspx</td>
                            <td>Staff dashboard to manage all accounts.<br />Functions:<br />- Display all users (Output: List of usernames)<br />- Display all accounts (Output: List of accounts with balances in USD)<br />- Deposit (Inputs: Account name, amount; Output: New balance)<br />- Withdraw (Inputs: Account name, amount; Output: New balance)</td>
                            <td>GUI with GridView and server controls. C# code-behind uses Service1.svc to perform operations and XElement to load users from Member.xml. Styled with Styles.css.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>Service1.svc</td>
                            <td>Banking service for core operations.<br />Functions:<br />- CreateAccount (Inputs: Account name, initial balance, user; Output: Success/error message)<br />- CheckBalance (Inputs: Account name, user; Output: Balance)<br />- Deposit (Inputs: Account name, user, amount; Output: New balance)<br />- Withdraw (Inputs: Account name, user, amount; Output: New balance)<br />- Transfer (Inputs: From account, to account, user, amount; Output: Success/error message)<br />- GetUserAccounts/GetAllAccounts (Output: Dictionary of accounts)</td>
                            <td>WCF service implemented in Service1.svc.cs. Uses XElement to manage accounts in BankingSystemData.xml. Used by Member.aspx and Staff.aspx.</td>
                        </tr>
                        <tr>
                            <td>Divyansh</td>
                            <td>PasswordHasher.cs</td>
                            <td>Hashing function to secure passwords.<br />Inputs: String (password)<br />Output: String (hashed password)</td>
                            <td>Implemented using System.Security.Cryptography.SHA256 to hash passwords. Used in Register.aspx.cs to hash passwords before saving to Member.xml and in Login.aspx.cs to validate credentials.</td>
                        </tr>
                    </tbody>
                </table>
            </asp:PlaceHolder>
        </div>
    </form>
</body>
</html>