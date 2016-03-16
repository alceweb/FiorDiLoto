<%@ Page Title="Inserimento newsletter" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="NewsLetterAdd.aspx.cs" Inherits="Riservata_NewsLetterAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                       <CKEditor:CKEditorControl ID="nlTextbox" UiColor="Gray" runat="server" EnterMode="BR" ></CKEditor:CKEditorControl>
                    <asp:Button ID="LinkButton1" CssClass="buttonnl" BackColor="Red" ForeColor="White" OnClick="LinkButton1_Click" Text="Annulla" runat="server"></asp:Button>
                    <asp:Button ID="btnInvia" CssClass="buttonnl" BackColor="Green" ForeColor="White" OnClick="btnInvia_Click" runat="server" Text="Invia"  OnClientClick='return confirm("Vuoi inviare la newsletter?")'/>
</asp:Content>

