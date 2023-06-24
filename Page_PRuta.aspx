<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_PRuta.aspx.cs" Inherits="Page_PRuta" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h5>
    </div>
</div>
<div class="container">
    <h6 style="margin-top: -20px;"><span class="badge badge-secondary">Opción / Planificación de Ruta</span></h6>
    <table class="table table-bordered table-sm center">
        <thead>
		    <tr style="font-size:smaller;">
			    <th class="text-secondary">Agenda - Ruta Semanal</th>
		    </tr>
	    </thead>
        <tbody>
            <tr style="font-size:smaller;" class="text-secondary center">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="1" class="text-secondary">Dom</asp:ListItem>
                    <asp:ListItem Value="2" class="text-secondary">Lun</asp:ListItem>
                    <asp:ListItem Value="3" class="text-secondary">Mar</asp:ListItem>
                    <asp:ListItem Value="4" class="text-secondary">Mié</asp:ListItem>
                    <asp:ListItem Value="5" class="text-secondary">Juv</asp:ListItem>
                    <asp:ListItem Value="6" class="text-secondary">Vie</asp:ListItem>
                    <asp:ListItem Value="7" class="text-secondary">Sáb</asp:ListItem>
                </asp:RadioButtonList>
            </tr>
        </tbody>
    </table>
</div>

<div class="container my-5">
    <footer class="text-center text-white fixed-bottom" style="background-color: #ffffff">
        <div class="container p-4 pb-0">
            <section class="mb-4">
                <!-- Clientes -->
                <a href="#"><img src="images/customer.png" width="32" height="32"></a>
                <!-- Twitter -->
                <a><img src="images/checkout.png" width="32" height="32">></a>
                <!-- Google -->
                <a><img src="images/shopping-list.png" width="32" height="32"></a>
                <!-- Instagram -->
                <a><img src="images/planning.png" width="32" height="32"></a>
            </section>
        </div>
    </footer>
</div>
</asp:Content>
