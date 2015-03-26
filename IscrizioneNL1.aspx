<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IscrizioneNL1.aspx.cs" Inherits="IscrizioneNL1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
</head>
<body style="background-color:#fff">
    <form id="form1" method="post" action="http://f1d3i.s87.it/frontend/subscribe.aspx" runat="server">
        <div class="divnl">

<h2 style="text-align:center" >Iscrizione newsletter</h2><hr />
    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label><br />
    * <asp:TextBox ID="campo1" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo nome"></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Cognome"></asp:Label><br />
    * <asp:TextBox ID="campo2" CssClass="txtnl" required="required" runat="server" placeholder="Il tuo cognome" ></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
    * <asp:TextBox ID="email" CssClass="txtnl" required="required" runat="server" placeholder="La tua mail" AutoCompleteType="Email" ></asp:TextBox><br /><br />
            <label>
                <input required="" type="checkbox" />Accetto la
            <button onclick="window.open('http://fiordiloto.azurewebsites.net/Privacy.html','_blank','scrollbars=1,resizable=1,toolbar=0,width=600,height=600','top=100,left=600')" style="background: #fff; font-weight: bold; font-size: 18px; text-align: center; vertical-align: middle; cursor: pointer; display: inline-block; padding: 5px 5px; line-height: 16px; font-family: sans-serif; box-shadow: none; border-radius: 6px; border: 1px solid #ccc; box-shadow: none">Privacy Policy</button>
            </label>
            <span style="visibility:hidden"><asp:RadioButton ID="group" value="41" Checked="true" runat="server" /></span>
    <asp:Button ID="Button1" CssClass="buttonnl" PostBackUrl="http://f1d3i.s87.it/frontend/subscribe.aspx" runat="server" Text="Iscriviti" BackColor="#5CB85C"/>

<input type="hidden" name="list" value="4"/>
        </div>

    </form>
</body>
</html>
