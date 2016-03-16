<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Test1</h2>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Scrivi" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Leggi" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Cancella" OnClick="Button3_Click" />
        <hr />
        <asp:Label ID="Label1" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
