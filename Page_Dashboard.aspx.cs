﻿using System;
using System.Collections.Generic;
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
}