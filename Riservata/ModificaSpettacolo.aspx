<%@ Page Title="Gestione spettacoli" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaSpettacolo.aspx.cs" Inherits="Riservata_ModificaSpettacolo" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="TitoloVetrina">Modifica spettacolo</h2>
    <table>
        <tr>
            <td class="Td1">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="blockfade">
                                <asp:LinkButton ID="LinkButton1" CommandName="Select" Text='<%# Eval("Titolo") %>'  runat="server"></asp:LinkButton>
                        </li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li class="selected">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                                    </td>
                                </tr>

                            </table>
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [Spettacoli]" DeleteCommand="DELETE FROM [Spettacoli] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Spettacoli] ([Titolo], [DescrizioneBreve], [Descrizione], [Regia], [Vendita], [Corso], [Evidenza], [Data], [ProgDid], [Partecipazioni]) VALUES (@Titolo, @DescrizioneBreve, @Descrizione, @Regia, @Vendita, @Corso, @Evidenza, @Data, @ProgDid, @Partecipazioni)" UpdateCommand="UPDATE [Spettacoli] SET [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Regia] = @Regia, [Vendita] = @Vendita, [Corso] = @Corso, [Evidenza] = @Evidenza, [Data] = @Data, [ProgDid] = @ProgDid, [Partecipazioni] = @Partecipazioni WHERE [Id] = @Id">
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

            </td>
            <td class="Td2">
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="1" SelectedIndex="0">
                    <EditItemTemplate>
                        <td id="Td1" runat="server" >Titolo:
                            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' Width="100%" />
                            <br />
                            DescrizioneBreve:
                            <asp:TextBox ID="DescrizioneBreveTextBox" runat="server" Text='<%# Bind("DescrizioneBreve") %>' Width="100%" />
                            <br />
                            Regia:
	                        <CKEditor:CKEditorControl ID="CKEditorControl2" Width="100%" Text='<%# Bind("Regia") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            <br />
                            Data:
                            <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' Width="100%" />
                            <br />
                            Partecipazioni:
                            <asp:TextBox ID="PartecipazioniTextBox" runat="server" Text='<%# Bind("Partecipazioni") %>' Width="100%" />
                            <br />
                             <br />
                            Descrizione:
	                        <CKEditor:CKEditorControl ID="CKEditor1" Width="100%" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            <table style="text-align: center">
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="VenditaCheckBox" runat="server" Checked='<%# Bind("Vendita") %>' Enabled="true" Text="Vendita" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CorsoCheckBox" runat="server" Checked='<%# Bind("Corso") %>' Enabled="true" Text="Corso" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Bind("Evidenza") %>' Enabled="true" Text="Evidenza" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ProgDidCheckBox" runat="server" Checked='<%# Bind("ProgDid") %>' Enabled="true" Text="ProgDid" />

                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                            <asp:Label ID="Label1" runat="server" Text="Anno Archivio"></asp:Label>:<asp:TextBox ID="TextBox1" placeholder="Anno Numerico" Text='<%# Bind("AnnoArchivio") %>' runat="server"></asp:TextBox>
                            <hr />
                            <asp:LinkButton ID="UpDateButton" runat="server" CommandName="Update" Text="Aggiorna"/>
                            <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla"/>
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td runat="server" style="">Id:
                            <asp:Label CssClass="label" ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Titolo:
                            <asp:Label CssClass="label"  ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            <br />
                            DescrizioneBreve:
                            <asp:Label CssClass="label"  ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                            <br />
                            Descrizione:
                            <asp:Label CssClass="label"  ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            <br />
                            Regia:
                            <asp:Label CssClass="label"  ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' />
                            <br />
                            Data:
                            <asp:Label CssClass="label"  ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                            <br />
                            Partecipazioni:
                            <asp:Label CssClass="label"  ID="PartecipazioniLabel" runat="server" Text='<%# Eval("Partecipazioni") %>' />
                            <br />
                            <table style="text-align: center">
                                <tr>
                                    <td>
                                        <asp:CheckBox ID="VenditaCheckBox" runat="server" Checked='<%# Eval("Vendita") %>' Enabled="false" Text="Vendita" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CorsoCheckBox" runat="server" Checked='<%# Eval("Corso") %>' Enabled="false" Text="Corso" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Eval("Evidenza") %>' Enabled="false" Text="Evidenza" />

                                    </td>
                                    <td>
                                        <asp:CheckBox ID="ProgDidCheckBox" runat="server" Checked='<%# Eval("ProgDid") %>' Enabled="false" Text="ProgDid" />

                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                            Anno archivio:
                            <asp:Label ID="lblAnnoArchivio" CssClass="label" runat="server" Text='<%# Eval("AnnoArchivio") %>'></asp:Label>
                            <hr />
                            <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
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
                    SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Id] = @Id)" 
                    DeleteCommand="DELETE FROM [Spettacoli] WHERE [Id] = @Id" 
                    InsertCommand="INSERT INTO [Spettacoli] ([Titolo], [DescrizioneBreve], [Descrizione], [Regia], [Vendita], [Corso], [Evidenza], [Data], [ProgDid], [Partecipazioni]) VALUES (@Titolo, @DescrizioneBreve, @Descrizione, @Regia, @Vendita, @Corso, @Evidenza, @Data, @ProgDid, @Partecipazioni)" 
                    UpdateCommand="UPDATE [Spettacoli] SET [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Regia] = @Regia, [Vendita] = @Vendita, [Corso] = @Corso, [Evidenza] = @Evidenza, [Data] = @Data, [ProgDid] = @ProgDid, [Partecipazioni] = @Partecipazioni, [AnnoArchivio] = @AnnoArchivio WHERE [Id] = @Id">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
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
                        <asp:Parameter Name="AnnoArchivio" Type="Int16" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

