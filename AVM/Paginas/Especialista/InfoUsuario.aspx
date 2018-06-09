<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="InfoUsuario.aspx.cs" Inherits="AVM.Paginas.Especialista.InfoUsuario" %>

<%@ Register Src="~/Controles/Especialista/contInfroUsuario.ascx" TagPrefix="uc1" TagName="contInfroUsuario" %>
<%@ Register Src="~/Controles/Especialista/contCarnet.ascx" TagPrefix="uc1" TagName="contCarnet" %>
<%@ Register Src="~/Controles/Especialista/contExamenPsico.ascx" TagPrefix="uc1" TagName="contExamenPsico" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <div class="card">
            <h5 class="card-header">Información del usuario</h5>
            <br />
            <ul>
                <li>Ol</li>
            </ul>

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-4">
                            <label for="TextBoxidUsuario">Usuario:</label>
                            <asp:TextBox ID="TextBoxidUsuario" runat="server" CssClass="form-control" TextMode="Number" required=""></asp:TextBox>
                        </div>

                        <div class="col-4">
                            <br />
                            <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-success btn-lg btn-block" OnClick="ButtonBuscar_Click" />
                        </div>
                    </div>
                </div>
                <asp:Panel ID="PanelAviso" runat="server" Visible="false">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" id="myAlert">
                        <strong>Holy guacamole!</strong> Verifique bien los datos
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
  </button>
                    </div>
                </asp:Panel>

            </div>
            <div class="card-body">
                <h5 class="card-title">Instrucciones</h5>
                <p class="card-text"></p>


                <div class="row">
                    <div class="col-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Informacion del usuario</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Carnet Médico</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Examen Psicometrico</a>

                        </div>
                    </div>
                    <div class="col-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                                <uc1:contInfroUsuario runat="server" ID="contInfroUsuario" />

                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                
                                <uc1:contCarnet runat="server" ID="contCarnet" />
                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <uc1:contExamenPsico runat="server" id="contExamenPsico" />
                            </div>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>



    <script>
    (function () {
        $('#myAlert').on('closed.bs.alert', function () {
            location.reload();
        })
    })();
</script>




</asp:Content>
