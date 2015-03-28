using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Riservata_ModificaCredits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDownload1_Click(object sender, EventArgs e)
    {
        FileUpload FileUpload1 = ListView1.EditItem.FindControl("FileUpload1") as FileUpload;
        Label UploadStatusLabel = ListView1.EditItem.FindControl("UploadStatusLabel") as Label;
        //recupero l'ID dell'immobile che identifica la cartella e l'inizio del file immagine
        string Testa = Request.QueryString["ID"];
        //Imposto la cartella di destinazione
        string saveDir = Server.MapPath("~/Images/");
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string Estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nuovo path completo del file
            string savePath = saveDir + "Credits_" + Testa + "." + Estensione;
            FileUpload1.SaveAs(savePath);
            // Avvisa dell'avvenuto upload.
            UploadStatusLabel.ForeColor = Color.Green;
            UploadStatusLabel.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            UploadStatusLabel.ForeColor = Color.Red;
            UploadStatusLabel.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
}