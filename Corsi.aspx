<%@ Page Title="Corsi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Corsi.aspx.cs" Inherits="Corsi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td class="Td1">
                <div class="TitoloVetrina">
                    Corsi
                </div>
                <asp:ListView ID="ListView1" DataKeyNames="Id" runat="server" DataSourceID="SqlDataSource1">
                    <EmptyDataTemplate>
                        Nessuno corso programmato.
                    </EmptyDataTemplate>
                    <ItemSeparatorTemplate>
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li class="blockfade">
                            <table>
                                <tr>
                                    <td>
                                        <asp:ImageButton CssClass="fadeimg" ID="ImageButton1" CommandName="Select" ImageUrl='<%# "~/ImgSpett/" + Eval("Id") + ".jpg"%>' runat="server" />

                                    </td>
                                    <td class="verde">
                                        <asp:Label CssClass="verde" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />

                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li >
                            <table>
                                <tr>
                                    <td>
                                        <img class="selectedfade" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' />

                                    </td>
                                    <td>
                                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />

                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                    SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Corso] = @Corso)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Corso" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
            <td class="Td2" >
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="1">
                    <ItemTemplate>
                        <td id="Td2" runat="server" style="">
                            <asp:Image ID="Image1" runat="server" src='<%# "ImgSpett/" + Eval("Id") + "_.jpg"%>'/>
                            <h2>
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
                            <span class="float-right">
                                <a href="Galleria.aspx?Id=<%# Eval("Id") %>">Galleria<br /><asp:Image ID="Image2" CssClass="fadeimg" runat="server" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' AlternateText="Galleria" /></a></span>
                            <h3>
                                <em>
                                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /></em>
                            </h3>
                            <a class="verde" href="FormInfo.aspx">Info</a>
                            <em>

                            <p >

                            <asp:Label ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' />
                            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                            </p>
                            </em>
                            <p>
                                <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            </p>
                            <br />
                        </td>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
                            <tr>
                                <td>
                            <img style="width: 100%" src="Images/<%: Page.Title %>.jpg" />
                                        <br />
                                   <h3 >
                                        Un seme gettato<br />
                                        Un pungolo continuo<br />
                                        Un ricamo sulla vita<br />
                                        che piano piano<br />
                                        diventa un affondo<br />
                                        nella vita stessa<br />
                                        Un corpo che diventa docile<br />
                                        che graffia la pietra<br />
                                        modella la forma e la parola<br />
                                        elimina fronzoli<br />
                                        fino al mistero della vita stessa...<br />
                                   </h3>
                                   <h2 class="verde" style="text-align:right">
                                        ...questo è il nostro inizio

                                    </h2>
                                </td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td id="Td1" runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td3" runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" >
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr2" runat="server">
                                <td id="Td4" runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td id="Td5" runat="server" style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Titolo:
                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            <br />
                            DescrizioneBreve:
                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                            <br />
                            Descrizione:
                    <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            <br />
                            Regia:
                    <asp:Label ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' />
                            <br />
                            <asp:CheckBox ID="VenditaCheckBox" runat="server" Checked='<%# Eval("Vendita") %>' Enabled="false" Text="Vendita" />
                            <br />
                            <asp:CheckBox ID="CartelloneCheckBox" runat="server" Checked='<%# Eval("Cartellone") %>' Enabled="false" Text="Cartellone" />
                            <br />
                            <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Eval("Evidenza") %>' Enabled="false" Text="Evidenza" />
                            <br />
                            Data:
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                            <br />
                            <asp:CheckBox ID="ProgDidCheckBox" runat="server" Checked='<%# Eval("ProgDid") %>' Enabled="false" Text="ProgDid" />
                            <br />
                            Partecipazioni:
                    <asp:Label ID="PartecipazioniLabel" runat="server" Text='<%# Eval("Partecipazioni") %>' />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

