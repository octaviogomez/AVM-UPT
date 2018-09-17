<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="AVM.Paginas.Admin.Estadisticas" %>

<%@ Register Src="~/Controles/Admin/contEstadisticasEspecialistas.ascx" TagPrefix="uc1" TagName="contEstadisticasEspecialistas" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">

    <div class="card">
        <h5 class="card-header">    <span class="oi oi-spreadsheet"></span>  Estadísticas por Especialista</h5>
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
                            <li>Seleccione el especialista</li> 
                            <li>Puede descargar un archivo en  diferentes formatos.</li> 
                            <li>Asegurese de incluir la fecha correcta</li>
                        </ol>
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <uc1:contEstadisticasEspecialistas runat="server" ID="contEstadisticasEspecialistas" />
            <br />
        </div>
    </div>
</div>
</asp:Content>