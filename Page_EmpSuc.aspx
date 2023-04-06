<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_EmpSuc.aspx.cs" Inherits="Page_EmpSuc" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
<div class="container-lg" align="center" style="margin-top: 180px">
    <h5 style="color: #7A5DB4"><b>SELECCIÓN DE TRABAJO</b></h5>
    <br>
    <div class="form-horizontal">
        <%--<select name="empresa" class="custom-select mb-3 empresa">
            <option selected>Seleccione la empresa</option>
            @foreach (var lst in Model)
            {
                <option value="@lst.Value">@lst.Text</option>
            }
        </select>--%>
        <asp:DropDownList ID="ddlEmpresa" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>--%>
        <br>
        <%--<select name="sucursal" class="custom-select mb-3">
            <option selected>Seleccione la sucursal</option>
            <option value="volvo">Sucursal #1</option>
            <option value="fiat">Sucursal #2</option>
            <option value="audi">Sucursal #3</option>
        </select>--%>
        <asp:DropDownList ID="dllSucursal" OnSelectedIndexChanged="dllSucursal_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>--%>
        <br>
        <asp:Button ID="SetConfigureEmpSuc" runat="server" Text="CONFIGURAR VALORES" CssClass="btn btn-outline-secondary btn-sm" OnClick="SetConfigureEmpSuc_Click" />
    </div>
</div>
<br>
<div class="text-center" style="margin-top: 130px;">
    <img src="Images/logo.png" class="img-fluid" alt="">
</div>
</asp:Content>