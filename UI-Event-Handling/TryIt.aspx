<%@ Page Title="TryIt" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TryIt.aspx.cs" Inherits="BankingApp.TryIt" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

    <h2>Try It</h2>
    <p>Test the following:</p>
    <ul>
        <li> DLL class library module for hashing encryption and decryption</li> 
        <li> Cookie for storing user profile and session state</li>
        <li> Get current stock quote for any company</li>
        <li> Three math operations</li> 
        <li> Save a product and its data</li>   
        <li>Create a new bank account with an initial balance.</li>
        <li>Deposit money into your account.</li>
        <li>Withdraw money from your account.</li>
        <li>Check your account balance.</li>
    </ul>
    <br />
    <br />

    <h4>Stock Quote Web Service</h4>
    <p>Remote Service Layer</p>
    <p>We will be using this service: </p>
    <asp:HyperLink ID="stockLink" runat="server" NavigateUrl="https://venus.sod.asu.edu/WSRepository/Services/Stockquote/Service.svc" Target="_blank">
    service url</asp:HyperLink>
    <p>Please provide the name of a company for a stock quote.</p>
    <asp:TextBox ID="stockTxtBox" runat="server" Placeholder="e.g. TSLA"></asp:TextBox><br />
    <asp:Button ID="getQuoteB" runat="server" Text="Get Stock Quote!" OnClick="stockButton_Click" /><br />
    <asp:Label ID="quoteResult" runat="server" ForeColor="Green"></asp:Label>
    <br />
    <br />

    <h4>DLL Hashing Function</h4>
    <p>Component Layer 1</p>
    <p>Please provide a simple string to test the hashing function using the DLL class library module.</p>
    <asp:TextBox ID="hashTxtBox" runat="server" Placeholder="Insert text for hashing"></asp:TextBox><br />
    <asp:Button ID="hashB" runat="server" Text="Hash it!" OnClick="hashButton_Click" /><br />
    <asp:Label ID="hashResult" runat="server" ForeColor="Green"></asp:Label>
    <br />
    <br />

    <h4>Cookie Session States</h4>
    <p>Component Layer 2</p>
    <p>Login to be greeted by name and see a secret message. Despite changing pages, your temporary user state is saved by the SetAuthCookie() function. If you wish to log out, go to home -> member/staff -> logout</p>
    <asp:Label ID="curr_user" runat="server"></asp:Label>
    <br />
    <br />

    <h4>BasicThree Operations</h4>
    <p>Component Layer 1</p>
    <p>Perform basic mathematical operations including addition, absolute value, and retrieving Pi.</p>

    <div class="form-group">
        <label for="txtX">X:</label>
        <asp:TextBox ID="txtX" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group">
        <label for="txtY">Y:</label>
        <asp:TextBox ID="txtY" runat="server" CssClass="form-control" />
    </div>

    <asp:Button ID="btnAdd" runat="server" Text="Add Two Numbers" CssClass="btn btn-primary mb-2" OnClick="btnAdd_Click" />
    <hr />

    <div class="form-group">
        <label for="txtAbs">Enter a Number (for Abs):</label>
        <asp:TextBox ID="txtAbs" runat="server" CssClass="form-control" />
    </div>

    <asp:Button ID="btnAbs" runat="server" Text="Get Absolute Value" CssClass="btn btn-warning mb-2" OnClick="btnAbs_Click" />
    <hr />

    <asp:Button ID="btnPi" runat="server" Text="Get Pi Value" CssClass="btn btn-success mb-2" OnClick="btnPi_Click" />
    <hr />

    <asp:Label ID="lblResultMath" runat="server" CssClass="alert alert-info d-block" />
    <br />
    <br />

    <h4>Product Save Operation</h4>
    <p>Component Layer 1</p>
    <p>Save product information including name, price, and description.</p>

    <div class="form-group">
        <label for="txtProductName">Product Name:</label>
        <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group">
        <label for="txtPrice">Price:</label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group">
        <label for="txtDescription">Description:</label>
        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" />
    </div>

    <asp:Button ID="btnSaveProduct" runat="server" Text="Save Product" CssClass="btn btn-primary" OnClick="btnSaveProduct_Click" />
    <asp:Label ID="lblProductResult" runat="server" CssClass="alert alert-success d-block mt-3" />
    
  
    <ul>

    </ul>

    <h3>Account Management</h3>

    <div class="form-group">
        <label for="ddlAccountName">Your Account:</label>
        <asp:DropDownList ID="ddlAccountName" runat="server" CssClass="form-control" />
    </div>

    <div class="form-group">
        <asp:Button ID="btnCreateAccount" runat="server" Text="Create New Account" OnClick="btnCreateAccount_Click" CssClass="btn btn-secondary" />
    </div>

    <div id="divCreateAccount" runat="server" class="form-group hidden">
        <label for="txtNewAccountName">New Account Name and Initial Balance:</label>
        <asp:TextBox ID="txtNewAccountName" runat="server" CssClass="form-control" />
        <asp:TextBox ID="TxtIntAmount" runat="server" CssClass="form-control" />
        <div class="form-group">
            <asp:Button ID="btnConfirmCreate" runat="server" Text="Confirm" OnClick="btnConfirmCreate_Click" CssClass="btn btn-primary" />
            <asp:Button ID="btnCancelCreate" runat="server" Text="Cancel" OnClick="btnCancelCreate_Click" CssClass="btn btn-danger" />
        </div>
    </div>

    <div class="form-group">
        <label for="txtAmount">Initial Balance/Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" />
    </div>


    <div class="form-group">
        <asp:Button ID="btnCheckBalance" runat="server" Text="Check Balance" OnClick="btnCheckBalance_Click" CssClass="btn btn-info" />
        <asp:Button ID="btnDeposit" runat="server" Text="Deposit" OnClick="btnDeposit_Click" CssClass="btn btn-success" />
        <asp:Button ID="btnWithdraw" runat="server" Text="Withdraw" OnClick="btnWithdraw_Click" CssClass="btn btn-warning" />
    </div>

    <div class="form-group">
        <asp:Label ID="lblResultAccount" runat="server" CssClass="alert alert-info d-block" />
    </div>
</asp:Content>
