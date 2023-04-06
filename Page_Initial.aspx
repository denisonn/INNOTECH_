<%@ Page Language="C#" MasterPageFile="~/Layout_Initial.master" AutoEventWireup="true" CodeFile="Page_Initial.aspx.cs" Inherits="Page_Initial" %>

<asp:Content ID="ContentInitial" ContentPlaceHolderID="ContentPlaceHolderInitial" runat="Server">
    <div class="container" align="center" style="margin-top: 30px">
        <img src="Images/index.png" width="350px" height="350px" class="img-fluid" alt="">
    </div>
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6" align="center">
                <asp:Button ID="Button1" runat="server" Text="INICA SESIÓN" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</asp:Content>
