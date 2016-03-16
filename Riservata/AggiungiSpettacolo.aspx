<%@ Page Title="Gestione spettacoli" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="AggiungiSpettacolo.aspx.cs" Inherits="Riservata_AggiungiSpettacolo" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <InsertItemTemplate>
            <table >
                <thead><h2 class="TitoloVetrina">Aggiungi spettacolo</h2></thead>
                <tr >
                    <td >Titolo:
                    </td>
                    <td>
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                    </td>
                    <td rowspan="10" >Descrizione:<br />
	               <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                    </td>
                    </tr>
                <tr>
                    <td>DescrizioneBreve:
                    </td>
                    <td>
                        <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' />
                    </td>
                    </tr>
                <tr>
                    <td>Regia:
                    </td>
                    <td>
                        <asp:TextBox ID="RegiaTextBox" runat="server" Text='<%# Bind("Regia") %>' />
                    </td>
                    </tr>
                <tr>
                <tr>
                    <td>Data:
                    </td>
                    <td>
                        <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' />
                    </td>
                    </tr>
                <tr>
                    <td>Partecipazioni:
                    </td>
                    <td>
                        <asp:TextBox ID="PartecipazioniTextBox" runat="server" Text='<%# Bind("Partecipazioni") %>' />
                    </td>
                     </tr>
                    <tr>
                        <td>Vendita:
                    </td>
                    <td>
                        <asp:CheckBox ID="VenditaCheckBox" runat="server" Checked='<%# Bind("Vendita") %>' />
                    </td>
                    </tr>
                <tr>
                   <td>Evidenza:
                    </td>
                    <td>
                        <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Bind("Evidenza") %>' />
                    </td>
                    </tr>
                <tr>
                    <td>Corso:
                    </td>
                    <td>
                        <asp:CheckBox ID="CorsoCheckBox" runat="server" Checked='<%# Bind("Corso") %>' />
                    </td>
                     </tr>
                <tr>
                    <td>ProgDid:
                    </td>
                    <td>
                        <asp:CheckBox ID="ProgDidCheckBox" runat="server" Checked='<%# Bind("ProgDid") %>' />
                    </td>
                    </tr>
                <tr style="border-width: thin; border-color: #C0C0C0; border-top-style: solid;">
                   <td>
                    </td>
                    <td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserisci" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Annulla" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Spettacoli] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Spettacoli] ([Titolo], [DescrizioneBreve], [Descrizione], [Regia], [Vendita], [Corso], [Evidenza], [Data], [ProgDid], [Partecipazioni]) VALUES (@Titolo, @DescrizioneBreve, @Descrizione, @Regia, @Vendita, @Corso, @Evidenza, @Data, @ProgDid, @Partecipazioni)" SelectCommand="SELECT * FROM [Spettacoli]" UpdateCommand="UPDATE [Spettacoli] SET [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Regia] = @Regia, [Vendita] = @Vendita, [Corso] = @Corso, [Evidenza] = @Evidenza, [Data] = @Data, [ProgDid] = @ProgDid, [Partecipazioni] = @Partecipazioni WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Regia" Type="String" />
            <asp:Parameter Name="Vendita" Type="Boolean" />
            <asp:Parameter Name="Corso" Type="Boolean" />
            <asp:Parameter Name="Evidenza" Type="Boolean" />
            <asp:Parameter Name="Data" Type="String" />
            <asp:Parameter Name="ProgDid" Type="Boolean" />
            <asp:Parameter Name="Partecipazioni" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Titolo" Type="String" />
            <asp:Parameter Name="DescrizioneBreve" Type="String" />
            <asp:Parameter Name="Descrizione" Type="String" />
            <asp:Parameter Name="Regia" Type="String" />
            <asp:Parameter Name="Vendita" Type="Boolean" />
            <asp:Parameter Name="Corso" Type="Boolean" />
            <asp:Parameter Name="Evidenza" Type="Boolean" />
            <asp:Parameter Name="Data" Type="String" />
            <asp:Parameter Name="ProgDid" Type="Boolean" />
            <asp:Parameter Name="Partecipazioni" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
</asp:Content>

