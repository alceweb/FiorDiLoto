<%@ Page Title="Gestione cartelloni" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="Aggiungicartellone.aspx.cs" Inherits="Riservata_Aggiungicartellone" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="TitoloVetrina">Aggiungi cartellone</h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <InsertItemTemplate>
            <table>
                <tr>
                    <td>
            Titolo:
                    </td>
                    <td>
            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
            Sottotitolo:
                    </td>
                    <td>
            <asp:TextBox ID="SottotitoloTextBox" runat="server" Text='<%# Bind("Sottotitolo") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
            Descrizione:
                    </td>
                    <td>
	         <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        Pubblica: <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                        &nbsp;&nbsp;&nbsp;&nbsp;In evidenza:  <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Bind("Evidenza") %>' />
                    </td>
                    </tr>   
                <tr>
                    <td>

                    </td>
                    <td><hr />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Titolo:
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Bind("Titolo") %>' />
            <br />
            Sottotitolo:
            <asp:Label ID="SottotitoloLabel" runat="server" Text='<%# Bind("Sottotitolo") %>' />
            <br />
            Descrizione:
            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Bind("Descrizione") %>' />
            <br />
            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Enabled="False" />
            <br />
            <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Bind("Evidenza") %>' Enabled="False" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Modifica" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Elimina" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuovo" />
        </ItemTemplate>
    </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                DeleteCommand="DELETE FROM [Cartelloni] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [Cartelloni] ([Titolo], [Sottotitolo], [Descrizione], [Pubblica], [Evidenza]) VALUES (@Titolo, @Sottotitolo, @Descrizione, @Pubblica, @Evidenza)" 
                SelectCommand="SELECT * FROM [Cartelloni] ORDER BY [Titolo]" 
                UpdateCommand="UPDATE [Cartelloni] SET [Titolo] = @Titolo, [Sottotitolo] = @Sottotitolo, [Descrizione] = @Descrizione, , [Pubblica] = @Pubblica, [Evidenza] = @Evidenza WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Sottotitolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Evidenza" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Sottotitolo" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Evidenza" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

