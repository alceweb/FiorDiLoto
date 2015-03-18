using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Riservata_ModificaCartellone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click1(object sender, EventArgs e)
    {
        SqlDataSource2.InsertParameters["IdCartellone"].DefaultValue = ListView1.SelectedValue.ToString();
    }
}