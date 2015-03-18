<%@ Page Title="Cartellone" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cartellone.aspx.cs" Inherits="Cartellone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <!---SLIDER script--->
	<link rel="stylesheet" type="text/css" href="Slider/engine1/style.css" />
	<script type="text/javascript" src="Slider/engine1/jquery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content Runat="Server" ID="BodyContent" ContentPlaceHolderID="MainContent" >
    <table>
        <tr>
            <td class="Td1">
                <div class="TitoloVetrina">
                    Cartellone
                </div>
                <asp:ListView ID="ListViewCart" runat="server" DataSourceID="SqlDataSourceCart" DataKeyNames="Id">
                    <ItemTemplate>
                        <li class="blockfade">
                            <table>
                                <tr>
                                    <td style="width: 50px">
                                        <asp:ImageButton CssClass="fadeimg" ID="ImageButton1" CommandName="Select" ImageUrl='<%# "~/ImgCart/" + Eval("Id") + ".jpg"%>' runat="server" PostBackUrl="~/Cartellone.aspx" />

                                    </td>
                                    <td class="verde">
                                        <asp:Label CssClass="fadetxt" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <span></span>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li>
                            <table>
                                <tr>
                                    <td>
                                        <img class="selectedfade" src='<%# "ImgCart/" + Eval("Id") + ".jpg"%>' />

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
                <asp:SqlDataSource ID="SqlDataSourceCart" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [Cartelloni] WHERE ([Evidenza] = @Evidenza)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Evidenza" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="Td2">
                <asp:ListView ID="ListViewCartDett" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceCartDett">
                    <ItemTemplate>
                        <h2 style="text-align: center">
                            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                        </h2>
                        <asp:Image ID="Image1" Width="100%" runat="server" src='<%# "ImgCart/" + Eval("Id") + "_.jpg"%>' />
                        <h3>
                            <em>
                                <asp:Label ID="SottotitoloLabel" runat="server" Text='<%# Eval("Sottotitolo") %>' /></em>
                        </h3>
                        <h3>
                            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                        </h3>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <span>
                            <img style="width: 100%" src="Images/<%: Page.Title %>.jpg" />
                            <br />
                            <h3>
                                Guarda, ascolta<br />
                                stai davanti a me con un cuore docile <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stai, semplicemente<br />
                                Guarda, ascolta<br />
                                la scatola magica del teatro<br />
                                ti porta altrove<br />
                                in un posto lontano e<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vicino al tuo cuore<br />
                                Guarda, ascolta...
                                <h2 class="verde" style="text-align: right">…questo è il nostro fare

                                </h2>
                            </h3>
                        </span>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Titolo:
                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            <br />
                            Sottotitolo:
                        <asp:Label ID="SottotitoloLabel" runat="server" Text='<%# Eval("Sottotitolo") %>' />
                            <br />
                            Descrizione:
                        <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            <br />
                            <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                            <br />
                            <asp:CheckBox ID="EvidenzaCheckBox" runat="server" Checked='<%# Eval("Evidenza") %>' Enabled="false" Text="Evidenza" />
                            <br />
                            <br />
                        </span>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSourceCartDett" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cartelloni] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListViewCart" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListViewSpett" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceSpett">
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <table>
                                    <tr style="border-bottom-style: solid; border-width: thin; border-color: #C8A4FF">
                                        <td style="width: 70px">
                                            <h3>
                                                <a href='<%# "Spettacolo.aspx?Id=" + Eval("SpetId")  %>'>
                                                    <asp:Image CssClass="fadeimg" ID="ImageSpett" ImageUrl='<%# "~/ImgSpett/" + Eval("SpetId") + ".jpg"%>' runat="server" />
                                                </a>
                                            </h3>
                                        </td>
                                        <td>
                                            <h3>
                                                <a href='<%# "Spettacolo.aspx?Id=" + Eval("SpetId")  %>'>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("SpetTitolo") %>' /></a>
                                            </h3>
                                            <span ><asp:Label ID="DataLabel" runat="server" Text='<%# Eval("SpetData") %>' /></span>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table id="Table2" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSourceSpett" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT *,
                    Cartelloni.Titolo as CartTitolo,
                    Spettacoli.Titolo as SpetTitolo,
                    Spettacoli.DescrizioneBreve as SpetDescrBre,
                    Spettacoli.Id as SpetId,
                    Spettacoli.Data as SpetData
                    FROM [DettCart] 
                        Inner Join [Cartelloni] on [DettCart].[IdCartellone] =  [Cartelloni].[Id] 
                        Inner Join [Spettacoli] on [DettCart].[IdSpettacolo] = [Spettacoli].[Id]
                    WHERE ([IdCartellone] = @IdE)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListViewCart" Name="IdE" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

