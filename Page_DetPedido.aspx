<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_DetPedido.aspx.cs" Inherits="Page_DetPedido" %>
<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h5>
        <h6><asp:Label ID="Lbl_Cte" runat="server" CssClass="font-weight-bolder font-small" style="color: white;"></asp:Label></h6>
        <h6><asp:Label ID="Lbl_Order" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h6>
    </div>
</div>

<div class="container">
    <h6 style="margin-top: -20px;">
		<span class="badge badge-secondary">Opción / Detalle de Pedido</span>
		<span class="float-right"><img class="" src="Images/back-button.png" alt="Chania" width="24px" height="24px"></span>
    </h6>
	<br>
	<h6 style="text-align: right;"><span class="badge badge-success"><asp:Label ID="lblTotal" runat="server" Text="Total Pedido: "></asp:Label></span></h6>
	
	<asp:Repeater ID="rptrClientes" runat="server">
	<ItemTemplate>
		<div class="card">
			<div class="card-body">
				<h6 class="card-text text-info" style="font-size:smaller;"><%#Eval("Art_des") %></h6>
				<div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead>
							<tr style="font-size:smaller;">
								<th class="text-secondary">Código</th>
								<th class="text-secondary">Unidad</th>
								<th class="text-secondary">Cantidad</th>
								<th class="text-secondary">Unitario</th>
								<th class="text-secondary">Total</th>
							</tr>
						</thead>
						<tbody>
							<tr style="font-size:smaller;">
								<td><%#Eval("Co_art") %></td>
								<td><%#Eval("Co_uni")%></td>
								<td><%#Eval("Total_art") %></td>
								<td><%#Eval("Prec_vta")%></td>
								<td><%#Eval("Reng_neto")%></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</ItemTemplate>
	</asp:Repeater>
</div>
<br />
<!-- Footer -->
<div class="container my-5">
    <footer class="text-center text-white fixed-bottom" style="background-color: #ffffff">
        <div class="container p-2">
            <section class="mb-2">
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
<!-- Footer -->
</asp:Content>
