<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="NuevaConsulta.aspx.cs" Inherits="AVM.Paginas.Especialista.NuevaConsulta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <div class="card">
            <h5 class="card-header">Consulta</h5>
            <br />
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
                        <ul>
                            <li>Para buscar un usuario, ingrese su matrícula y despues de click en buscar.</li>
                            <li>En la sección de <strong>Carnet Médico</strong> lo encontrara en un formato PDF.</li>
                            <li>En la sección de <strong>Exámen Psicométrico</strong> lo encontrara en un formato PDF.</li>
                        </ul>
                        <br />
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Informacion del usuario</a>
                            <a class="nav-link"  data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Carnet Médico</a>
                            <a class="nav-link" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Exámen Psicométrico</a>

                        </div>
                    </div>
                    <div class="col-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
