 <%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AVM.Paginas.Usuario.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <br />
        <div class="">
            <h1 class="display-4">Bienvenido !</h1>
            <p class="lead">Usted puede reservar una cita, consultar o cancelar, además de establecer un chat en línea con el especialista.</p>
        </div>
        <br />


        <div class="row">
            <div class="col-12 col-md-4">
                <div class="card border-dark ">
                    <div class="card-header">Historial Clínico</div>
                    <div class="card-body text-dark">

                        <p class="card-text">
                            La historia clínica es un documento médico-legal que surge del contacto entre el profesional de la salud (médico, odontólogo, psicólogo) y el paciente, donde se obtiene la información necesaria para la correcta atención de los pacientes.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                        <div class="card border-dark">
                    <div class="card-header">Citas médicas</div>
                    <div class="card-body text-dark">

                        <p class="card-text">Instancia de encuentro entre el médico y el paciente que representa una de las formas más antiguas de resolver los problemas de salud-enfermedad de las sociedades, uno de los escenarios más frecuentes de la relación médico-paciente.</p>
                    </div>
                </div>
            </div>
             <div class="col-12 col-md-4">
                   <asp:Panel ID="PanelAvisoFalta" runat="server" Visible="false">
                    <div class="card border-danger">
                        <div class="card-header card text-white bg-danger">Avisos</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title">Datos faltantes: No. seguro y/o de CURP</h5>
                            <p class="card-text">Ingresar al apartado de perfil para agregarlo. <a class="nav-link " href="../../../Paginas/Usuario/CancelarCita.aspx">Ir</a></p>
                                    
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelAvisoLleno" runat="server" Visible="false">
                    <div class="card border-dark ">
                        <div class="card-header">Datos actualizados</div>
                        <div class="card-body text-dark">
                            <h5 class="card-title">Sin pendientes</h5>
                            <p class="card-text">Sus datos estan actualizados</p>
                        </div>
                    </div>
                </asp:Panel>
             </div>
        </div>
  
        <br />
    </div>
</asp:Content>
