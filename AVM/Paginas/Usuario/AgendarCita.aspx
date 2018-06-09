<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="AgendarCita.aspx.cs" Inherits="AVM.Paginas.Usuario.AgendarCita" %>

<%@ Register Src="~/Controles/Usuario/NuevaCita.ascx" TagPrefix="uc1" TagName="NuevaCita" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:NuevaCita runat="server" id="NuevaCita" />
</asp:Content>
