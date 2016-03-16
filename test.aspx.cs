using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["fiordiloto"] != null)
        {
            PnlCookie.Visible = false;
        }
    }
    protected void CookieButton_Click(object sender, EventArgs e)
    {
        //HttpCookie myCookie = new HttpCookie("fiordiloto");
        //myCookie["Accettato"] = "Cookies accettati";
        //myCookie["Data"] = DateTime.Now.ToString();
        //myCookie.Expires = DateTime.Now.AddDays(-1d);
        //Response.Cookies.Add(myCookie);
        //PnlCookie.Visible = false;
    }
}