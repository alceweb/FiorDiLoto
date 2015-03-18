<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="colorbox-master/example3/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <script type="text/javascript">
         $(document).ready(function () {
             //Examples of how to assign the Colorbox event to elements
             $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
             $(".group2").colorbox({ maxHeight: '100%', rel: 'group2', transition: 'fade' });
         });
		</script>
    <h2>Le camere</h2>
        <p>L'Hotel si compone di 54 camere doppie con bagno privato di cui alcune predisposte per i disabili.<br />
           Ogni camera, realizzata con eleganza, è fornita di climatizzatore a controllo individuale, tv color con ricezione satellitare, telefono, frigo bar, così da permettere il massimo del comfort ai nostri ospiti.
        </p>
    <div>

    </div>
    <table >
        <tr >
            <td ><a class="group1" href="ImgSpett/1.jpg" title="Piscina"> <img src="ImgSpett/1.jpg" /></a></td>
            <td><h3>Singola standard   <span><em>- Euro 57</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />t/v color con ricezione satellitare,<br /> telefono,<br /> frigo bar
                </p>
            </td>
        </tr>
        <tr>
            <td><a class="group1" href="ImgSpett/11.jpg" title="Parco"> <img src="ImgSpett/11.jpg" /></a></td>
            <td><h3>Singola superior   <span><em>- Euro 62</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />t/v color con ricezione satellitare,<br /> telefono,<br /> frigo bar
                </p>
                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

