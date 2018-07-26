<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="ModificarUsuario.aspx.cs" Inherits="AVM.Paginas.Admin.ModificarUsuario" %>

<%@ Register Src="~/Controles/Admin/contModificar.ascx" TagPrefix="uc1" TagName="contModificar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container colorBlanco">
       <uc1:contModificar runat="server" id="contModificar" />
   </div>

</asp:Content>
