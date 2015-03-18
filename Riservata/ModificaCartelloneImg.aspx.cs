using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Security.AccessControl;
public partial class Riservata_ModificaCartelloneImg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String ids = ListView1.SelectedValue.ToString();
        string cartella = "~/ImgCart/";
        string[] immagini = Directory.GetFiles(Server.MapPath(cartella), ids + ".jpg");
        lista.DataSource = immagini;
        lista.DataBind();
        string[] galleria = Directory.GetFiles(Server.MapPath(cartella), ids + "_*.jpg");
        lista1.DataSource = galleria;
        lista1.DataBind();
        string[] vetrina = Directory.GetFiles(Server.MapPath(cartella), ids + "_.jpg");
        lista2.DataSource = vetrina;
        lista2.DataBind();
    }
    protected void UpLoadButton_Click(object sender, EventArgs e)
    {
        //recupero l'ID dell'immobile che identifica l'inizio del file immagine
        String Testa = ListView1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/ImgCart/");
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa + "." + Estensione;
            FileUpload1.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            UploadStatusLabel1.Text = "Immagine principale caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            UploadStatusLabel2.Text = "Non hai scelto l'immagine per lo spettacolo.";
        }
    }
    protected void UploadButton2_Click(object sender, EventArgs e)
    {
        //recupero l'ID dell'immobile che identifica l'inizio del file immagine
        String Testa = ListView1.SelectedValue.ToString();
        //Imposto il nome file derivato dalla data e ora
        string NomeFile = DateTime.Now.ToString("ddMMyyyy-HHmmss");
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/ImgCart/");
        if (FileUpload2.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload2.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa + "_" + NomeFile + "." + Estensione;
            FileUpload2.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            UploadStatusLabel3.Text = "Immagine galleria caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            UploadStatusLabel4.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
    protected void UploadButton3_Click(object sender, EventArgs e)
    {
        //recupero l'ID dell'immobile che identifica l'inizio del file immagine
        String Testa = ListView1.SelectedValue.ToString();
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/ImgCart/");
        if (FileUpload3.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload3.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + Testa + "_." + Estensione;
            FileUpload3.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            UploadStatusLabel5.Text = "Immagine vetrina caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            UploadStatusLabel6.Text = "Non hai scelto l'immagine per la vetrina.";
        }
    }
}