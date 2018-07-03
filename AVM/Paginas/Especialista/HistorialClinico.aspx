<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="HistorialClinico.aspx.cs" Inherits="AVM.Paginas.Especialista.HistorialClinico" %>

<%@ Register Src="~/Controles/Especialista/contHistoMedico.ascx" TagPrefix="uc1" TagName="contHistoMedico" %>
<%@ Register Src="~/Controles/Especialista/contHistoDental.ascx" TagPrefix="uc1" TagName="contHistoDental" %>
<%@ Register Src="~/Controles/Especialista/contHistoPsico.ascx" TagPrefix="uc1" TagName="contHistoPsico" %>




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
                        <span class="oi oi-info"></span>   Información
                    </a>
                </h5>
            </div>
            <div class="row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Ingrese alguna matrícula y de clic en buscar.</li>
                            <li>En el panel lateral podrá ver los diferentes tipos de historiales que hay.</li>
                            <li>Para descargar o imprimir, se debe de dar clic en <strong><span class="oi oi-print"></span>Imprimir</strong></li>
                        </ol>
                        <br />
                    </div>
                </div>
            </div>


            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <label for="TextBoxidUsuario">Matrícula:</label>
                            <asp:TextBox ID="TextBoxidUsuario" runat="server" CssClass="form-control" TextMode="Number" required=""></asp:TextBox>
                        </div>

                        <div class="col-12  col-md-4">
                            <br />
                            <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-success btn-lg btn-block" OnClick="ButtonBuscar_Click" />
                        </div>
                        <div class="col-12  col-md-4">
                            <br />
                            <div class="alert alert-warning ocultar" role="alert" id="PanelAviso" >
                                    Sin resultados!
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Médico</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Dental</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Psicológico</a>

                        </div>
                    </div>
                    <div class="col-12 col-md-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                                <uc1:contHistoMedico runat="server" ID="contHistoMedico" />
                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <uc1:contHistoDental runat="server" ID="contHistoDental" />
                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <uc1:contHistoPsico runat="server" ID="contHistoPsico" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        (function () {

        })();
    </script>
</asp:Content>
