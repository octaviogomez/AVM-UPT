<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="ReporteCuestionarioMedico.aspx.cs" Inherits="AVM.Paginas.Admin.ReporteCuestionarioMedico" %>

<%@ Register Src="~/Controles/Admin/contReportesCuestionarioMedico.ascx" TagPrefix="uc1" TagName="contReportesCuestionarioMedico" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">

    <div class="card">
        <h5 class="card-header">    <span class="oi oi-clipboard"></span>  Reporte Cuestionario Médico</h5>
        <div class="card-body">
              <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          <span class="oi oi-info"></span>  Información
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Seleccione la pregunta.</li> 
                            <li>Puede descargar un archivo en  diferentes formatos</li> 
                            <li>Puede cambiar la pregunta</li>
                        </ol>
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <uc1:contReportesCuestionarioMedico runat="server" ID="contReportesCuestionarioMedico" />
            <br />
        </div>
    </div>
</div>
</asp:Content>
