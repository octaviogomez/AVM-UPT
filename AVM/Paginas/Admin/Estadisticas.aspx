<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="AVM.Paginas.Admin.Estadisticas" %>

<%@ Register Src="~/Controles/Admin/contEstadisticasEspecialistas.ascx" TagPrefix="uc1" TagName="contEstadisticasEspecialistas" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
   <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Número de Consultas</a>
  </li>
  
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <uc1:contEstadisticasEspecialistas runat="server" id="contEstadisticasEspecialistas" />
  </div>
  
</div>
        </div>
</asp:Content>