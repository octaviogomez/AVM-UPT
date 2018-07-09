<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contReportesCuestionarioDental.ascx.cs" Inherits="AVM.Controles.Admin.contReportesCuestionarioDental" %>
<div class="container colorBlanco">
<div id="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Instrucciones:
                    </button>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    <p style="font-size: medium">1.-Seleccione la pregunta. </p>
                    <p style="font-size: medium">2.-Puede descargar un archivo en  diferentes formatos </p>
                    <p style="font-size: medium">3.-Puede cambiar la pregunta.</p>
                    
                </div>
            </div>
            </div>
            </div>
  </div>
    <br />
    <div class="form-row">
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListReporte">1. Seleccione reporte</label></strong>
                    <asp:DropDownList ID="DropDownListReporte" runat="server" CssClass="form-control" required="Se necesita seleccionar un reporte"  AutoPostBack="true">
                        <asp:ListItem Selected="False" Value="0" Text="Seleccione reporte" Enabled="true"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListEspecialista">2. Año de ingreso</label></strong>
                    <asp:DropDownList ID="DropDownListEspecialista" runat="server" CssClass="form-control" required="Se necesita un especialista"></asp:DropDownList>
                </div>
            </div>
</div>