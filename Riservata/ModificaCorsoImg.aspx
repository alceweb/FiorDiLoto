<%@ Page Title="" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaCorsoImg.aspx.cs" Inherits="Riservata_ModificaCorsoImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td  rowspan="3" style="vertical-align:top">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" GroupItemCount="1" SelectedIndex="0">
                    <ItemTemplate>
                        <td runat="server" style="">Titolo:
                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            <br />
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server">Modifica...</asp:LinkButton>
                        </td>
                    </ItemTemplate>
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
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="font-style: italic; color: #A369FD; background-color: #A8D5AD;">
                            <td colspan="2" runat="server" style="">
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT [Titolo], [Id] FROM [Corsi] ORDER BY [Titolo]"></asp:SqlDataSource>

            </td>
            <td style="vertical-align: top">
                        <div>
                            Immagine principale
                        </div>
                <asp:Repeater ID="lista" runat="server" EnableTheming="False">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                <span>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="UpLoadButton" OnClick="UpLoadButton_Click" runat="server" Text="UpLoad" />
                    <asp:Label ID="UploadStatusLabel1" runat="server" ></asp:Label>
                    <asp:Label ID="UploadStatusLabel2" runat="server" ></asp:Label>
                </span>
            </td>
            </tr>
            <tr>
                <td>
                    <span>Immagine vetrina<br />
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                        <asp:Button ID="UpLoadButton3" OnClick="UploadButton3_Click"  runat="server" Text="UpLoad" />
                        <asp:Label ID="UploadStatusLabel5" runat="server" ></asp:Label>
                        <asp:Label ID="UploadStatusLabel6" runat="server" ></asp:Label>
                    </span>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                            <div>
                                Immagini galleria
                            </div>
                    <span>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <asp:Button ID="UploadButton2" OnClick="UploadButton2_Click" runat="server" Text="UpLoad" />
                        <asp:Label ID="UploadStatusLabel3" runat="server" ></asp:Label>
                        <asp:Label ID="UploadStatusLabel4" runat="server" ></asp:Label>
                    </span>
                    <br />
                    <asp:Repeater ID="lista1" runat="server" EnableTheming="False">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                        </ItemTemplate>
                        <FooterTemplate></ul></FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
    </table>
</asp:Content>

