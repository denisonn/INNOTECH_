<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/GeneralLayout.master" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
    </div>
    <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" BackColor="Blue" CssClass="btn btn-outline-secondary btn-sm" runat="server" Text="Clientes" />
                </div>
            </div>
    
</asp:Content>
