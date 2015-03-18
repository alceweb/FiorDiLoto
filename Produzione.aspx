<%@ Page Title="Spettacoli" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Produzione.aspx.cs" Inherits="Produzione" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<!---SLIDER script--->
	<link rel="stylesheet" type="text/css" href="Slider/engine1/style.css" />
	<script type="text/javascript" src="Slider/engine1/jquery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td class="Td1">
                <div class="TitoloVetrina">
                    Spettacoli
                </div>
                <asp:ListView ID="ListView1" DataKeyNames="Id" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="blockfade">
                            <table>
                                <tr>
                                    <td style="width: 50px"  >
                                        <asp:ImageButton CssClass="fadeimg" ID="ImageButton1" CommandName="Select" ImageUrl='<%# "~/ImgSpett/" + Eval("Id") + ".jpg"%>' runat="server" />

                                    </td>
                                    <td class="verde">
                                        <asp:Label CssClass="verde" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        Nessuno spettacolo in cartellone.
                    </EmptyDataTemplate>
                    <ItemSeparatorTemplate>
                    </ItemSeparatorTemplate>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Vendita] = @Vendita)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Vendita" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
            <td class="Td2" >
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="1">
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
                            <tr>
                                <td>
                            <img style="width: 100%" src="Images/<%: Page.Title %>.jpg" />
                                        <br />
                                    <h3 >
                                    Un’urgenza diventa “idea”<br />
                                    Un’idea diventa “embrione di bellezza”<br />
                                    Il tempo di attesa che trascorre <br />
                                    tra quel nuovo inizio e il palcoscenico <br />
                                    è un vortice di domande, osservazioni, pensieri<br />
                                    di prove, di faccio e rifaccio<br />
                                    di luce e ombre<br />
                                        di stallo e picchi di vivacità artistica<br />
                                         è l’“otium” dei latini<br />
                                        contatti, ricerca, attesa<br />
                                         poesia, studio, musica, arte<br /> 
                                    è curiosità che alimenta curiosità<br />
                                    è inizio che alimenta nuovi inizi…<br />
                                    </h3>
                                        <h2 class="verde" style="text-align:right">
                                    …questo è il nostro essere

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
                    <ItemTemplate>
                        <td id="Td2" runat="server" style="">
                            <asp:Image ID="Image1" runat="server" src='<%# "ImgSpett/" + Eval("Id") + "_.jpg"%>'/>
                            <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
                            <span class="float-right">
                                <a href="Galleria.aspx?Id=<%# Eval("Id") %>">Galleria<br /><asp:Image ID="Image2" CssClass="fadeimg" runat="server" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' AlternateText="Galleria" /></a></span>
                            <h3>
                                <em>
                                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /></em>
                            </h3>
                            <a class="verde" href="FormInfo.aspx">Info</a>
                            <em>

                            <p >

                            <asp:Label ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' /><br /><br />
                                <span class="label" ><asp:Label ID="DataLabel" CssClass="label" runat="server" Text='<%# Eval("Data") %>' /></span>
                            </p>
                            </em>
                            <p>
                                <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            </p>
                            <br />
                        </td>
                    </ItemTemplate>
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

