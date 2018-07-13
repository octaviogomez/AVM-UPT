<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="AVM.Paginas.Admin.NuevoUsuario" %>

<%@ Register Src="~/Controles/Admin/contAltaUsuario.ascx" TagPrefix="uc1" TagName="contAltaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:contAltaUsuario runat="server" id="contAltaUsuario" />
</asp:Content>
