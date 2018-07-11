<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="HistorialCitas.aspx.cs" Inherits="AVM.Paginas.Especialista.HistorialCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">
        <div class="card">
            <h5 class="card-header"><span class="oi oi-file"></span>Historial de Citas</h5>
            <br />
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>Información
                    </a>
                </h5>
            </div>
            <div class="row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Ingrese alguna matrícula y de seleccione el tipo de historial que desea.</li>
                            <li>En el panel lateral podrá ver los diferentes tipos de historiales que hay.</li>
                            <li>Para descargar o imprimir, se debe de dar clic en <strong><span class="oi oi-print"></span>Imprimir</strong></li>
                            <li>

                                <div class="alert alert-info" role="alert">
                                    Nota:
                                </div>
                            </li>
                        </ol>
                        <br />
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-4 col-md-4">
                            <label for="TextBoxidUsuario">Matrícula:</label>
                            <asp:TextBox ID="TextBoxidUsuario" runat="server" CssClass="form-control" TextMode="Number" required=""></asp:TextBox>
                        </div>

                        <div class="col-4  col-md-4">
                            <label for="DropDownListTipo">Tipo:</label>
                            <asp:DropDownList ID="DropDownListTipo" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownListTipo_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Tipo" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Médico" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Dental" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Psicológico" Value="3"></asp:ListItem>
                       
                            </asp:DropDownList>
                        </div>
                        <div class="col-4  col-md-4">
                            <br />
                            <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-success btn-lg btn-block" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <ul class="nav nav-pills col-12 mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Consultas</a>
                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButtonMedico" runat="server" class="nav-link" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false" data-tipo="medico" Visible="false">Médico/Dental</asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButtonPsico" runat="server" class="nav-link" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" data-tipo="pisco" Visible="false">Psicológico</asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButtonOdonto" runat="server" class="nav-link" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" data-tipo="odonto" Visible="false">Odontograma</asp:LinkButton>
                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                    <div class="table-responsive">
                        <asp:GridView ID="GridViewHistorialCitas" runat="server" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_OnRowCommand" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField ShowHeader="False" HeaderText="IdCita" Visible="false" ControlStyle-CssClass="">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False" HeaderText="Info">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButtonConsulta" runat="server" CommandName="Consulta" CssClass="form-control btn btn-outline-info">
                                  <span class="oi oi-document"></span>
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField Visible="true" DataField="Matrícula" HeaderText="Matrícula" />
                                <asp:BoundField Visible="true" DataField="Especialista" HeaderText="Especialista" />
                                <asp:BoundField Visible="true" DataField="Fecha" HeaderText="Fecha" ItemStyle-Font-Bold="true" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                    <div class="card-body">
                        <h4 class="card-title">Datos del Médico</h4>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="labelNombreMedico"><strong>Nombre:</strong></label>
                                <asp:Label ID="labelNombreMedico" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="labelNombreMedico"><strong>Matrícula:</strong></label>
                                <asp:Label ID="labelIdMedico" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="labelNombreMedico"><strong>Especialidad:</strong></label>
                                <asp:Label ID="LabelEspecialidad" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Datos del Usuario</h5>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="labelNombreMedico"><strong>Nombre:</strong></label>
                                <asp:Label ID="LabelNombreAlumno" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="LabelMatriculaAlumno"><strong>Matrícula:</strong></label>
                                <asp:Label ID="LabelMatriculaAlumno" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Datos de Cita</h5>
                        <div class="form-row">
                            <div class="col-3">
                                <label for="LabelFecha"><strong>Fecha:</strong></label>
                                <asp:Label ID="LabelFecha" runat="server" Text="Fecha"></asp:Label>
                            </div>
                            <div class="col-3">
                                <label for="LabelFecha"><strong>Hora:</strong></label>
                                <asp:Label ID="labelHora" runat="server" Text="hora" Font-Size="Medium"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Interrogatorio al paciente</h4>
                        <asp:TextBox ID="ResumenAntecedente" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Datos Físicos</h4>
                        <div class="form-row">
                            <div class="col-md-2">
                                <label for="LabelFecha"><strong>Talla:</strong></label>
                                <asp:TextBox ID="Talla" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <label for="LabelFecha"><strong>Peso:</strong></label>
                                <asp:TextBox ID="Peso" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <label for="LabelFecha"><strong>Temperatura:</strong></label>
                                <asp:TextBox ID="Temperatura" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-2">
                                <label for="LabelFecha"><strong>Presion:</strong></label>
                                <asp:TextBox ID="Presion" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" CssClass="form-control"></asp:TextBox>

                            </div>
                            <div class="col-md-2">
                                <label for="LabelFecha"><strong>Ritmo cardiaco:</strong></label>
                                <asp:TextBox ID="Ritmocaridaco" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Resumen Exploración Física</h4>
                        <div>
                            <asp:TextBox ID="ResumenExploracion" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Diagnóstico</h5>
                        <asp:TextBox ID="TextBoxDiagnostico" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>

                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Plan de Tratamiento</h5>
                        <asp:TextBox ID="PlanTratamiento" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Días de reposo</h5>
                        <div class="form-row">
                            <div class="col-4">
                                <asp:TextBox ID="Diasreposo" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="LabelIdCita" runat="server" Text="Id:" Font-Size="Medium" Visible="false"></asp:Label>
                    <div> 
                        <asp:LinkButton ID="HyperLinkDental" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock" OnClick="Button1_Click"> 
                        <span class="oi oi-print"></span> Imprimir
                        </asp:LinkButton>
                    </div><br />

                </div>
                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">

                    <div class="card-body">
                        <h4 class="card-title">Datos del Psicólogo</h4>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="NombrePsicologo"><strong>Nombre:</strong></label>
                                <asp:Label ID="NombrePsicologo" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="matriculaPsicologo"><strong>Matrícula:</strong></label>
                                <asp:Label ID="matriculaPsicologo" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="EspeciliadadPsicologo"><strong>Especialidad:</strong></label>
                                <asp:Label ID="EspeciliadadPsicologo" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Datos del Usuario</h5>
                        <div class="form-row">
                            <div class="form-group col-md-3">
                                <label for="usuarioPsico"><strong>Nombre:</strong></label>
                                <asp:Label ID="usuarioPsico" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="matriculaAlumnoPsico"><strong>Matrícula:</strong></label>
                                <asp:Label ID="matriculaAlumnoPsico" runat="server" Text="" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Datos de Cita</h5>
                        <div class="form-row">
                            <div class="col-3">
                                <label for="fechaPsico"><strong>Fecha:</strong></label>
                                <asp:Label ID="fechaPsico" runat="server" Text="Fecha"></asp:Label>
                            </div>
                            <div class="col-3">
                                <label for="horapsico"><strong>Hora:</strong></label>
                                <asp:Label ID="horapsico" runat="server" Text="hora" Font-Size="Medium"></asp:Label>
                            </div>
                        </div>
                    </div>
                          <div class="card-body">
                        <h4 class="card-title">Resumen Exploración Física</h4>
                        <div>
                            <asp:TextBox ID="exploPisco" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>
                        </div>
                    </div>

                    <div class="card-body">
                        <h5 class="card-title">Diagnóstico</h5>
                        <asp:TextBox ID="diagnosticoPsico" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>

                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Plan de Tratamiento</h5>
                        <asp:TextBox ID="tratamientoPsico" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="3" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div> 
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock" OnClick="Button1_Click"> 
                        <span class="oi oi-print"></span> Imprimir
                        </asp:LinkButton>
                    </div><br />
                </div>
            </div>
        </div>
    </div>
    <script>
        (function () {


        })();

    </script>
</asp:Content>

