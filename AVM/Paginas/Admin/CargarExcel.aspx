<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="CargarExcel.aspx.cs" Inherits="AVM.Paginas.Admin.CargarExcel" %>

<%@ Register Src="~/Controles/Admin/contCargarDatosAlumnos.ascx" TagPrefix="uc1" TagName="contCargarDatosAlumnos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:contCargarDatosAlumnos runat="server" id="contCargarDatosAlumnos" />
</asp:Content>
