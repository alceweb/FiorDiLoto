<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaCorso.aspx.cs" Inherits="Riservata_ModificaCorso" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                        <table id="Table1" runat="server" style="">
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
                    SelectCommand="SELECT * FROM [Corsi]" 
                    UpdateCommand="UPDATE [Spettacoli] SET [Titolo] = @Titolo, [Sottotitolo] = @Sottotitolo, [Acuradi] = @Acuradi, [Descrizione] = @Descrizione, [Dove] = @Dove, [Perchi] = @Perchi, [Durata] = @Durata, [Costi] = @Costi, [Inrfo] = @Info, [Pubblica] = @Pubblicca WHERE [Id] = @Id">
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

            </td>
            <td class="Td2">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id" GroupItemCount="1">
                    <ItemTemplate>
                        <td runat="server" style="">
                            <h2><asp:Label CssClass="label" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
                            <h3><asp:Label CssClass="label" ID="SottotitoloLabel" runat="server" Text='<%# Eval("Sottotitolo") %>' /></h3>
                            <br />A cura di:
                            <asp:Label CssClass="label" ID="AcuradiLabel" runat="server" Text='<%# Eval("Acuradi") %>' />
                            <br />Descrizione:
                            <asp:Label CssClass="label" ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            <br />Dove:
                            <asp:Label CssClass="label" ID="DoveLabel" runat="server" Text='<%# Eval("Dove") %>' />
                            <br />Per chi:
                            <asp:Label CssClass="label" ID="PerchiLabel" runat="server" Text='<%# Eval("Perchi") %>' />
                            <br />Durata:
                            <asp:Label CssClass="label" ID="DurataLabel" runat="server" Text='<%# Eval("Durata") %>' />
                            <br />Costi:
                            <asp:Label CssClass="label" ID="CostiLabel" runat="server" Text='<%# Eval("Costi") %>' />
                            <br />Info:
                            <asp:Label CssClass="label" ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
                            <br />
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                            <hr />
                            <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />

                        </td>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" >Titolo:
                            <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' Width="100%"  />
                            <br />Sottotitolo:
                            <asp:TextBox ID="SottotitoloTextBox" runat="server" Text='<%# Bind("Sottotitolo") %>' Width="100%"  />
                            <br />Acuradi:
                            <asp:TextBox ID="AcuradiTextBox" runat="server" Text='<%# Bind("Acuradi") %>'  Width="100%" />
                            <br />Descrizione:
                            <asp:TextBox ID="DescrizioneTextBox" runat="server" Text='<%# Bind("Descrizione") %>'  Width="100%" />
                            <br />Dove:
                            <asp:TextBox ID="DoveTextBox" runat="server" Text='<%# Bind("Dove") %>'  Width="100%" />
                            <br />Perchi:
                            <asp:TextBox ID="PerchiTextBox" runat="server" Text='<%# Bind("Perchi") %>' Width="100%"  />
                            <br />Durata:
                            <asp:TextBox ID="DurataTextBox" runat="server" Text='<%# Bind("Durata") %>'  Width="100%" />
                            <br />Costi:
                            <asp:TextBox ID="CostiTextBox" runat="server" Text='<%# Bind("Costi") %>' Width="100%"  />
                            <br />Info:
                            <asp:TextBox ID="InfoTextBox" runat="server" Text='<%# Bind("Info") %>'  Width="100%" />
                            <br />
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
                            <hr />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                            <br /></td>
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
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="">Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />Titolo:
                            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            <br />Sottotitolo:
                            <asp:Label ID="SottotitoloLabel" runat="server" Text='<%# Eval("Sottotitolo") %>' />
                            <br />Acuradi:
                            <asp:Label ID="AcuradiLabel" runat="server" Text='<%# Eval("Acuradi") %>' />
                            <br />Descrizione:
                            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            <br />Dove:
                            <asp:Label ID="DoveLabel" runat="server" Text='<%# Eval("Dove") %>' />
                            <br />Perchi:
                            <asp:Label ID="PerchiLabel" runat="server" Text='<%# Eval("Perchi") %>' />
                            <br />Durata:
                            <asp:Label ID="DurataLabel" runat="server" Text='<%# Eval("Durata") %>' />
                            <br />Costi:
                            <asp:Label ID="CostiLabel" runat="server" Text='<%# Eval("Costi") %>' />
                            <br />Info:
                            <asp:Label ID="InfoLabel" runat="server" Text='<%# Eval("Info") %>' />
                            <br />
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                    InsertCommand="INSERT INTO [Corsi] ([Titolo], [Sottotitolo], [Acuradi], [Descrizione], [Dove], [Perchi], [Durata], [Costi], [Info], [Pubblica]) VALUES (@Titolo, @Sottotitolo, @Acuradi, @Descrizione, @Dove, @Perchi, @Durata, @Costi, @Info, @Pubblica)" 
                    SelectCommand="SELECT * FROM [Corsi] WHERE ([Id] = @Id)" 
                    UpdateCommand="UPDATE [Corsi] SET [Titolo] = @Titolo, [Sottotitolo] = @Sottotitolo, [Acuradi] = @Acuradi, [Descrizione] = @Descrizione, [Dove] = @Dove, [Perchi] = @Perchi, [Durata] = @Durata, [Costi] = @Costi, [Info] = @Info, [Pubblica] = @Pubblica WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
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
            </td>
        </tr>
    </table>
</asp:Content>

