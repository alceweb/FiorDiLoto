<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td class="Td1">
                <div class="TitoloVetrina" style="text-align:left">
                    Cartelloni

                </div>
                <div>
                    <asp:ListView ID="ListViewCart" runat="server" DataSourceID="SqlDataSourceCart" DataKeyNames="Id">
                        <ItemTemplate>
                            <li class="blockfade">
                                <table>
                                    <tr>
                                        <td style="width: 50px">
                                            <asp:ImageButton CssClass="fadeimg" ID="ImageButton1" CommandName="Select" ImageUrl='<%# "~/ImgCart/" + Eval("Id") + ".jpg"%>' runat="server" PostBackUrl='<%# "~/Cartellone1.aspx?id=" + Eval("Id")%>' />

                                        </td>
                                        <td class="verde">
                                            <asp:Label CssClass="verde" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
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
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceCart" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                        SelectCommand="SELECT * FROM [Cartelloni] WHERE ([Evidenza] = @Evidenza)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="True" Name="Evidenza" Type="Boolean" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="TitoloVetrina" style="text-align:left">
                    Spettacoli - Corsi
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Evidenza] = @Evidenza)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Evidenza" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>


            </td>
            <td class="Td2">
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" GroupItemCount="1">
                    <ItemTemplate>
                        <td runat="server" style="">
                            <asp:Image ID="Image1" runat="server" src='<%# "ImgSpett/" + Eval("Id") + "_.jpg"%>' />
                            <h2>
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
                                         <span class="float-right">
                                            <a href="Galleria.aspx?Id=<%# Eval("Id") %>">Galleria<br /><asp:Image ID="Image3" CssClass="fadeimg" runat="server" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' AlternateText="Galleria" /></a></span>
                           <h3>
                                <em>
                                    <asp:Label ID="DescrizioneBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /></em>
                            </h3>
                             <a class="verde" href="FormInfo.aspx">Info</a>
                          <em>

                                <p>
                                    <asp:Label ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' /><br /><br />
                                    <span class="label"><asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' /></span>
                                </p>
                            </em>
                            <p>
                                <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                            </p>
                            <br />
                        </td>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>
                                    <img style="width: 100%" src="Images/Striscia1.jpg" />
                                    <br />
                                    <h3>
                                        <em>"La bellezza salverà il mondo"</em><br />
                                        <br />
                                        Tutto incomincia con il cuore e la ragione che riconoscono<br />
                                        qualcosa di bello e lo seguono
                                     <br />
                                        È la bellezza, la meraviglia, lo stupore<br />
                                        il riconoscimento meravigliato<br />
                                        che mette in moto il pensiero<br />
                                        la visione geniale, la comunicazione<br />
                                        la verifica e la possibilità di realizzazione<br />
                                        è il progresso - qualcosa che non c&#39;era e adesso c&#39;è
                                    <br />
                                        La ricchezza di un paese -anche economica- è il sapere che si comunica<br />
                                        Ho scelto cosa fare nella vita: dare la possibilità che il sapere si comunichi...<br />
                                        <br />
                                        <strong>Il 16 febbraio 2012 nasce &quot;Come un fior di loto&quot;</strong>
                                        <h2 class="verde" style="text-align: right">…questo è il nostro cuore

                                        </h2>
                                    </h3>
                                </td>
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
                                    <table id="groupPlaceholderContainer" runat="server" border="0">
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>