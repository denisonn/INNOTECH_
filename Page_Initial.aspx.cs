using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class Page_Initial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e) 
    {
        Debug.WriteLine("en el evento del inciar");
        Console.WriteLine("en el evento del inciar");
        Response.Redirect("~/Page_Login.aspx");
    }
}