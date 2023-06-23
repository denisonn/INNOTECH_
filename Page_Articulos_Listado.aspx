<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Articulos_Listado.aspx.cs" Inherits="Page_Articulos_Listado" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h5>
    </div>
</div>
<div class="container">
	<h6 style="margin-top: -20px;">
		<span class="badge badge-secondary">Opción / Artículos</span>
		<span class="float-right"><img class="" src="Images/back-button.png" alt="Chania" width="24px" height="24px"></span>
    </h6>
	<br>
    <div class="row" style="padding-top: 20px">
        <asp:Repeater ID="rptrClientes" runat="server">
		<ItemTemplate>
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead>
							<tr style="font-size:smaller;">
								<th class="text-secondary">Artículo & Descripción</th>
							</tr>
						</thead>
						<tbody>
							<tr style="font-size:smaller;">
								<td>
									<h5><%#Eval("Sart_des") %></h5>
									<spam>
										<h6>Código:<%#Eval("Sco_art") %> - Modelo:<%#Eval("Smodelo") %> - Stock:<%#Eval("Stock") %></h6>
										<h6>Almacen:<%#Eval("Sco_alma") %> - Categoría:<%#Eval("Sco_cat")%> - <%#Eval("Scat_des")%></h6>
									</spam>	
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		</ItemTemplate>        
        </asp:Repeater>
    </div>
    </div>

<!-- Footer -->
<footer class="page-footer font-small mdb-color lighten-3 pt-5">
    <!-- Copyright -->
    <div class="footer-copyright text-center py-2"> <img src="images/logo.png" class="img-fluid"> </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->
</asp:Content>