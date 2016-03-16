<%@ Page Title="Gestione spettacoli" Language="C#" MasterPageFile="~/Riservata/Riservata.master" AutoEventWireup="true" CodeFile="ModificaSpettacoloImg.aspx.cs" Inherits="Riservata_ModificaSpettacoloImg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="3" style="vertical-align: top">
                <asp:ListView ID="ListView1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" GroupItemCount="1" SelectedIndex="0">
                    <ItemTemplate>
                        <td>
                            <asp:LinkButton ID="LinkButton1" Text='<%# Eval("Titolo") %>' CommandName="Select" runat="server"></asp:LinkButton>
                        </td>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td id="Td2" runat="server" />
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
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
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
                        <tr style="font-style: italic; color: #A369FD; background-color: #A8D5AD;">
                            <td id="Td5" colspan="2" runat="server" style="">
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
                    SelectCommand="SELECT * FROM [Spettacoli]" DeleteCommand="DELETE FROM [Spettacoli] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Spettacoli] ([Titolo], [DescrizioneBreve], [Descrizione], [Regia], [Vendita], [Cartellone], [Evidenza], [Data], [ProgDid], [Partecipazioni]) VALUES (@Titolo, @DescrizioneBreve, @Descrizione, @Regia, @Vendita, @Cartellone, @Evidenza, @Data, @ProgDid, @Partecipazioni)" UpdateCommand="UPDATE [Spettacoli] SET [Titolo] = @Titolo, [DescrizioneBreve] = @DescrizioneBreve, [Descrizione] = @Descrizione, [Regia] = @Regia, [Vendita] = @Vendita, [Cartellone] = @Cartellone, [Evidenza] = @Evidenza, [Data] = @Data, [ProgDid] = @ProgDid, [Partecipazioni] = @Partecipazioni WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="DescrizioneBreve" Type="String" />
                        <asp:Parameter Name="Descrizione" Type="String" />
                        <asp:Parameter Name="Regia" Type="String" />
                        <asp:Parameter Name="Vendita" Type="Boolean" />
                        <asp:Parameter Name="Cartellone" Type="Boolean" />
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
                        <asp:Parameter Name="Cartellone" Type="Boolean" />
                        <asp:Parameter Name="Evidenza" Type="Boolean" />
                        <asp:Parameter Name="Data" Type="String" />
                        <asp:Parameter Name="ProgDid" Type="Boolean" />
                        <asp:Parameter Name="Partecipazioni" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>

                </asp:SqlDataSource>
            </td>
            <td style="vertical-align: top">
                <div>
                    <h3>Immagine principale</h3>
                    <p>Questa immagine appare nell'elenco degli spettacolo (dimensione consigliata 150+150)</p>
                </div>
                <div>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="UpLoadButton" OnClick="UpLoadButton_Click" runat="server" Text="UpLoad" />
                    <asp:Label ID="UploadStatusLabel1" runat="server"></asp:Label>
                    <asp:Label ID="UploadStatusLabel2" runat="server"></asp:Label>
                </div>
                <asp:Repeater ID="lista" runat="server" EnableTheming="False">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
                <h3>Immagine vetrina</h3>
                    <p>Questa immagine appare nell'intestazione dello spettacolo (dimensione consigliata 900+450)</p>
                    <asp:FileUpload ID="FileUpload3" runat="server" />
                    <asp:Button ID="UpLoadButton3" OnClick="UploadButton3_Click" runat="server" Text="UpLoad" />
                    <asp:Label ID="UploadStatusLabel5" runat="server"></asp:Label>
                    <asp:Label ID="UploadStatusLabel6" runat="server"></asp:Label>
                <div>
                <asp:Repeater ID="lista2" runat="server" EnableTheming="False">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <hr />
                <h3>Immagini galleria</h3>
                    <p>Queste immagini serviranno per un eventuale galleria fotografica (dimensione consigliata 1024+512)</p>
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                    <asp:Button ID="UploadButton2" OnClick="UploadButton2_Click" runat="server" Text="UpLoad" />
                    <asp:Label ID="UploadStatusLabel3" runat="server"></asp:Label>
                    <asp:Label ID="UploadStatusLabel4" runat="server"></asp:Label>
                <div>
                <asp:Repeater ID="lista1" runat="server" EnableTheming="False">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                    </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
                </asp:Repeater>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

