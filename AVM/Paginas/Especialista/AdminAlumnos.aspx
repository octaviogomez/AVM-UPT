<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="AdminAlumnos.aspx.cs" Inherits="AVM.Paginas.Especialista.AdminAlumnos" %>

<%@ Register Src="~/Controles/Especialista/contAdminAlumnos.ascx" TagPrefix="uc1" TagName="contAdminAlumnos" %>
<%@ Register Src="~/Controles/Especialista/ContAltaAlumno.ascx" TagPrefix="uc1" TagName="ContAltaAlumno" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">

        <div class="card">
            <h5 class="card-header">Administrar usuarios</h5>
            <div class="card-body">
                <h5 class="card-title">Instrucciones</h5>
                <p class="card-text">Para eliminar una cita solo de clic en baja.</p>
                <br />
                <div class="card">
                    <div class="card-body">

                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Consulta general</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Alta de usuario</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <uc1:contAdminAlumnos runat="server" ID="contAdminAlumnos" />
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <uc1:ContAltaAlumno runat="server" id="ContAltaAlumno" />

                            </div>
                        
                        </div>

                    </div>
                </div>
                <br />
                <br />
            </div>
        </div>
    </div>
    <br />














</asp:Content>
