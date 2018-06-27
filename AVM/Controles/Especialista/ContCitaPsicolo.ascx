<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContCitaPsicolo.ascx.cs" Inherits="AVM.Controles.Especialista.ContCitaPsicolo" %>

<div class="container">
    <div class="card">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Datos del usuario</h5>
          
                <div class="row">
                    <div class="col">
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label>
                    </div>
                    <div class="col">
                        <asp:Label ID="LabelMatricula" runat="server" Text="Matricula:"></asp:Label>
                    </div>
                    <div class="col">
                        <asp:Label ID="LabelTipo" runat="server" Text="Tipo:"></asp:Label>
                    </div>

                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">Resumen Exploración Física</h5>

                <div class="form-group">
                    <asp:TextBox ID="ResumenExploracion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">Diagnóstico</h5>

                <div class="form-group">
                    <asp:TextBox ID="autocompleteDiagnostico" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">PlanTratamiento</h5>

                <div class="form-group">
                    <asp:TextBox ID="PlanTratamiento" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </div>
            </div>
     
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" CssClass="btn btn-success btn-lg btn-block"  OnClick="ButtonGuardar_Click"/>
                </div>
                <div class="col-4">
                    <asp:ImageButton ID="ImageButtonImpresora" runat="server" ImageUrl="~/Imagenes/impresora.jpg" Height="100" Width="100" CssClass="" OnClick="ImageButtonImpresora_Click" />
                </div>
            </div>
        </div>
    </div>
</div>