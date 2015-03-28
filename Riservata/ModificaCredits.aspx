<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaCredits.aspx.cs" Inherits="Riservata_ModificaCredits" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="TitoloVetrina">Modifica credits</h2>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
        <EditItemTemplate>
            <span style="">
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' />
            <hr />
                <asp:FileUpload ID="FileUpload1" BackColor="#000000" ForeColor="White" runat="server" />
                <asp:Button ID="btnDownload1" OnClick="btnDownload1_Click" runat="server" Text="Scarica" />
                <asp:Label ID="UploadStatusLabel" runat="server"></asp:Label>
                <br />
                <img src='<%# "../Images/Credits_" + Eval("Id") + ".jpg" %>'  width="300" />
                <br /><br />
	               <CKEditor:CKEditorControl ID="CKEditorControl2" Width="100%" Text='<%# Bind("Credits") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
            <br /><br /></span>
        </EditItemTemplate>
        <ItemTemplate>
            <span style="">
            <h2>
            <asp:Label ID="NomeLabel" ForeColor="#ab71ff" runat="server" Text='<%# Eval("Nome") %>' />
            </h2>
            <hr />
                <img src='<%# "../Images/Credits_" + Eval("Id") + ".jpg" %>' class="float-left" width="300" />
            <asp:Label ID="CreditsLabel" runat="server" Text='<%# Eval("Credits") %>' ForeColor="#AB71FF" />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Credits] WHERE [id] = @id" InsertCommand="INSERT INTO [Credits] ([Nome], [Credits]) VALUES (@Nome, @Credits)" SelectCommand="SELECT * FROM [Credits] WHERE ([id] = @id)" UpdateCommand="UPDATE [Credits] SET [Nome] = @Nome, [Credits] = @Credits WHERE [id] = @id">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nome" Type="String" />
            <asp:Parameter Name="Credits" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

