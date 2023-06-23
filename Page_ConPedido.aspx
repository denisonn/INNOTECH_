<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_ConPedido.aspx.cs" Inherits="Page_ConPedido" %>
<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h5>
        <h6><asp:Label ID="Lbl_Cte" runat="server" CssClass="font-weight-bolder font-small" style="color: white;"></asp:Label></h6>
    </div>
</div>
<div class="container">
    <%--<h5 style="color: #7A5DB4; align-content:center"><b>CONSULTA PEDIDOS</b></h5>--%>
    <h6 style="margin-top: -20px;"><span class="badge badge-secondary">Opción / Consulta de pedidos</span></h6>
    <%--<h6><asp:Label ID="Lbl_Cte" runat="server" CssClass="font-weight-bolder" style="color: black;"></asp:Label></h6>--%>
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th style="font-size:smaller;"></th>
            <th style="font-size:smaller;"></th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="rptrClientes" runat="server">
            <ItemTemplate>
                <tr>
                    <td style="font-size:smaller;"><a href="Page_DetPedido.aspx?PID=<%#Eval("Doc_num") +"/"+ Eval("Co_cli")%>"><%#Eval("Doc_num") %></a></td>
                    <td style="font-size:smaller;"><%#Eval("Fec_emis") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
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