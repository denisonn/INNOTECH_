﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsClientes;
using WsLogin;

public partial class Page_EmpSuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //SetConfigureEmpSuc.Visible = false;
            SetConfigureEmpSuc.Enabled = false;
            dllSucursal.Enabled = false;
            UsuarioOut UO = ((UsuarioOut)Session["U_OUT"]);
            ddlEmpresa.Items.Add(new ListItem("seleccione la empresa", "-1"));
            foreach (var p in UO.Slista_Empresas)
            {
                ddlEmpresa.Items.Add(new ListItem(p.DescripcionEmpresa.Trim(), p.Co_empresa.Trim()));
            }
        }
    }
    //ddlCategory_SelectedIndexChanged
    protected void ddlEmpresa_SelectedIndexChanged(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");
        Console.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");
        
        if ( "-1".Equals(ddlEmpresa.SelectedValue))
        {
            dllSucursal.Items.Clear();
            lblErrorE.Text = "Debe seleccionar una empresa valida";
        }
        else
        {
            lblErrorE.Text = "";
            Session["EMPRESA_SELECTED"] = ddlEmpresa.SelectedValue;
            WsClientes.WsClientes wsc = new WsClientes.WsClientes();
            wsc.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
            SucursalIn Sucur = new SucursalIn();
            Sucur.Co_usuario = ((UsuarioOut)Session["U_OUT"]).SUsuario_Codigo.Trim();
            Sucur.Co_empresa = ddlEmpresa.SelectedValue;
            try
            {
                SucursalOut[] arr_sucur = wsc.ConsultarSucursales(Sucur);
                dllSucursal.Enabled = true;
                dllSucursal.Items.Clear();
                dllSucursal.Items.Add(new ListItem("seleccione la sucursal", "-1"));
                foreach (var p in arr_sucur)
                {
                    dllSucursal.Items.Add(new ListItem(p.Sucur_des.Trim(), p.Co_sucur.Trim()));
                }
            }
            catch (Exception ex)
            { }
        }
    }

    protected void dllSucursal_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ("-1".Equals(dllSucursal.SelectedValue))
            lblErrorS.Text = "Debe seleccionar una sucursal valida";
        else
        {
            lblErrorS.Text = "";
            SetConfigureEmpSuc.Enabled = true;
            Session["SUCURSAL_SELECTED"] = dllSucursal.SelectedValue;
        }
    }

    protected void SetConfigureEmpSuc_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");
        Console.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");

        Response.Redirect("~/Page_Dashboard.aspx");
    }


}