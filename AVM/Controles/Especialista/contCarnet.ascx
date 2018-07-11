<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contCarnet.ascx.cs" Inherits="AVM.Controles.Especialista.contCarnet" %>
<div class="row">
    <div class="col-4">

    </div>
    <div class="col-4">

    </div>
    <div class="col-4">
          <asp:HyperLink ID="HyperLinkVistaCompletaCarnet" runat="server" Target="_blank" CssClass="badge badge-pill badge-info">Vista con el navegador</asp:HyperLink>
             
    </div>
</div>
<div class="table-responsive">
  <table class="table">
   <asp:Literal ID="PDFCarnet" runat="server"></asp:Literal>

  </table>
</div>
  