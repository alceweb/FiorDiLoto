<%@ Page Title="Scheda" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Spettacolo.aspx.cs" Inherits="Spettacolo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
                            <asp:ListView ID="ListViewEmpty" runat="server" SelectedIndex="0" DataKeyNames="Id" DataSourceID="SqlDataSourceEmpty">
                                <EmptyDataTemplate>
                                    <span></span>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <p class="site-title" style="text-align:left; font-size:1.3em"><%# Eval("Titolo") %></p>
                                    <hr />
                                    <span style="">
                                        <div style="text-align: center">
                                            <a href='Galleria.aspx?Id=<%# Eval("Id") %>'>
                                            <asp:Image ID="Image1" Style="max-height: 350px; margin-top: 30px" runat="server" ImageUrl='<%# "~/ImgSpett/" + Eval("Id") + "_.jpg"%>' />

                                            </a>
                                        </div><hr />
                                        <div class="GallIco" >
                                            <a href="Galleria.aspx?Id=<%# Eval("Id") %>">
                                                <asp:Label ID="lblFadeImg" runat="server" Text="Galleria"></asp:Label><br /><asp:Image ID="Image2" CssClass="fadeimg" runat="server" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' AlternateText="Galleria" /></a>

                                        </div>
                                        <h3 >
                                            <asp:Label ID="DescrBreveLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' />
                                        </h3><br />
                             <a class="verde" href="FormInfo.aspx">Info</a>
                                        <p >
                                            <asp:Label ID="RegiaLabel" runat="server" Text='<%# Eval("Regia") %>' />
                                        </p>
                                        <p class="label">
                                            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
                                        </p>
                                        <p>
                                            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                                        </p>
                                    </span>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div id="itemPlaceholderContainer" runat="server" style="">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="">
                                    </div>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="SqlDataSourceEmpty" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
                                SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Id] = @IdE)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="IdE" QueryStringField="Id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</asp:Content>

