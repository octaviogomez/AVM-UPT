<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="SubirArchivo.aspx.cs" Inherits="AVM.Paginas.Usuario.SubirArchivo" %>

<%@ Register Src="~/Controles/Usuario/SubirCarnet.ascx" TagPrefix="uc1" TagName="SubirCarnet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:SubirCarnet runat="server" ID="SubirCarnet" />
</asp:Content>
