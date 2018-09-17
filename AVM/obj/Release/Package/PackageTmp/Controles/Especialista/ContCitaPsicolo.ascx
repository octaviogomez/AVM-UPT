<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContCitaPsicolo.ascx.cs" Inherits="AVM.Controles.Especialista.ContCitaPsicolo" %>

<div class="container">
    <div class="card">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Datos del usuario</h5>

                <div class="row">
                    <div class="col">
                        <strong>Nombre:</strong>
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre:"></asp:Label>
                    </div>
                    <div class="col">
                        <strong>Matricula:</strong>
                        <asp:Label ID="LabelMatricula" runat="server" Text="Matricula:"></asp:Label>
                    </div>
                    <div class="col">
                        <strong>Tipo:</strong>
                        <asp:Label ID="LabelTipo" runat="server" Text="Tipo:"></asp:Label>
                    </div>

                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">Resumen Exploración Física</h5>

                <div class="form-group">
                    <asp:TextBox ID="ResumenExploracion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vResumenExploracion" runat="server" ControlToValidate="ResumenExploracion" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />

                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">Diagnóstico</h5>

                <div class="form-group">
                    <asp:TextBox ID="autocompleteDiagnostico" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vautocompleteDiagnostico" runat="server" ControlToValidate="autocompleteDiagnostico" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />
                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">PlanTratamiento</h5>
                <div class="form-group">
                    <asp:TextBox ID="PlanTratamiento" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vPlanTratamiento" runat="server" ControlToValidate="PlanTratamiento" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />

                </div>
            </div>

            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:LinkButton ID="LinkButtonImpirmir1" runat="server" CssClass="btn btn-success btn-lg btn-block" ValidationGroup="cita" OnClick="ButtonGenerarCita_Click">  <span class="oi oi-check"></span> Realizar
                    </asp:LinkButton>
                </div>
                <div class="col-4">
                    <asp:LinkButton ID="HyperLinkMedico" runat="server" CssClass="btn btn-info btn-lg btn-lock" OnClick="HyperLinkMedico_Click"> 
                <span class="oi oi-print"></span> Imprimir
                    </asp:LinkButton>
                </div>
            </div>
            <br />
        </div>
    </div>
</div>


<script src="../../Scripts/bootstrap.min.js"></script>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Consulta médica</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Desea imprimir la consulta?    
                 <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info btn-lg btn-lock" OnClick="HyperLinkMedico_Click"> 
                <span class="oi oi-print"></span> Imprimir
                 </asp:LinkButton>
            </div>
            <div class="modal-footer">
                <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="ButtonGuardar_Click" />
            </div>
        </div>
    </div>
</div>
