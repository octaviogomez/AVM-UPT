<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="controlCitaRapida.ascx.cs" Inherits="AVM.Controles.Especialista.controlCitaRapida" %>
<div class="container colorBlanco">
    <div class="card">
        <h5 class="card-header">Cita rápida</h5>
        <div class="card-body">

            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>Información
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Seleccione una fecha.</li>
                            <li>Seleccione un horario</li>
                             <li>Ingrese la matrícula del usuario.</li>
                             <li>En caso de ser de algún familiar seleccionar "si."</li>
                        </ol>
                        <br />
                    </div>
                </div>
            </div>
            <br />


            <h3>Datos del especialista</h3>
            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <label>1. Nombre :</label>
                    <strong>
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre"></asp:Label></strong>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">

                    <label>2. Especialidad:</label>
                    <strong>
                        <asp:Label ID="LabelEspecialidad" runat="server" Text="Especialidad"></asp:Label></strong>
                </div>
            </div>
            <hr />
            <div class="form-row">
                <div class="col-md-5 mb-5">

                    <label for="TextBoxFecha">3. Fecha</label>
                    <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">

                    <label for="DropDownListHorario">4. Horarios</label>
                    <asp:DropDownList ID="DropDownListHorario" runat="server" CssClass="form-control" placeholder="Fecha" required="Se necesita una fecha">
                        <asp:ListItem Value="1">8:00</asp:ListItem>
                        <asp:ListItem Value="2">9:00</asp:ListItem>
                        <asp:ListItem Value="3">10:00</asp:ListItem>
                        <asp:ListItem Value="4">11:00</asp:ListItem>
                        <asp:ListItem Value="5">12:00</asp:ListItem>
                        <asp:ListItem Value="6">13:00</asp:ListItem>
                        <asp:ListItem Value="7">14:00</asp:ListItem>
                        <asp:ListItem Value="8">15:00</asp:ListItem>
                        <asp:ListItem Value="9">16:00</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>




            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <label for="TextBoxFecha">5. Matrícula  del usuario</label>
                    <asp:TextBox ID="TextBoxIdAlumno" runat="server" CssClass="form-control" TextMode="Number" required=""></asp:TextBox>

                </div>
                <div class="col-md-2 mb-2">
                    <br />
                    <asp:Button ID="ButtonBUscarID" runat="server" Text="Buscar" CssClass="btn btn-info btn-lg  " OnClick="ButtonBUscarID_Click" />
                </div>
                <div class="col-md-5 mb-5">
                    <label for="TipoUsuario">5. Es para un familiar la cita</label>

                    <div class="custom-control ">
                        <asp:CheckBox ID="TipoUsuario" runat="server" TextAlign="Right" Text="Si" />
                    </div>

                </div>
            </div>

            <div class="form-row">
                <div class="col-md-5 mb-5">
                    <strong>
                        <asp:Label ID="LabelNombreAlumno" runat="server" Text="" Font-Size="Large"></asp:Label></strong>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <asp:Button ID="ButtonReuistrarConsulta" runat="server" Text="Agendar" CssClass="btn btn-success btn-lg btn-block" Font-Size="Medium" OnClick="ButtonReuistrarConsulta_Click" />

                </div>
            </div>




        </div>
    </div>
</div>

