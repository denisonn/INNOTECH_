<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Clientes.aspx.cs" Inherits="Page_Clientes" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: black;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: black;"></asp:Label></h5>
    </div>

</div>

     <div class="container">
     <br><h5 style="color: #7A5DB4; align-content:center"><b>CLIENTES</b></h5><br>
        <div class="row" style="padding-top: 20px">
            <asp:Repeater ID="rptrClientes" runat="server">
                <ItemTemplate>
                    <div class="col-sm-7 col-md-7">
                        <a style="text-decoration: none;" href="ProductView.aspx?PID=<%#Eval("SCo_Cliente") %>">
                            <div class="img-thumbnail">
                                <div class="p-2">
                                    <div class="probrand pb-1"><%#Eval("SCliente_Des") %></div>
                                    <div class="proName"><%#Eval("SCo_Cliente") %></div>
                                </div>
                            </div>
                        </a>
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
