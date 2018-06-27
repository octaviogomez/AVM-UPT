<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contSubirArchivo.ascx.cs" Inherits="AVM.Controles.Especialista.contSubirArchivo" %>











<div class="container colorBlanco">
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">Carnet</h5>
        </div>
        <div class="card-body">
            <br />
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>   Instrucciones:
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        Para subir el documento tome en cuenta las siguientes recomendaciones.
                       <ul>
                           <li>Debe de ser un documento .pdf</li>
                           <li>No debe de pesar más de 1 Mb</li>
                           <li>Por nombre llevara la <strong>matrícula</strong></li>
                       </ul>
                    </div>
                </div>
            </div>
            <br />
            <div class="row align-items-center">
                <div class="col-12 col-md-4">
                    <asp:TextBox ID="TextBoxNombre" runat="server" CssClass="form-control"  TextMode="Number" required="Se necesita una matrícula"></asp:TextBox>
                </div>
                <div class="col-12 col-md-4">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="" />
                </div>
                <div class="col-12 col-md-4">
                    <asp:Button ID="btnUpload" runat="server" Text="Subir" CssClass="btn btn-success btn-lg btn-block" disabled="disabled" OnClick="UploadFile" />
                </div>
            </div>
            <div id="PanelAviso" class="ocultar">
                <div class="alert alert-warning" role="alert">
                    <h4 class="alert-heading">Error!</h4>
                    <p>Al parecer hay un problema con tu archivo, verificalo.</p>
                    <hr>
                    <p class="mb-0">Consulta las indicaciones.</p>
                </div>
            </div>
            <br />
            <div id="PanelNotificacion" class="ocultar">
                <div class="alert alert-success" role="alert">
                    Carga exitosa
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    (function () {



        $("#ContentPlaceHolder1_contSubirArchivo_FileUpload1").change(function () {
            //limpiamos todo

            var fileExtension = ['pdf'];//  var fileExtension = ['jpeg', 'jpg', 'png', 'gif', 'bmp'];
            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                $('#PanelAviso').removeClass('ocultar').addClass('mostrar');
                $('#ContentPlaceHolder1_contSubirArchivo_btnUpload').prop("disabled", true);
            } else {
                var fileSize = this.files[0].size;//obtenemos el valor menos un archivo
                var lleno = $("#ContentPlaceHolder1_contSubirArchivo_TextBoxNombre").val();
              
                if (fileSize < 2000000 ) {
                    $('#PanelAviso').removeClass('mostrar').addClass('ocultar');
                    $('#ContentPlaceHolder1_contSubirArchivo_btnUpload').prop("disabled", false);
                } else {
                    $('#PanelAviso').removeClass('ocultar').addClass('mostrar');
                    $('#ContentPlaceHolder1_contSubirArchivo_btnUpload').prop("disabled", true);
                    
                }
            }
        });





    })();
</script>
