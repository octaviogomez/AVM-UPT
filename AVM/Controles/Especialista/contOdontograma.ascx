<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contOdontograma.ascx.cs" Inherits="AVM.Controles.Especialista.contOdontograma" %>







<img class="img-fluid" alt="Responsive image" src="../../Imagenes/odontograma.jpg">

<div class="card-body">
    <h5 class="card-title">Llenado de odontograma</h5>
    <div class="form-row">
        <div class="form-group col-md-3">
            <label for="NumeroDiente">Número de diente</label>
            <asp:TextBox ID="NumeroDiente" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vNumeroDiente" runat="server" ControlToValidate="NumeroDiente" ValidationGroup="odonto" ErrorMessage="Requerido" CssClass=" alert-warning " />
        </div>
        <div class="form-group col-md-9">
            <label for="DiagnosticoDiente">Diagnóstico</label>
            <asp:TextBox ID="DiagnosticoDiente" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vDiagnosticoDiente" runat="server" ControlToValidate="DiagnosticoDiente" ValidationGroup="odonto" ErrorMessage="Requerido" CssClass=" alert-warning " />
        </div>
    </div>


    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="Peso">Tratamiento</label>
            <asp:TextBox ID="TratamientoDiente" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vTratamientoDiente" runat="server" ControlToValidate="TratamientoDiente" ValidationGroup="odonto" ErrorMessage="Requerido" CssClass=" alert-warning " />
        </div>
        <div class="form-group col-md-6">
            <label for="ComentarioDiente">Comentario</label>
            <asp:TextBox ID="ComentarioDiente" runat="server" Font-Size="Medium" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="vComentarioDiente" runat="server" ControlToValidate="ComentarioDiente"  ValidationGroup="odonto" ErrorMessage="Requerido" CssClass=" alert-warning " />
    
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-md-4">
        </div>
        <div class="col-12 col-md-4">
        </div>
        <div class="col-12 col-md-4">
            <asp:Button ID="AgregarOdontograma" runat="server" Text="Agregar" class="btn btn-success btn-lg btn-block" OnClick="AgregarOdontograma_Click" ValidationGroup="odonto" />
        </div>
    </div>

    <br />


    <div class="container">
        <div class="table-responsive">
            <asp:GridView ID="GridViewOdontogtrama" runat="server" CssClass="table table-striped" Font-Size="Medium">
            </asp:GridView>
        </div>
    </div>

</div>








