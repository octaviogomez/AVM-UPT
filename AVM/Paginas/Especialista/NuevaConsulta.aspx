<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="NuevaConsulta.aspx.cs" Inherits="AVM.Paginas.Especialista.NuevaConsulta" %>

<%@ Register Src="~/Controles/Especialista/contCitaMedica.ascx" TagPrefix="uc1" TagName="contCitaMedica" %>
<%@ Register Src="~/Controles/Especialista/ContCitaDental.ascx" TagPrefix="uc1" TagName="ContCitaDental" %>
<%@ Register Src="~/Controles/Especialista/contOdontograma.ascx" TagPrefix="uc1" TagName="contOdontograma" %>
<%@ Register Src="~/Controles/Especialista/ContCitaPsicolo.ascx" TagPrefix="uc1" TagName="ContCitaPsicolo" %>





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
                        <asp:Panel ID="PanelInforMedico" runat="server" Visible="false">
                            <ul>
                                <li>En la sección de </li>
                                <li>En la sección de <strong>Carnet Médico</strong> lo encontrara en un formato PDF.</li>
                            </ul>
                        </asp:Panel>
                        <asp:Panel ID="PanelInfoDental" runat="server" Visible="false">
                            <ul>
                                <li>En la sección de </li>
                                <li>En la sección de <strong>Carnet Médico</strong> lo encontrara en un formato PDF.</li>
                            </ul>
                        </asp:Panel>
                        <asp:Panel ID="PanelInfoPsico" runat="server" Visible="false">
                            <ul>
                                <li>En la sección de </li>
                                <li>En la sección de <strong>Carnet Médico</strong> lo encontrara en un formato PDF.</li>
                            </ul>
                        </asp:Panel>
                        <br />
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                            <asp:HyperLink ID="HyperLinkConsulta" runat="server" class="nav-link active" data-toggle="pill" href="#consulta" role="tab" aria-controls="v-pills-home" aria-selected="true">Consulta</asp:HyperLink>

                            <asp:HyperLink ID="HyperLinkOdontograma" runat="server" class="nav-link" data-toggle="pill" href="#odontograma" role="tab" aria-controls="v-pills-profile" aria-selected="false" Visible="false">Odontograma</asp:HyperLink>


                        </div>
                    </div>
                    <div class="col-12 col-md-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="consulta" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <asp:Panel ID="PanelConsultaMedica" runat="server" Visible="false">
                                    <uc1:contCitaMedica runat="server" ID="contCitaMedica" />
                                </asp:Panel>
                                <asp:Panel ID="PanelConsultaDental" runat="server" Visible="false">
                                    <uc1:ContCitaDental runat="server" ID="ContCitaDental" />

                                   
                                </asp:Panel>
                                <asp:Panel ID="PanelConsultaPsico" runat="server" Visible="false">

                                    <uc1:ContCitaPsicolo runat="server" ID="ContCitaPsicolo" />
                                </asp:Panel>

                            </div>

                            <div class="tab-pane fade" id="odontograma" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <asp:Panel ID="PanelOdontograma" runat="server" Visible="false">
                                        <uc1:contOdontograma runat="server" ID="contOdontograma"  />
                                </asp:Panel>
                             
                            </div>


                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
