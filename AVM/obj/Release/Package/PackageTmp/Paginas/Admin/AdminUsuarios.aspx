<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="AdminUsuarios.aspx.cs" Inherits="AVM.Paginas.Admin.AdminUsuarios" %>

<%@ Register Src="~/Controles/Admin/contListadoUsuarios.ascx" TagPrefix="uc1" TagName="contListadoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:contListadoUsuarios runat="server" id="contListadoUsuarios" />
</asp:Content>
