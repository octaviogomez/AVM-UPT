<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="AgendaCitas.aspx.cs" Inherits="AVM.Paginas.Especialista.AgendaCitas" %>

<%@ Register Src="~/Controles/Especialista/Agenda.ascx" TagPrefix="uc1" TagName="Agenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Agenda runat="server" id="Agenda" />

</asp:Content>
