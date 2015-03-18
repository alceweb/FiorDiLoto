<%@ Page Title="Cartellone" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cartellone1.aspx.cs" Inherits="Cartellone1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="site-title" style="font-size:1.3em; text-align:left">Cartellone</p>
    <asp:ListView ID="ListViewCart" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceCart">
        <ItemTemplate>
            <span style="">
                <h2 >
            <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                </h2>
                <div style="text-align:center">
                    <asp:Image ID="Image1" Style="max-height:350px; margin-top:30px" runat="server" ImageUrl='<%# "~/ImgCart/" + Eval("Id") + "_.jpg"%>' />
                </div>
               <h3>
            <asp:Label ID="SottotitoloLabel" runat="server" Text='<%# Eval("Sottotitolo") %>' />
                </h3>
                <p>
            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                </p>
            </span>
        </ItemTemplate>
        <EmptyDataTemplate>
            <span></span>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceCart" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Cartelloni] WHERE ([Id] = @IdE)">
        <SelectParameters>
            <asp:QueryStringParameter Name="IdE" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListViewSpett" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceSpett" >
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <table >
                                    <tr style="border-bottom-style: solid; border-width:thin; border-color: #C8A4FF">
                                        <td style="width:70px">
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
                                            <asp:Label ID="DescrLabel" runat="server" Text='<%# Eval("SpetDescrBre") %>' /><br />
                                            <span class="label"><asp:Label ID="DataLabel" runat="server" Text='<%# Eval("SpetData") %>' /></span>
                                        </td>
                                    </tr>
                                </table>
                           </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
                            <tr>
                                <td>Non ci sono spettacoli per questo cartellone!</td>
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
            <asp:QueryStringParameter Name="IdE" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

