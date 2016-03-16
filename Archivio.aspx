<%@ Page Title="Archivio" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Archivio.aspx.cs" Inherits="Archivio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
.divTest {
    color:#000;
    width: 100px;
    height: 100px;
    left:230px;
    top:-20px;
    position: relative;
    -webkit-animation-name: example; /* Chrome, Safari, Opera */
    -webkit-animation-duration: 4s; /* Chrome, Safari, Opera */
    animation-name: example;
    animation-duration: 1s;
    animation-direction:reverse;
    font-size:2.5em;
    Text-shadow: 0px 0px 5px #fff;
    font-weight: bold;
}

/* Chrome, Safari, Opera */
@-webkit-keyframes example {
    0%   {left:230px; top:-20px;}
    100% {font-size:0em;left:0px; top:0px;}
}

/* Standard syntax */
@keyframes example {
    0%   {left:230px; top:-20px;}
    100% {font-size:0em;left:0px; top:0px;}
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="tblArchivio">
        <tr>
            <td class="ElArchivio">
                <div class="TitoloVetrina">
                    Archivio
                </div><br />
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="AnnoArchivio" SelectedIndex="-1" DataSourceID="SqlDataSource2">
                    <EmptyDataTemplate>
                        <span>Non è stato restituito alcun dato.</span>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CssClass="ElArchivio" Text='<%# Eval("AnnoArchivio") %>' CommandName="Select" runat="server"></asp:LinkButton>
                        <br />
                        <br />
                        </span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <span style="">
                            <asp:Label ID="AnnoArchivioLabel" CssClass="ElArchivioSel" runat="server" Text='<%# Eval("AnnoArchivio") %>' />
                            <br />
                            <br />
                        </span>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [AnnoArchivio] FROM [Spettacoli] WHERE [AnnoArchivio] > 0 ORDER BY [AnnoArchivio]"></asp:SqlDataSource>
            </td>
            <td class="Archivio">
                <asp:ListView ID="ListViewAnno" runat="server" DataSourceID="SqlDataSource3" SelectedIndex="0">
                    <ItemTemplate>
                    <div style="min-height:42px">
                            <asp:Label ID="AnnoArchivioLabel" CssClass="divTest" runat="server" Text='<%# Eval("AnnoArchivio") %>' />

                    </div>
                    </ItemTemplate>

                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT AnnoArchivio FROM [Spettacoli] WHERE ([AnnoArchivio] = @AnnoArchivio)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView2" Name="AnnoArchivio" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" DataKeyNames="Id" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate><br />
                        <li class="blockfade">
                            <table>
                                <tr>
                                    <td >
                                        <asp:ImageButton CssClass="fadeimg" ID="ImageButton1" CommandName="Select" ImageUrl='<%# "~/ImgSpett/" + Eval("Id") + ".jpg"%>' runat="server" />
                                    </td>
                                    <td >
                                        <asp:Label CssClass="verde" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                                    </td>
                                </tr>
                            </table>
                        </li>
                    </ItemTemplate>
                    <EmptyDataTemplate>
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
                    </EmptyDataTemplate>
                    <ItemSeparatorTemplate>
                    </ItemSeparatorTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="list-style-type: none; text-align:center">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li >
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <img class="selectedfade" src='<%# "ImgSpett/" + Eval("Id") + ".jpg"%>' />

                                    </td>
                                    <td>
                                        <asp:Label ID="TitoloLabel" CssClass="verde" runat="server" Text='<%# Eval("Titolo") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("DescrizioneBreve") %>' /><br /><br />
                                        <a href="<%# "Spettacolo.aspx?id=" + Eval("id") %>">Scheda</a>
                                    </td>
                                    <td>

                                    </td>
                                </tr>
                            </table>
                            <hr />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([AnnoArchivio] = @AnnoArchivio) ORDER BY [Titolo]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ListView2" Name="AnnoArchivio" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

