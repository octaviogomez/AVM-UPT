<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="HistorialCitas.aspx.cs" Inherits="AVM.Paginas.Especialista.HistorialCitas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <div class="card">
            <h5 class="card-header">Historial Clínico</h5>
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
                            <li>Ingrese alguna matrícula y de click en buscar.</li>
                            <li>En el panel lateral podrá ver los diferentes tipos de historiales que hay.</li>
                            <li>Para descargar o imprimir, se debe de dar click en <strong><span class="oi oi-print"></span>Imprimir</strong></li>
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
                                <asp:ListItem Text="Médico" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Dental" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Psicologico" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Odontograma" Value="4"></asp:ListItem>
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
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Consultas</a>
                </li>
                <li class="nav-item">

                    <asp:LinkButton ID="LinkButtonMedico" runat="server" class="nav-link" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false" Visible="false">Médico/Dental</asp:LinkButton>

                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButtonPsico" runat="server" class="nav-link" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" Visible="false">Psicologico</asp:LinkButton>

                </li>
                <li class="nav-item">
                    <asp:LinkButton ID="LinkButtonOdonto" runat="server" class="nav-link" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false" Visible="false">Odontograma</asp:LinkButton>

                </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">




                    <div class="table-responsive">
                        <asp:GridView ID="GridViewHistorialCitas" runat="server" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_OnRowCommand">
                            <Columns>
                                <asp:TemplateField ShowHeader="False" HeaderText="IdCita" Visible="false" ControlStyle-CssClass="">
                                    <ItemTemplate>
                                        <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False" HeaderText="Consulta">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButtonConsulta" runat="server" CommandName="Consulta" CssClass="form-control btn btn-outline-info">
                                  
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>




                </div>
                <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

                    <div>

                        <div class="card-body">
                            <h5 class="card-title">Datos del médicos</h5>

                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <label for="labelNombreMedico">Nombre:</label>
                                    <asp:Label ID="labelNombreMedico" runat="server" Text="Nombre" Font-Size="Medium"></asp:Label>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="labelNombreMedico">Matrícula:</label>
                                    <asp:Label ID="labelIdMedico" runat="server" Text="Matrícula" Font-Size="Medium"></asp:Label>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="labelNombreMedico">Especialidad:</label>
                                    <asp:Label ID="LabelEspecialidad" runat="server" Text="Especialidad" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <h5 class="card-title">Datos del alumno</h5>
                            <div class="form-group col-md-3">
                                <label for="labelNombreMedico">Alumno:</label>
                                <asp:Label ID="LabelNombreAlumno" runat="server" Text="Nombre" Font-Size="Medium"></asp:Label>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="LabelMatriculaAlumno">Matrícula:</label>
                                <asp:Label ID="LabelMatriculaAlumno" runat="server" Text="Matrícula" Font-Size="Medium"></asp:Label>
                            </div>
                             <div class="form-group col-md-3">
                                <label for="LabelMatriculaAlumno">Matrícula:</label>
                                <asp:Label ID="Label2" runat="server" Text="Matrícula" Font-Size="Medium"></asp:Label>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a></a>
                            <div class="row">
                                <div class="col s2">
                                    <asp:Label ID="Label1" runat="server" Text="Alumno :" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                </div>
                                <div class="col s4">
                                </div>
                                <div class="col s2">
                                    <asp:Label ID="Label3" runat="server" Text="Matrícula:" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                </div>
                                <div class="col s2">
                                </div>
                                <div class="col s2 ">
                                    <asp:Label ID="LabelIdCita" runat="server" Text="Id:" Font-Size="Medium" Visible="false"></asp:Label>
                                </div>
                            </div>
                            <a>Fecha</a>
                            <div class="row">
                                <div class="col s2">
                                    <asp:Label ID="Label6" runat="server" Text="Fecha" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                </div>
                                <div class="col s2">
                                    <asp:Label ID="LabelFecha" runat="server" Text="Fecha" Font-Size="Medium"></asp:Label>
                                </div>
                                <div class="col s2">
                                    <asp:Label ID="Label7" runat="server" Text="Hora:" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                </div>
                                <div class="col s4">
                                    <asp:Label ID="labelHora" runat="server" Text="hora" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Interrogatorio al paciente</a>
                            <div class="row">
                                <div class="col s12">
                                    <asp:TextBox ID="ResumenAntecedente" runat="server" TextMode="MultiLine" ReadOnly="True" Font-Size="Medium" ForeColor="Black" class="materialize-textarea"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Datos físicos</a>
                            <%-- Talla y peso --%>

                            <div class="row">
                                <div class="col-md-2">
                                    <asp:Label ID="Label8" runat="server" Text="Talla:"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="Talla" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                                </div>
                                <div class="col-md-2">
                                    <asp:Label ID="Label9" runat="server" Text="Peso:"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="Peso" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                                </div>

                                <div class="col-md-2">
                                    <asp:Label ID="Label11" runat="server" Text="Temperatura:  "></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="Temperatura" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-2">
                                    <asp:Label ID="Label10" runat="server" Text="Presion:"></asp:Label>
                                </div>
                                <div class="col-md-2">
                                    <asp:TextBox ID="Presion" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <asp:Label ID="Label12" runat="server" Text="Ritmo cardiaco:"></asp:Label>
                                </div>
                                <div class="col-md-1">
                                    <asp:TextBox ID="Ritmocaridaco" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Resumen Exploración Física</a>
                            <div>
                                <asp:TextBox ID="ResumenExploracion" runat="server" TextMode="MultiLine" CssClass="materialize-textarea" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Diagnóstico</a>
                            <div>
                                <asp:TextBox ID="TextBoxDiagnostico" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black" TextMode="MultiLine" CssClass="materialize-textarea"></asp:TextBox>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Plan de Tratamiento</a>
                            <div>
                                <asp:TextBox ID="PlanTratamiento" runat="server" TextMode="MultiLine" CssClass="materialize-textarea" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <a>Días de reposo</a>
                            <div>
                                <asp:TextBox ID="Diasreposo" runat="server" ReadOnly="True" Font-Size="Medium" ForeColor="Black"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
            </div>

        </div>
    </div>

</asp:Content>
