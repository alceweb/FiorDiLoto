using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class FormInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonInvia_Click(object sender, EventArgs e) 
    {
        //INVIO LA MAIL
        ////Preparo i campi della mail
        String from = "webservice@comeunfiordiloto.it";
        String to = "comeunfiordiloto@gmail.com";
        //Istanzio la classe che rappresenta il messaggio 
        MailMessage mMailMessage = new MailMessage();
        //Aggiungo il Mittente 
        mMailMessage.From = new MailAddress(from);
        //Aggiungo il destinatario 
        mMailMessage.To.Add(new MailAddress(to));
        mMailMessage.To.Add("cesare@cr-consult.eu");
        //L'oggetto 
        mMailMessage.Subject = "Richiesta informazioni dal sito web Come un Fior di Loto";
        //Il corpo 
        mMailMessage.Body = "Richiesta di Informazioni dal sito www.comeunfiordiloto.it, inviata il <strong>" + DateTime.Now.ToLongDateString() + "</strong>" +
            "<br/><br/><strong>Nome: </strong>" + NomeTextBox.Text +
            "<br/><strong>Cognome: </strong>" + CognomeTextBox.Text +
            "<br/><strong>Mail:</strong> " + MailTextBox.Text +
            "<br/><strong>Cell:</strong> " + CellTextBox.Text +
            "<br/><strong>Spettacolo:</strong> " + SpettacoloDropDownList.Text +
            "<br/><br/><strong>Messaggio</strong>" +
            "<hr/> " + MessaggioTextBox.Text;
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Response.Redirect("FormInfoOk.aspx");
    }
}