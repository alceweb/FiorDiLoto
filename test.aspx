<%@ Page Title="Test" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

    </style>
    <link href="colorbox-master/example3/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
        <asp:Panel ID="PnlCookie" runat="server">
            <div class="divCook">
               <span>
                Questo sito utilizza cookie di profilazione, propri o di altri.<br />
                Se accedi a un qualunque elemento del sito acconsenti all'uso del cookie.<br />
                 Se vuoi saperne di più o negare il consenso a tutti o alcuni cookie clicca <a href="CookiesInfo.aspx" runat="server" id="Cookies">qui</a>.
               </span><br /><br />
                <div style="text-align:center">
                <asp:LinkButton ID="CookieButton" runat="server" OnClick="CookieButton_Click" Text="Acconsenti"></asp:LinkButton>

                </div>
            </div>

        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Pagina di test cookieTest</h2>
    <p>
        Ciao Federica<br />
        Questa è la pagina di test per il plug-in della legge sulla gestione dei cookies
    </p>
    <p>Ho cercato di farla il meno invasiva possibile... :-)<br />
        Questo rettangolo che è appena passato dal video resterà attivo ogni volta che si entra nella pagina fino a che l'utente non cliccherà su pulsante <strong><em>Acconsenti</em></strong><br />
        Naturalmente per permetterti di visualizzare più volte l'animazione in questa pagina test ilplug-in non viene mai disattivato.<br />
        Dagli un'occhiata e fammi sapere se va bene. Sii pure spietata nel giudizio grafico.
    </p>
    <p>
        Ciao!!!!
    </p>
</asp:Content>

