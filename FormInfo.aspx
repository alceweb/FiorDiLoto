<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FormInfo.aspx.cs" Inherits="FormInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>
                <h2 class="TitoloVetrina">Richiesta informazioni</h2>
                <table style="width: 100%">
                    <caption style="color: #FFFFFF; text-align: left; background-color: #4A4A4A; padding-right: 20px; padding-left: 20px;">
                        I campi con * sono obbligatori<asp:TextBox ID="NowTextBox" ForeColor="#AB72FF" BackColor="#4a4a4a" BorderStyle="None" runat="server" Font-Bold="True"></asp:TextBox><br />
                        <asp:ValidationSummary ID="ValSum" runat="server"
                            HeaderText="Devi inserire questi campi:"></asp:ValidationSummary>
                    </caption>
                    <tr>
                        <td>
                            <asp:Label ID="SpettacoloLabel" CssClass="label" runat="server" Text="Titolo Spettacolo"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="SpettacoloDropDownList" Width="310px" Height="30px" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Titolo" DataValueField="Titolo" Font-Bold="True" BackColor="#AB72FF"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Titolo] FROM [Spettacoli] ORDER BY [Titolo]"></asp:SqlDataSource>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="CognomeLabel" CssClass="lblbox" runat="server" Text="Cognome"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="CognomeTextBox" CssClass="txtbox" runat="server"></asp:TextBox>
                            &nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidatorCognome" runat="server"
                                ControlToValidate="CognomeTextBox"
                                ErrorMessage="Cognome!"
                                Display="None">
                            </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="NomeLabel" CssClass="lblbox" runat="server" Text="Nome"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="NomeTextBox" CssClass="txtbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="CellLabel" CssClass="lblbox" runat="server" Text="Cellulare"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="CellTextBox" CssClass="txtbox" runat="server"></asp:TextBox>
                            &nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidatorCell" runat="server"
                                ControlToValidate="CellTextBox"
                                ErrorMessage="Cellulare!"
                                Display="None">
                            </asp:RequiredFieldValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="MailLabel" CssClass="lblbox" runat="server" Text="Mail"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="MailTextBox" CssClass="txtbox" runat="server"></asp:TextBox>
                            &nbsp;*<asp:RequiredFieldValidator ID="RequiredFieldValidatormail" runat="server"
                                ControlToValidate="MailTextBox"
                                ErrorMessage="Mail!"
                                Display="None">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="Formato mail non valido"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="MailTextBox"></asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="MessaggioLabel" CssClass="lalbox" runat="server" Text="Messaggio"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="MessaggioTextBox" CssClass="txtbox" runat="server" TextMode="MultiLine" Height="236px"></asp:TextBox>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <hr />
                <asp:Button ID="ButtonInvia" runat="server" OnClick="ButtonInvia_Click" Text="Invia" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="HeaderLabel" runat="server"></asp:Label><br />
                <br />

            </td>
        </tr>
    </table>
</asp:Content>

