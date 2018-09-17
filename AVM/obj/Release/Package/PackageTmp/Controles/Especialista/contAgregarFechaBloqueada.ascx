<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contAgregarFechaBloqueada.ascx.cs" Inherits="AVM.Controles.Especialista.contAgregarFechaBloqueada" %>

<div class="row">
    <div class="col-6">
        <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="form-control" ></asp:TextBox>
     
    </div>
    <div class="col-6">
        <asp:Button ID="ButtonAgregar" runat="server" Text="Agregar" CssClass="btn btn-warning" OnClick="ButtonAgregar_Click" ValidationGroup="alta" />

    </div>
</div>

