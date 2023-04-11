using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WsLogin;

public partial class Page_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MakeLogin_Click(object sender, EventArgs e)
    {

        if (!("".Equals(SCod_Usuario.Text.Trim()) || "".Equals(SPassword.Text.Trim())))
        {
            WsLogin.WsLogin ws = new WsLogin.WsLogin();
            ws.Timeout = int.Parse(ConfigurationManager.AppSettings["TimeOut"].ToString());
            UsuarioIn user = new UsuarioIn();
            UsuarioOut userout = new UsuarioOut();
            user.SCod_Usuario = SCod_Usuario.Text;
            user.SPassword = SPassword.Text;

            try
            {
                userout = ws.Login(user);

                switch (userout.SUsuario_Estatus)
                {
                    case "": //login satisfactorio
                        Session["U_OUT"] = userout;
                        Session["USERNAME"] = userout.SUsuario_Codigo;
                        Response.Redirect("~/Page_EmpSuc.aspx");
                        break;
                    case "I"://usuario inactivo
                        lblError.Text = "Usuario Inactivo !";
                        break;
                    case "B": // usuario  bloqueado
                        lblError.Text = "Usuario Bloqueado !";
                        break;
                    case "no valido": //login fallido
                        lblError.Text = "Usuario o Clave Invalido !";
                        break;
                }
            }
            catch (Exception ex) { lblError.Text = "Ocurrio un error de conexion !"; }
        }
    }
}