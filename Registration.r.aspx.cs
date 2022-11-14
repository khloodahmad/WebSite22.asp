using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration_r : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie hc2 = Request.Cookies["user"];
        if (hc2 != null)
        {
            Label1.Text = hc2["name"];
            Label2.Text = hc2["phoon"];
            Label3.Text = hc2["adress"];
        }
    }
}