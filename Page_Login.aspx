﻿<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Login.aspx.cs" Inherits="Page_Login" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="container-lg" align="center" style="margin-top: 100px">
    <h5 style="color: #7A5DB4"><b>INICIO DE SESIÓN</b></h5>
    <br>
    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
    <div class="form-horizontal">        
        <div class="form-group">
            <%--<input type="text" class="form-control" id="SCod_Usuario" placeholder="código de Usuario" name="SCod_Usuario">--%>
            <asp:TextBox ID="SCod_Usuario" CssClass="form-control" placeholder="su código de usuario" runat="server"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>--%>
        </div>
        <div class="form-group">
           <%-- <input type="password" class="form-control" id="SPassword" placeholder="contraseña" name="SPassword">--%>
            <asp:TextBox ID="SPassword" CssClass="form-control" placeholder="su contraseña" runat="server" TextMode="Password"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>--%>
        </div>
        <br>
       <%-- <button type="submit" class="btn btn-outline-secondary btn-sm">INICIAR SESIÓN</button>--%>
        <asp:Button ID="MakeLogin" runat="server" Text="INICIAR SESIÓN" CssClass="btn btn-outline-secondary btn-sm" OnClick="MakeLogin_Click" />
    </div>
</div>
<br>
<div class="container-lg" align="center">
    <p style="font-size: 13px; font-style: oblique; color: #A5A1B5">Iniciar sesión significa que acepta terminos y condiciones</p>
</div>
<div class="text-center" style="margin-top: 130px;">
    <img src="Images/logo.png" class="img-fluid" alt="">
</div>
</asp:Content>
