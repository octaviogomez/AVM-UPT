<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contCitaMedica.ascx.cs" Inherits="AVM.Controles.Especialista.contCitaMedica" %>

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
                <h5 class="card-title">Interrogatorio al paciente</h5>
                <div class="form-group">
                    <asp:TextBox ID="ResumenAntecedente" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                </div>
            </div>



            <div class="card-body">
                <h5 class="card-title">Datos físicos</h5>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="Talla">Talla (cm)</label>
                        <asp:TextBox ID="Talla" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="Temperatura">Temperatura</label>
                        <asp:TextBox ID="Temperatura" runat="server" CssClass="form-control" placeholder="" pattern="^\d+(?:[\.\,]\d+)?$"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="Peso">Peso (kg)</label>
                        <asp:TextBox ID="Peso" runat="server" CssClass="form-control" pattern="\d*\.?\d*"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="RtimoCardiaco">Ritmo Cardiaco</label>
                        <asp:TextBox ID="RtimoCardiaco" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="Presion">Presión Arterial(mm)</label>
                        <asp:TextBox ID="Presion" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="Presion1">Presión Arterial(hg)</label>
                        <asp:TextBox ID="Presion1" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
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
            <div class="card-body">
                <h5 class="card-title">Dias de Reposo</h5>
                <div class="form-row">
                    <div class="col-md-3">
                        <asp:TextBox ID="DiasReposo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" CssClass="btn btn-success btn-lg btn-block" OnClick="ButtonGuardar_Click" />
                </div>
                <div class="col-4">
                    <asp:ImageButton ID="ImageButtonImpresora" runat="server" ImageUrl="~/Imagenes/impresora.jpg" Height="100" Width="100" CssClass="" />
                </div>
            </div>
        </div>
    </div>
</div>
<script>
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
</script>
