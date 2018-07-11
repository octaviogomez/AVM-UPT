<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="InfoUsuario.aspx.cs" Inherits="AVM.Paginas.Especialista.InfoUsuario" %>

<%@ Register Src="~/Controles/Especialista/contInfroUsuario.ascx" TagPrefix="uc1" TagName="contInfroUsuario" %>
<%@ Register Src="~/Controles/Especialista/contCarnet.ascx" TagPrefix="uc1" TagName="contCarnet" %>
<%@ Register Src="~/Controles/Especialista/contExamenPsico.ascx" TagPrefix="uc1" TagName="contExamenPsico" %>
<%@ Register Src="~/Controles/Especialista/contSubirArchivo.ascx" TagPrefix="uc1" TagName="contSubirArchivo" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <div class="card">
            <h5 class="card-header">   <span class="oi oi-person"></span>  Información del usuario</h5>
            <br />
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>   Información
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

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-4">
                            <label for="TextBoxidUsuario">Matrícula:</label>
                            <asp:TextBox ID="TextBoxidUsuario" runat="server" CssClass="form-control" TextMode="Number" value="0"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vTextBoxidUsuario" runat="server" ControlToValidate="TextBoxidUsuario" ValidationGroup="buscar"  CssClass=" alert-warning" ErrorMessage="Campo requerido" />
                        </div>

                        <div class="col-4">
                            <br />
                            <asp:LinkButton ID="ButtonBuscar" runat="server"  CssClass="btn btn-success btn-lg btn-block" ValidationGroup="buscar" OnClick="ButtonBuscar_Click" ><span class="oi oi-magnifying-glass"></span>Buscar</asp:LinkButton>
                   
                         
                        </div>
                        <div class="col-4">
                            <div class="alert alert-warning ocultar" role="alert" id="PanelAviso">
                                <br />
                                Sin resultados!
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <div class="card-body">
                <h5 class="card-title">Instrucciones</h5>
                <p class="card-text"></p>


                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Informacion del usuario</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Carnet Médico</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Exámen Psicométrico</a>

                        </div>
                    </div>
                    <div class="col-12 col-md-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                                <uc1:contInfroUsuario runat="server" ID="contInfroUsuario" />

                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

                                <uc1:contCarnet runat="server" ID="contCarnet" />
                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <uc1:contSubirArchivo runat="server" ID="contSubirArchivo" />
                                <%-- <uc1:contExamenPsico runat="server" ID="contExamenPsico" />--%>
                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>







</asp:Content>
