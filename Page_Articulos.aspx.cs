using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsArticulos;

public partial class Page_Articulos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Lbl_Usuario.Text = "Bienvenido: " + (string)Session["USERNAME"];
        Lbl_EmpSuc.Text = (string)Session["EMPRESA_SELECTED"] + " - " + (string)Session["SUCURSAL_SELECTED"];

        Session["LINEA_SELECTED"]="";
        Session["SUBLINEA_SELECTED"] = "";
        Session["CATEGORIA_SELECTED"] = "";

        WsArticulos.WsArticulos wsa = new WsArticulos.WsArticulos();
        wsa.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
        LineaIn linea = new LineaIn();
        linea.SCo_Linea = "";
        linea.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];
        CategoriaIn Categoria = new CategoriaIn();
        Categoria.SCategoria = "";
        Categoria.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];
            try
        {
                LineaOut[] arr_sucur = wsa.ConsultaLineas(linea);
                ddlLinea.Enabled = true;
                ddlLinea.Items.Clear();
                ddlLinea.Items.Add(new ListItem("seleccione una linea", "-1"));
                foreach (var p in arr_sucur)
                {
                    ddlLinea.Items.Add(new ListItem(p.SLinea_Des.Trim(), p.SCo_Linea.Trim()));
                }

                CategoriaOut[] arr_cat = wsa.ConsultaCategorias(Categoria);


                ddlCategoria.Enabled = true;
                ddlCategoria.Items.Clear();
                ddlCategoria.Items.Add(new ListItem("seleccione la categoria", "-1"));
                foreach (var p in arr_cat)
                {
                    ddlCategoria.Items.Add(new ListItem(p.SCategoria_Des.Trim(), p.SCo_Categoria.Trim()));

                }
            }
        catch (Exception ex)
        { }
       }
    }

    protected void ddlLinea_SelectedIndexChanged(object sender, EventArgs e)
    {

        if ("-1".Equals(ddlLinea.SelectedValue))
        {
            ddlSubLinea.Items.Clear();
            lblErrorE.Text = "Debe seleccionar una linea valida";
        }
        else
        {
            lblErrorE.Text = "";
            Session["LINEA_SELECTED"] = ddlLinea.SelectedValue;
            WsArticulos.WsArticulos wsa = new WsArticulos.WsArticulos();
            wsa.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
            SubLineaIn Sblinea = new SubLineaIn();

            Sblinea.SCo_Linea = ddlLinea.SelectedValue;
            Sblinea.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];

            try
            {
                SubLineaOut[] arr_subl = wsa.ConsultaSubLineas(Sblinea);

                
                ddlSubLinea.Enabled = true;
                ddlSubLinea.Items.Clear();
                ddlSubLinea.Items.Add(new ListItem("seleccione la sublinea", "-1"));
                foreach (var p in arr_subl)
                {
                    ddlSubLinea.Items.Add(new ListItem(p.SSublLinea_Des.Trim(), p.SCo_SublLinea.Trim()));
                }

                
            }
            catch (Exception ex)
            { }
        }
    }


    protected void ddlSubLinea_SelectedIndexChanged(object sender, EventArgs e)
    {

        if ("-1".Equals(ddlSubLinea.SelectedValue))
        {
            ddlSubLinea.Items.Clear();
            lblErrorS.Text = "Debe seleccionar una sublinea valida";
        }
        else
        {
            lblErrorS.Text = "";
            Session["SUBLINEA_SELECTED"] = ddlSubLinea.SelectedValue;
        }

     }

    protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
    {

        if ("-1".Equals(ddlCategoria.SelectedValue))
        {
            ddlCategoria.Items.Clear();
            lblErrorC.Text = "Debe seleccionar una categoria valida";
        }
        else
        {
            lblErrorC.Text = "";
            Session["CATEGORIA_SELECTED"] = ddlCategoria.SelectedValue;
        }

    }

    protected void btnConsArt_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/Page_Articulos_Listado.aspx");
    }
}