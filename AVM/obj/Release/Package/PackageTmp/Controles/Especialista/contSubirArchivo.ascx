<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contSubirArchivo.ascx.cs" Inherits="AVM.Controles.Especialista.contSubirArchivo" %>



<div class="row">
    <div class="col-4">
    </div>
    <div class="col-4">
    </div>
    <div class="col-4">
        <asp:HyperLink ID="HyperLinkVistaCompleta" runat="server" Target="_blank" CssClass="badge badge-pill badge-info">Vista con el navegador</asp:HyperLink>
    </div>
</div>
<br />
<div class="row">

    <div class="col-12 col-md-6">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="" />
    </div>
    <div class="col-12 col-md-6">
        <asp:Button ID="btnUpload" runat="server" Text="Subir" CssClass="btn btn-success btn-lg btn-block" OnClick="btnUpload_Click" disabled="disabled" />
    </div>
</div>
<div class="row align-items-center">
    <div class="col-12  ">

        <div class="table-responsive">
            <table class="table">
                <asp:Literal ID="PDFCarnet" runat="server"></asp:Literal>
            </table>
        </div>


    </div>



</div>
<br />
<script>
    (function () {

        var bandera = $("#PanelAviso");
        console.log(bandera);
        $("#ContentPlaceHolder1_contSubirArchivo_FileUpload1").change(function () {
            //limpiamos todo
            var fileExtension = ['pdf'];//  var fileExtension = ['jpeg', 'jpg', 'png', 'gif', 'bmp'];
            if ($.inArray($(this).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
                $('#PanelAviso').removeClass('ocultar').addClass('mostrar');
                $('#ContentPlaceHolder1_contSubirArchivo_btnUpload').prop("disabled", true);
            } else {
                var fileSize = this.files[0].size;//obtenemos el valor menos un archivo
                if (fileSize < 2000000) {
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
