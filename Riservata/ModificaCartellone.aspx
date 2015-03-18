<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaCartellone.aspx.cs" Inherits="Riservata_ModificaCartellone" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="TitoloVetrina">Gestione cartelloni</h2>
    <table>
        <tr>
            <td>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr style="border-bottom-style: solid; border-width: thin; border-color: #FFFFFF">
                <td>
                    <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select" Text='<%# Eval("Titolo") %>' />
                </td>
                <td>
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr style="border: thin solid #FFFFFF">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    Titolo: <asp:TextBox Width="100%" ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' /><br />
                    Sottotitolo: <asp:TextBox Width="100%" ID="SottotitoloTextBox" runat="server" Text='<%# Bind("Sottotitolo") %>' /><br />
	         Descrizione: <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl><br />
            Pubblica: <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Enabled="True" />&nbsp;&nbsp;&nbsp;&nbsp;
            In evidenza: <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Bind("Evidenza") %>' Enabled="True" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server"></th>
                                <th runat="server"></th>
                                <th runat="server"></th>
                                <th runat="server"></th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="border-bottom-style: solid; border-width: thin; border-color: #FFFFFF; background-color: #FFFFFF; color: #000000;">
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Titolo") %>' ForeColor="Black" ></asp:Label>
                </td>
                <td>
                    <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica"  ForeColor="Black"  />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [Cartelloni] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [Cartelloni] ([Titolo], [Sottotitolo], [Descrizione], [Pubblica], [Evidenza]) VALUES (@Titolo, @Sottotitolo, @Descrizione, @Pubblica, @Evidenza)" 
        SelectCommand="SELECT * FROM [Cartelloni] ORDER BY [Titolo]" 
        UpdateCommand="UPDATE [Cartelloni] SET [Titolo] = @Titolo, [Sottotitolo] = @Sottotitolo, [Descrizione] = @Descrizione, [Pubblica] = @Pubblica, [Evidenza] = @Evidenza WHERE [Id] = @Id">
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
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Evidenza" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
            <td>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Togli" ForeColor="#CC0000" />
                            </td>
                            <td>
                                <asp:Label ID="IdSpettacoloLabel" runat="server" Text='<%# Eval("SpetTitolo") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="border: thin solid #FFFFFF">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" OnClick="InsertButton_Click1" CommandName="Insert" Text="Aggiungi" ForeColor="#006666" />
                            </td>
                            <td>
                                <asp:DropDownList Selectedvalue='<%# Bind("IdSpettacolo") %>' ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Titolo" DataValueField="Id" Height="30px" Width="100%"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Id], [Titolo] FROM [Spettacoli] ORDER BY [Titolo]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                    DeleteCommand="DELETE FROM [DettCart] WHERE [Id] = @Id" 
                    InsertCommand="INSERT INTO [DettCart] ([IdCartellone], [IdSpettacolo]) VALUES (@IdCartellone, @IdSpettacolo)" 
                    SelectCommand="SELECT *, 
                    Cartelloni.Titolo as CartTitolo,
                    Spettacoli.Titolo as SpetTitolo 
                    FROM [DettCart] 
                        Inner Join [Cartelloni] on [DettCart].[IdCartellone] =  [Cartelloni].[Id] 
                        Inner Join [Spettacoli] on [DettCart].[IdSpettacolo] = [Spettacoli].[Id]
                    WHERE ([IdCartellone] = @IdCartellone)" 
                    UpdateCommand="UPDATE [DettCart] SET [IdCartellone] = @IdCartellone, [IdSpettacolo] = @IdSpettacolo WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IdCartellone" Type="Int32" />
                        <asp:Parameter Name="IdSpettacolo" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="IdCartellone" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="IdCartellone" Type="Int32" />
                        <asp:Parameter Name="IdSpettacolo" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>

    </table>
</asp:Content>

