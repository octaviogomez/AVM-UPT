<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contCitaMedica.ascx.cs" Inherits="AVM.Controles.Especialista.contCitaMedica" %>

<div class="container">
    <div class="card">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Datos de usuario</h5>
                <h6 class="card-subtitle mb-2 text-muted">infromación</h6>
                <div class="row">
                    <div class="col">Nombre</div>
                    <div class="col">Matricula</div>
                    <div class="col">Yipo</div>

                </div>
            </div>



            <div class="card-body">
                <h5 class="card-title">Interrogatorio al paciente</h5>
                <h6 class="card-subtitle mb-2 text-muted">Generar un historial sobre padecimientos</h6>
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
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
                        <asp:TextBox ID="Peso" runat="server" CssClass="form-control"  pattern="\d*\.?\d*" ></asp:TextBox>
                    </div>
                     <div class="form-group col-md-3">
                        <label for="RtimoCardiaco">Ritmo Cardiaco</label>
                        <asp:TextBox ID="RtimoCardiaco" runat="server" CssClass="form-control"  TextMode="Number" ></asp:TextBox>
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