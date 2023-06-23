<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Articulos.aspx.cs" Inherits="Page_Articulos" %>

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
    <div class="form-horizontal" align="center">
	    <asp:DropDownList ID="ddlLinea" OnSelectedIndexChanged="ddlLinea_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
	    <asp:Label ID="lblErrorE" runat="server" CssClass="text-danger"></asp:Label>
	    <br>
	    <asp:DropDownList ID="ddlSubLinea" OnSelectedIndexChanged="ddlSubLinea_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
	    <asp:Label ID="lblErrorS" runat="server" CssClass="text-danger"></asp:Label>
	    <br>
	    <asp:DropDownList ID="ddlCategoria" OnSelectedIndexChanged="ddlCategoria_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
	    <asp:Label ID="lblErrorC" runat="server" CssClass="text-danger"></asp:Label>
	    <br>
	    <asp:Button ID="btnConsArt" runat="server" Text="CONSULTAR ARTICULOS" CssClass="btn btn-outline-secondary btn-sm text-center" OnClick="btnConsArt_Click" />
    </div>
</div>

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
