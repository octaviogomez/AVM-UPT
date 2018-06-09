<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubirCarnet.ascx.cs" Inherits="AVM.Controles.Usuario.SubirCarnet" %>
<div class="container colorBlanco">


    <div class="card">
        <div class="card-header">
            Sección de archivos
        </div>
        <div class="card-body">
            <h5 class="card-title">Carnet</h5>
            <p class="card-text">Para subir el documento tome en cuenta las siguientes recomendaciones.</p>
            <ul>
                <li>Debe de ser un documento .pdf</li>
                <li>No debe de pesar más de 1 Mb</li>
                <li>Por nombre llevara su número de credencial</li>
            </ul>
            <div class="custom-file">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="custom-file-input" />
                <label class="custom-file-label" for="customFile">Seleccionar Archivo</label>
            </div>
            <br />
            <br />
            <br />


            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <asp:Button ID="btnUpload" runat="server" Text="Subir" CssClass="btn btn-success btn-lg btn-block" OnClick="btnUpload_Click" />
                </div>
                <div class="col"></div>
            </div>
            <br />
            <br />
            <div id="PanelAviso" class="ocultar">

                <div class="alert alert-warning" role="alert">
                    <h4 class="alert-heading">Error!</h4>
                    <p>Al parecer hay un problema con tu archivo, verificalo.</p>
                    <hr>
                    <p class="mb-0">Consulta las indicaciones.</p>
                </div>
            </div>


            <div id="PanelNotificacion" class="ocultar">
                <div class="alert alert-success" role="alert">
                   Carga exitosa
                </div>
            </div>
        </div>
    </div>

</div>
