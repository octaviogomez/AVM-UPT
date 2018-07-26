<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="InfoUsuario.aspx.cs" Inherits="AVM.Paginas.Admin.InfoUsuario" %>

<%@ Register Src="~/Controles/Admin/contInfoUsuario.ascx" TagPrefix="uc1" TagName="contInfoUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">
            <uc1:contInfoUsuario runat="server" ID="contInfoUsuario" />
    </div>

</asp:Content>
