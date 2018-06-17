
<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="BloquearFechas.aspx.cs" Inherits="AVM.Paginas.Especialista.BloquearFechas" %>

<%@ Register Src="~/Controles/Especialista/contFechasBloqueadas.ascx" TagPrefix="uc1" TagName="contFechasBloqueadas" %>
<%@ Register Src="~/Controles/Especialista/contAgregarFechaBloqueada.ascx" TagPrefix="uc1" TagName="contAgregarFechaBloqueada" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">
        <div class="card">
        <h5 class="card-header">Bloquear Fecha</h5>
        <div class="card-body">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Fechas bloqueadas</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Agregar</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
      <uc1:contFechasBloqueadas runat="server" id="contFechasBloqueadas" />
  </div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
      <uc1:contAgregarFechaBloqueada runat="server" id="contAgregarFechaBloqueada" />
  </div>
</div>
    </div>
            </div>
        </div>
</asp:Content>
