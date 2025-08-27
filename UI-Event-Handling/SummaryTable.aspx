<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryTable.aspx.cs" Inherits="BankingApp.SummaryTable" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Application + Components Summary Table</title>
</head>
<body>
    <form id="form2" runat="server">
        <asp:Button ID="returnB" runat="server" CssClass="nav-button" Text="Return to Home Page" OnClick="returnClick" />
        <div>
            <h2>Application + Components Summary Table</h2>
            <asp:GridView ID="SummaryTableGrid" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="ProviderName" HeaderText="Provider Name" />
                    <asp:BoundField DataField="ComponentType" HeaderText="Page and Component Type" />
                    <asp:BoundField DataField="ComponentDesc" HeaderText="Component Description" />
                    <asp:BoundField DataField="ResourcesUsed" HeaderText="Actual Resources + Methods Used" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Button ID="tryItButton" runat="server" CssClass="nav-button" Text="Try Services Mentioned Above" OnClick="tryItClick" />
    </form>
</body>
</html>