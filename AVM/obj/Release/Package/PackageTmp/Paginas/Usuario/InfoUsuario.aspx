<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="InfoUsuario.aspx.cs" Inherits="AVM.Paginas.Usuario.InfoUsuario" %>

<%@ Register Src="~/Controles/Usuario/Perfil.ascx" TagPrefix="uc1" TagName="Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Perfil runat="server" id="Perfil" />
</asp:Content>
