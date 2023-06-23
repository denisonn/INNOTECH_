using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsArticulos;

public partial class Page_Articulos_Listado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Lbl_Usuario.Text = "Bienvenido: " + (string)Session["USERNAME"];
        Lbl_EmpSuc.Text = (string)Session["EMPRESA_SELECTED"] + " - " + (string)Session["SUCURSAL_SELECTED"];

        WsArticulos.WsArticulos wsa = new WsArticulos.WsArticulos();
        wsa.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
        ArticuloIn articulo = new ArticuloIn();
        articulo.SCo_Sucursal = (string)Session["SUCURSAL_SELECTED"];
        articulo.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];
        articulo.SCo_Linea = (string)Session["LINEA_SELECTED"];
        articulo.SCo_SubLinea = (string)Session["SUBLINEA_SELECTED"];
        articulo.SCo_Categoria = (string)Session["CATEGORIA_SELECTED"];
        try
        {
            ArticuloOut[] arr_art = wsa.ConsultaArticulos(articulo);

            rptrClientes.DataSource = arr_art;
            rptrClientes.DataBind();

        }
        catch (Exception ex)
        { }
    }
}