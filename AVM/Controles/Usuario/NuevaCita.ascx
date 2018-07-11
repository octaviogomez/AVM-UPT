<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NuevaCita.ascx.cs" Inherits="AVM.Controles.Usuario.NuevaCita" %>
<div class="container colorBlanco">
    <div class="card">
        <h5 class="card-header">   <span class="oi oi-calendar"></span>  Agendar Consulta </h5>
        <div class="card-body">




            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>   Instrucciones:
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Seleccionar una área, puede ser médica, dental o psicológica</li>
                            <li>Seleccionar algún especialista.</li>
                            <li>Selecionar fecha de la cita.</li>
                            <li>Verificar horarios.</li>
                            <li>En caso que la cita sea para algun familiar, activar la casilla de cita familiar.</li>
                        </ol>
                        <br />
                        <div class="alert alert-warning" role="alert">
                            <strong>Nota:</strong> En caso de que no se muestre algún horario, significa que esa fecha no esta disponible.
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListESpecialidades">1. Seleccione área</label></strong>
                    <asp:DropDownList ID="DropDownListESpecialidades" runat="server" CssClass="form-control" required="Se necesita una área" OnTextChanged="Button1_Click1" AutoPostBack="true">
                        <asp:ListItem Selected="False" Value="0" Text="Seleccione área" Enabled="true"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListEspecialista">2. Especialista</label></strong>
                    <asp:DropDownList ID="DropDownListEspecialista" runat="server" CssClass="form-control" required="Se necesita un especialista"></asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListHorarios">3. Fecha</label></strong>
                    <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="form-control" AutoPostBack="true" OnTextChanged="TextBoxFecha_TextChanged1"></asp:TextBox>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListHorario">4. Horarios</label></strong>
                    <asp:DropDownList ID="DropDownListHorario" runat="server" CssClass="form-control" placeholder="Fecha" required="Puede que la fecha no este disponible, verifique otra"></asp:DropDownList>
                    <asp:Panel ID="PanelAvisoHorarios" runat="server" Visible="false">
                        <div class="alert alert-warning oculto" role="alert">
                            Sin horarios disponibles, consulte otra fecha.
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <label for="TipoUsuario"><strong>5. Es para un familiar la cita</strong></label>

                    <div class="custom-control ">
                        <asp:CheckBox ID="TipoUsuario" runat="server" TextAlign="Right" Text="Si" />
                    </div>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <asp:LinkButton ID="ButtonReuistrarConsulta" runat="server" OnClick="ButtonReuistrarConsulta_Click" CssClass="btn btn-success btn-lg btn-block" Font-Size="Medium"  >    <span class="oi oi-file"></span>   Agendar</asp:LinkButton>
                   
             
                </div>
            </div>




        </div>
    </div>
</div>


<!-- Modal de notificacion de algun error-->
<div class="modal fade" id="NotificacionError" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body alert alert-warning">
                Revise los datos!
            </div>
        </div>
    </div>
</div>
<script>
    (function () {

        var miFechaActual = new Date();
        dia = miFechaActual.getDate();
        mes = parseInt(miFechaActual.getMonth()) + 1;
        anio = miFechaActual.getFullYear();

        var min = "" + anio + "-" + mes + "-" + dia;
        var max = "" + anio + "-" + mes + "-" + (dia + 5);;


        $("#ContentPlaceHolder1_NuevaCita_TextBoxFecha").prop("min", min);
        $("#ContentPlaceHolder1_NuevaCita_TextBoxFecha").prop("max", max);


    })();
</script>
