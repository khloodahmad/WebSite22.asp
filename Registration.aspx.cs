using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class Registration : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cmd;
    string kal;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void addpatint()
    {
        con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\USERWD\Documents\patients.mdb");
        kal = "insert in to patients values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        cmd = new OleDbCommand(kal,con);
        con.Open();
        con.Close();
        Label1.Text = "تم اضافة البيانات بنجاح";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        addpatint();
        HttpCookie Cookie = new HttpCookie("user");
        Cookie["name"] = TextBox1.Text;
        Cookie["phoon"] = TextBox4.Text;
        Cookie["adress"] = TextBox5.Text;
        Cookie.Expires = DateTime.Now.AddDays(30);
        Response.Cookies.Add(Cookie);
        Response.Redirect("~/Registration.r.aspx");
      
    }
}