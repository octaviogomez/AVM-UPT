<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="CitaRapida.aspx.cs" Inherits="AVM.Paginas.Especialista.CitaRapida" %>

<%@ Register Src="~/Controles/Especialista/controlCitaRapida.ascx" TagPrefix="uc1" TagName="controlCitaRapida" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:controlCitaRapida runat="server" id="controlCitaRapida" />
</asp:Content>
