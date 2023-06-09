﻿<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_EmpSuc.aspx.cs" Inherits="Page_EmpSuc" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="container-lg" align="center" style="margin-top: 180px">
    <h5 style="color: #7A5DB4"><b>SELECCIÓN DE TRABAJO</b></h5>
    <br>
    <div class="form-horizontal">
        <asp:DropDownList ID="ddlEmpresa" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
        <asp:Label ID="lblErrorE" runat="server" CssClass="text-danger"></asp:Label>
        <br>
        <asp:DropDownList ID="dllSucursal" OnSelectedIndexChanged="dllSucursal_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
        <asp:Label ID="lblErrorS" runat="server" CssClass="text-danger"></asp:Label>
        <br>
        <asp:Button ID="SetConfigureEmpSuc" runat="server" Text="CONFIGURAR VALORES" CssClass="btn btn-outline-secondary btn-sm" OnClick="SetConfigureEmpSuc_Click" />
    </div>
</div>
<br>
<div class="text-center" style="margin-top: 130px;">
    <img src="Images/logo.png" class="img-fluid" alt="">
</div>
</asp:Content>