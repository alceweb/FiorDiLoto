<%@ Page Title="Galleria" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Galleria.aspx.cs" Inherits="Galleria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="colorbox-master/example3/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>Nessuno spettacolo selezionato</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <p class="site-title" style="text-align:left; font-size:1.3em"><%# Eval("Titolo") %></p>
            <a href ="Spettacolo.aspx?id=<%# Eval("Id") %>">Scheda spettacolo</a>
            <asp:Label ID="DataLabel" runat="server" Text='<%# Eval("Data") %>' />
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" ></span>
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
            <asp:CheckBox ID="CorsoCheckBox" runat="server" Checked='<%# Eval("Corso") %>' Enabled="false" Text="Corso" />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView><hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Spettacoli] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="lista" runat="server">
        <ItemTemplate>
     <script type="text/javascript">
         $(document).ready(function () {
             //Examples of how to assign the Colorbox event to elements
             $(".group1").colorbox({ maxHeight: '100%', rel: "group1", transition: 'fade' });
         });
		</script>
                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>"><img class="fadeimg" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" style="width: 20%; margin: 5px" /></a>
        </ItemTemplate>
        <EmptyDataTemplate>
            <br /><br /><span class="verde">Questo spettacolo non ha ancora una galleria fotografica</span><br /><br />
        </EmptyDataTemplate>
    </asp:ListView>
</asp:Content>

