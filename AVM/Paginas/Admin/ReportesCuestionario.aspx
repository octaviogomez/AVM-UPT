﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="ReportesCuestionario.aspx.cs" Inherits="AVM.Paginas.Admin.ReportesCuestionario" %>

<%@ Register Src="~/Controles/Admin/contReportesCuestionarioMedico.ascx" TagPrefix="uc1" TagName="contReportesCuestionarioMedico" %>
<%@ Register Src="~/Controles/Admin/contReportesCuestionarioDental.ascx" TagPrefix="uc1" TagName="contReportesCuestionarioDental" %>
<%@ Register Src="~/Controles/Admin/contReportesCuestionarioPsicologico.ascx" TagPrefix="uc1" TagName="contReportesCuestionarioPsicologico" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
   <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Médico</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Psicológico</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Dental</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <uc1:contReportesCuestionarioMedico runat="server" ID="contReportesCuestionarioMedico" /> 
  </div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <uc1:contReportesCuestionarioDental runat="server" ID="contReportesCuestionarioDental" />
  </div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
      <uc1:contReportesCuestionarioPsicologico runat="server" ID="contReportesCuestionarioPsicologico" />
  </div>
</div>
        </div>
</asp:Content>
