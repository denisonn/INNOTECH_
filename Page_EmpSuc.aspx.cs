using System;
using System.Collections.Generic;
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
            ddlEmpresa.Items.Add(new ListItem("seleccione la empresa", "defaultValue"));
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
        Session["EMPRESA_SELECTED"] = ddlEmpresa.SelectedValue;
        WsClientes.WsClientes wsc = new WsClientes.WsClientes();
        SucursalIn Sucur = new SucursalIn();
        Sucur.Co_usuario = ((UsuarioOut)Session["U_OUT"]).SUsuario_Codigo.Trim();
        Sucur.Co_empresa = ddlEmpresa.SelectedValue;
        try
        {
            SucursalOut[] arr_sucur = wsc.ConsultarSucursales(Sucur);
            dllSucursal.Enabled = true;
            dllSucursal.Items.Add(new ListItem("seleccione la sucursal", "defaultValue"));
            foreach (var p in arr_sucur)
            {
                dllSucursal.Items.Add(new ListItem(p.Sucur_des.Trim(), p.Co_sucur.Trim()));
            }
        }
        catch (Exception ex)
        { }
    }

    protected void dllSucursal_SelectedIndexChanged(object sender, EventArgs e)
    {
        SetConfigureEmpSuc.Enabled = true;
        Session["SUCURSAL_SELECTED"] = dllSucursal.SelectedValue;
    }

    protected void SetConfigureEmpSuc_Click(object sender, EventArgs e)
    {
        Debug.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");
        Console.WriteLine("en el evento del ddlCategory_SelectedIndexChanged");
    }


}