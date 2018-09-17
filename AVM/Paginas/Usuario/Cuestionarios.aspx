<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="Cuestionarios.aspx.cs" Inherits="AVM.Paginas.Usuario.Cuestionarios" %>

<%@ Register Src="~/Controles/Usuario/Cuestionario.ascx" TagPrefix="uc1" TagName="Cuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">
          <uc1:Cuestionario runat="server" ID="Cuestionario" />
        <br />
    </div>
  
</asp:Content>
