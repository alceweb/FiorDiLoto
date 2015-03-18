using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Galleria : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "~/ImgSpett/" ;
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), Request.QueryString["ID"] + "_*-*.jpg");
        lista.DataSource = immagini;
        lista.DataBind();
    }
}