<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubirCarnet.ascx.cs" Inherits="AVM.Controles.Usuario.SubirCarnet" %>
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
                        <span class="oi oi-info"></span>Instrucciones:
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
                           <li>Por nombre llevara su número de credencial</li>
                       </ul>
                    </div>
                </div>
            </div>
            <br />
            <br />
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="" />
            <br />
            <br />
            <br />


            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <asp:Button ID="btnUpload" runat="server" Text="Subir" CssClass="btn btn-success btn-lg btn-block" OnClick="btnUpload_Click" disabled="disabled" />
                </div>
                <div class="col"></div>
            </div>
         
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
<script>
    (function () {



        $("#ContentPlaceHolder1_SubirCarnet_FileUpload1").change(function () {
            var fileExtension = ['pdf'];//  var fileExtension = ['jpeg', 'jpg', 'png', 'gif', 'bmp'];

            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                $('#PanelAviso').removeClass('ocultar').addClass('mostrar');
                $('#ContentPlaceHolder1_SubirCarnet_btnUpload').prop("disabled", true); 
            } else {
                $('#PanelAviso').removeClass('mostrar').addClass('ocultar');
                $('#ContentPlaceHolder1_SubirCarnet_btnUpload').prop("disabled", false); 
            }
       
           
        });


     
    })();
</script>