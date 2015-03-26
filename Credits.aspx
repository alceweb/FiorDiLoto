<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Credits.aspx.cs" Inherits="Credits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="credits">
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <h2><%: Eval("Nome") %></h2>
                <span><%: Eval("Credits") %></span>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Credits] WHERE ([id] = @id) ORDER BY [id]">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
