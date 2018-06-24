<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="Archivos.aspx.cs" Inherits="AVM.Paginas.Especialista.Archivos" %>

<%@ Register Src="~/Controles/Especialista/contSubirArchivo.ascx" TagPrefix="uc1" TagName="contSubirArchivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <uc1:contSubirArchivo runat="server" ID="contSubirArchivo" />


</asp:Content>
