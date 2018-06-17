<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contAgregarFechaBloqueada.ascx.cs" Inherits="AVM.Controles.Especialista.contAgregarFechaBloqueada" %>
<div class="container colorBlanco">
    <h5 class="card-title">Instrucciones:</h5>
            <p class="card-text">Seleccione una fecha para bloquearla.</p>
            <br />
          <div class="form-row">
                <div class="col-md-5 mb-5">
                   
                    <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="form-control" required=""></asp:TextBox>

                </div>
                <div class="col-md-2 mb-2">
                    <br />
                        <asp:Button ID="ButtonAgregar" runat="server" Text="Agregar" CssClass="btn btn-info" OnClick="ButtonAgregar_Click" />
                   
                </div>
               
            </div>
</div>
