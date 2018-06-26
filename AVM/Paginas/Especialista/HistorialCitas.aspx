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
                        <span class="oi oi-info"></span>   Información
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





        </div>
    </div>

</asp:Content>
