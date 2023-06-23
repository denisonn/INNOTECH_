using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Lbl_Usuario.Text = "Bienvenido: " + (string)Session["USERNAME"];
        Lbl_EmpSuc.Text = (string)Session["EMPRESA_SELECTED"] + " - " + (string)Session["SUCURSAL_SELECTED"];

    }
    //BtnClientes_Click
    protected void BtnClientes_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del MakeLogin_Click");
        Console.WriteLine("en el evento del MakeLogin_Click");
        Response.Redirect("~/Page_Clientes.aspx");
    }

    protected void OrderBtn_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del MakeLogin_Click");
        Console.WriteLine("en el evento del MakeLogin_Click");
        Response.Redirect("~/Page_Clientes.aspx");
    }

    protected void InventBtn_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del MakeLogin_Click");
        Console.WriteLine("en el evento del MakeLogin_Click");
        Response.Redirect("~/Page_Clientes.aspx");
    }

    protected void RouteBtn_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del MakeLogin_Click");
        Console.WriteLine("en el evento del MakeLogin_Click");
        Response.Redirect("~/Page_Clientes.aspx");
    }

}