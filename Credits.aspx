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
    <div class="divnl" >
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h2><%# Eval("Nome") %></h2>
                <img src='<%# "Images/Credits_" + Eval("Id") + ".jpg" %>' />
                <span><%# Eval("Credits") %></span>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Credits] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
