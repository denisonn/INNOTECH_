<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Dashboard.aspx.cs" Inherits="Page_Dashboard" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <p><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: black; font-size:xx-large"></asp:Label></p>
        <p><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: black; font-size:large"></asp:Label></p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col">
            <%--<button type="button" class="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" style="font-size: smaller"> <img src="images/customer.png" width="32" height="32"> CLIENTES</button>--%>
            <asp:LinkButton ID="CtesBtn" runat="server" OnClick="BtnClientes_Click" CssClass="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" ><img src="images/customer.png" width="32" height="32"> &nbsp;CLIENTES</asp:LinkButton>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <!--<button type="button" class="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left font-size: smaller" style="font-size: smaller"> <img src="images/checkout.png" width="32" height="32"> <span style="align-content: center">REALIZAR ORDEN</span> </button>-->
            <asp:LinkButton ID="OrderBtn" runat="server" OnClick="OrderBtn_Click" CssClass="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" ><img src="images/checkout.png" width="32" height="32"> &nbsp;REALIZAR ORDEN</asp:LinkButton>

        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <!--<button type="button" class="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" style="font-size: smaller"> <img src="images/shopping-list.png" width="32" height="32"> INVENTARIO</button>-->
            <asp:LinkButton ID="InventBtn" runat="server" OnClick="InventBtn_Click" CssClass="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" ><img src="images/shopping-list.png" width="32" height="32"> &nbsp;INVENTARIO</asp:LinkButton>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <!--<button type="button" class="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" style="font-size: smaller"> <img src="images/planning.png" width="32" height="32"> PLANIFICACIÓN DE RUTAS</button>-->
            <asp:LinkButton ID="RouteBtn" runat="server" OnClick="RouteBtn_Click" CssClass="btn btn-outline-secondary btn-md btn-block font-weight-bolder text-left" ><img src="images/planning.png" width="32" height="32"> &nbsp;PLANIFICACIÓN DE RUTAS</asp:LinkButton>
        </div>
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
