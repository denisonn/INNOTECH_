using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsPedidos;


public partial class Page_ConPedido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["PID"] != null)
        {
            if (!IsPostBack)
            {
                Lbl_Usuario.Text = "Bienvenido: " + (string)Session["USERNAME"];
                Lbl_EmpSuc.Text = (string)Session["EMPRESA_SELECTED"] + " - " + (string)Session["SUCURSAL_SELECTED"];
                
                WsPedidos.WsPedidos wsp = new WsPedidos.WsPedidos();

                wsp.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
                ConsultarPedidoVentaIn pedidoIn = new ConsultarPedidoVentaIn();
                //pedidoIn.SCo_Vendedor = (string)Session["SUCURSAL_SELECTED"];// (string)Session["USERNAME"]; ???????????????
                pedidoIn.DFecha_d = DateTime.MinValue;
                pedidoIn.DFecha_h = DateTime.MinValue;
                pedidoIn.SCo_Empresa = (string)Session["EMPRESA_SELECTED"];
                pedidoIn.SCo_Cli = Request.QueryString["PID"];
                try
                {
                    ConsultarPedidoVentaOut[] arr_pedido = wsp.ConsultarPedido(pedidoIn);


                    Lbl_Cte.Text = arr_pedido[0].Cli_des;

                    List <ConsultarPedidoVentaOut>  lst_pedido_group = arr_pedido
                                                                      .GroupBy(p => new { p.Doc_num, p.Fec_emis })
                                                                      .Select(g => g.First())
                                                                      .ToList();


                    rptrClientes.DataSource = lst_pedido_group;
                    rptrClientes.DataBind();

                }
                catch (Exception ex)
                { }
            }
        }
        else
        {
            Response.Redirect("~/Page_Clientes.aspx");
        }

    }
}