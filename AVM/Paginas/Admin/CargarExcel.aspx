<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="CargarExcel.aspx.cs" Inherits="AVM.Paginas.Admin.CargarExcel" %>

<%@ Register Src="~/Controles/Admin/contCargarDatosAlumnos.ascx" TagPrefix="uc1" TagName="contCargarDatosAlumnos" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container colorBlanco">

    <div class="card">
        <h5 class="card-header">    <span class="oi oi-document"></span>  Cargar Excel</h5>
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
                            <li>Seleccione un archivo Excel.</li> 
                            <li>Debe de ser menos 1mb</li> 
                            <li>Puede nombrar el archivo o dejar en blanco.</li>
                        </ol>
                        <br />
                            <div class="alert alert-info" role="alert">
                                Notas:
                                <ul>
                                    <li>
                                        El archivo debe contener datos de los alumnos.
                                    </li>
                                    <li>
                                        El formato del archivo tiene que coincidir con el que fue proporcionado.
                                    </li>
                                </ul>
                            </div>
                    </div>
                </div>
            </div>
            <br />
            <uc1:contCargarDatosAlumnos runat="server" ID="contCargarDatosAlumnos" />
            <br />
        </div>
    </div>
</div>
</asp:Content>
