<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="BloquearFechas.aspx.cs" Inherits="AVM.Paginas.Especialista.BloquearFechas" %>

<%@ Register Src="~/Controles/Especialista/contFechasBloqueadas.ascx" TagPrefix="uc1" TagName="contFechasBloqueadas" %>
<%@ Register Src="~/Controles/Especialista/contAgregarFechaBloqueada.ascx" TagPrefix="uc1" TagName="contAgregarFechaBloqueada" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">

        <div class="card">
            <h5 class="card-header">Administración de fechas</h5>
            <div class="card-body">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <span class="oi oi-info"></span>   Instrucciones
                        </a>
                    </h5>
                </div>
                <div class="Row">
                    <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <ul>
                                <li>Para eliminar una <strong>fecha</strong> identifiquela, y despues de clic en    <span class="oi oi-trash"></span></li>
                            </ul>
                            <br />

                        </div>
                    </div>
                </div>
                <br />
                <div class="container">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                        Agregar fecha
                    </button>
                </div>
                <br />
                <uc1:contFechasBloqueadas runat="server" ID="contFechasBloqueadas" />

            </div>
        </div>
    </div>




    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <uc1:contAgregarFechaBloqueada runat="server" ID="contAgregarFechaBloqueada" />

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
