using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsClientes;


public partial class Page_Clientes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Lbl_Usuario.Text = "Bienvenido: " + (string)Session["USERNAME"];
        Lbl_EmpSuc.Text = (string)Session["EMPRESA_SELECTED"] + " - " + (string)Session["SUCURSAL_SELECTED"];

        WsClientes.WsClientes wsc = new WsClientes.WsClientes();
        wsc.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
        ClienteIn cliente = new ClienteIn();
        cliente.SCo_Vendedor = (string)Session["SUCURSAL_SELECTED"];// (string)Session["USERNAME"]; ???????????????
        cliente.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];
        try
        {
            ClienteOut[] arr_ctes = wsc.ConsultaClientes(cliente);
            
            rptrClientes.DataSource = arr_ctes;
            rptrClientes.DataBind();

        }
        catch (Exception ex)
        { }

    }
}