<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContCitaDental.ascx.cs" Inherits="AVM.Controles.Especialista.ContCitaDental" %>


<div class="container">
    <div class="card">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Datos del usuario</h5>

                <div class="row">
                    <div class="col">
                        <strong>Nombre:</strong>
                        <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col">
                        <strong>Matricula:</strong>
                        <asp:Label ID="LabelMatricula" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="col">
                        <strong>Tipo:</strong>
                        <asp:Label ID="LabelTipo" runat="server" Text=""></asp:Label>
                    </div>

                </div>
            </div>
            <div class="card-body">
                <h5 class="card-title">Interrogatorio al paciente</h5>
                <div class="form-group">
                    <asp:TextBox ID="ResumenAntecedente" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vResumenAntecedente" runat="server" ControlToValidate="ResumenAntecedente" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />
                </div>
            </div>



            <div class="card-body">
                <h5 class="card-title">Datos físicos</h5>
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="Talla">Talla (cm)</label>
                        <asp:TextBox ID="Talla" runat="server" CssClass="form-control" TextMode="Number" min="100" max="250"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vTalla" runat="server" ControlToValidate="Talla" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="Temperatura">Temperatura</label>
                        <asp:TextBox ID="Temperatura" runat="server" CssClass="form-control" TextMode="Number" step="0.01" title="Currency" pattern="^\d+(?:\.\d{1,2})?$" min="32" max="45"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vTemperatura" runat="server" ControlToValidate="Temperatura" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="Peso">Peso (kg)</label>
                        <asp:TextBox ID="Peso" runat="server" TextMode="Number" CssClass="form-control" step="0.01" title="Currency" pattern="^\d+(?:\.\d{1,2})?$" min="20" max="300"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vPeso" runat="server" ControlToValidate="Peso" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />

                    </div>
                    <div class="form-group col-md-2">
                        <label for="RtimoCardiaco">Ritmo Cardiaco</label>
                        <asp:TextBox ID="RtimoCardiaco" runat="server" CssClass="form-control" TextMode="Number" min="0" max="1000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vRtimoCardiaco" runat="server" ControlToValidate="RtimoCardiaco" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="Presion" style="font-size:x-small">Presión Arterial(mm)</label>
                        <asp:TextBox ID="Presion" runat="server" CssClass="form-control" TextMode="Number" min="0" max="1000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vPresion" runat="server" ControlToValidate="Presion" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />

                    </div>
                    <div class="form-group col-md-2">
                        <label for="Presion1" style="font-size:x-small">Presión Arterial(hg)</label>
                        <asp:TextBox ID="Presion1" runat="server" CssClass="form-control" TextMode="Number" min="0" max="1000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="vPresion1" runat="server" ControlToValidate="Presion1" ValidationGroup="cita" ErrorMessage="Requerido" CssClass="alert-danger" />

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
            <div class="card-body">
                <h5 class="card-title">Días de Reposo</h5>
                <div class="form-row">
                    <div class="col-md-3">
                        <asp:TextBox ID="DiasReposo" runat="server" CssClass="form-control" TextMode="Number" Text="0"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:LinkButton ID="LinkButtonImpirmir1" runat="server" CssClass="btn btn-success btn-lg btn-block" ValidationGroup="cita" OnClick="ButtonGenerarCita_Click">  <span class="oi oi-check"></span> Realizar</asp:LinkButton>

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

<script src="../../Scripts/bootstrap.min.js"></script>

<script>


    (function () {



        $(document).ready(function () {
            //Autocomplete
            $(function () {
                $.ajax({
                    type: 'GET',
                    url: 'https://raw.githubusercontent.com/octaviovs/CIE10/master/cie10.json',
                    success: function (response) {
                        var myArray = $.parseJSON(response);
                        var renglones = {};

                        console.log(myArray);

                    }
                });
            });
        });



    })();




</script>

