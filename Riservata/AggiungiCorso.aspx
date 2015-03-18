<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="AggiungiCorso.aspx.cs" Inherits="Riservata_AggiungiCorso" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <div style="width: 90%; margin-right: auto; margin-left: auto">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <InsertItemTemplate>
                <table>
                <thead><h2 class="TitoloVetrina">Aggiungi corso</h2></thead>
                    <tr>
                        <td>Titolo:

                        </td>
                        <td>
                            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />

                        </td>
                        <td rowspan="9">Descrizione<br />
                            <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>

                        </td>
                    </tr>
                    <tr>
                        <td>Sottotitolo:

                        </td>
                        <td>
                            <asp:TextBox ID="SottotitoloTextBox" runat="server" Text='<%# Bind("Sottotitolo") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Acuradi:

                        </td>
                        <td>
                            <asp:TextBox ID="AcuradiTextBox" runat="server" Text='<%# Bind("Acuradi") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Dove:

                        </td>
                        <td>
                            <asp:TextBox ID="DoveTextBox" runat="server" Text='<%# Bind("Dove") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Perchi:

                        </td>
                        <td>
                            <asp:TextBox ID="PerchiTextBox" runat="server" Text='<%# Bind("Perchi") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Durata:

                        </td>
                        <td>
                            <asp:TextBox ID="DurataTextBox" runat="server" Text='<%# Bind("Durata") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Costi:

                        </td>
                        <td>
                            <asp:TextBox ID="CostiTextBox" runat="server" Text='<%# Bind("Costi") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Info:

                        </td>
                        <td>
                            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>' />

                        </td>
                    </tr>
                    <tr>
                        <td>Pubblica:

                        </td>
                        <td>
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />

                        </td>
                    </tr>
                    <tr style="border-width: thin; border-color: #C0C0C0; border-top-style: solid;">
                        <td></td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />

                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Corsi] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Corsi] ([Titolo], [Sottotitolo], [Acuradi], [Descrizione], [Dove], [Perchi], [Durata], [Costi], [Info], [Pubblica]) VALUES (@Titolo, @Sottotitolo, @Acuradi, @Descrizione, @Dove, @Perchi, @Durata, @Costi, @Info, @Pubblica)" SelectCommand="SELECT * FROM [Corsi]" UpdateCommand="UPDATE [Corsi] SET [Titolo] = @Titolo, [Sottotitolo] = @Sottotitolo, [Acuradi] = @Acuradi, [Descrizione] = @Descrizione, [Dove] = @Dove, [Perchi] = @Perchi, [Durata] = @Durata, [Costi] = @Costi, [Info] = @Info, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Sottotitolo" Type="String" />
            <asp:Parameter Name="Acuradi" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Dove" Type="String" />
            <asp:Parameter Name="Perchi" Type="String" />
            <asp:Parameter Name="Durata" Type="String" />
            <asp:Parameter Name="Costi" Type="String" />
            <asp:Parameter Name="Info" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="Sottotitolo" Type="String" />
            <asp:Parameter Name="Acuradi" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Dove" Type="String" />
            <asp:Parameter Name="Perchi" Type="String" />
            <asp:Parameter Name="Durata" Type="String" />
            <asp:Parameter Name="Costi" Type="String" />
            <asp:Parameter Name="Info" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

