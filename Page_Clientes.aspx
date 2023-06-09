﻿<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Clientes.aspx.cs" Inherits="Page_Clientes" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="jumbotron-home jumbotron-fluid">
    <div class="container">
        <h3><asp:Label ID="Lbl_Usuario" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h3>
        <h5><asp:Label ID="Lbl_EmpSuc" runat="server" CssClass="font-weight-bolder" style="color: white;"></asp:Label></h5>
    </div>
</div>
<div class="container">
    <h6 style="margin-top: -20px;"><span class="badge badge-secondary">Opción / Clientes</span></h6>
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="rptrClientes" runat="server">
            <ItemTemplate>
                <tr>
                    <td style="font-size:smaller;"><a href="Page_ConPedido.aspx?PID=<%#Eval("SCo_Cliente") %>"><%#Eval("SCliente_Des") %></a></td>
                    <td style="font-size:smaller;"><%#Eval("SCo_Cliente") %></td>
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
