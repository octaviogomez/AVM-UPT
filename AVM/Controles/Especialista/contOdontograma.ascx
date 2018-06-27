<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contOdontograma.ascx.cs" Inherits="AVM.Controles.Especialista.contOdontograma" %>







<img class="img-fluid" alt="Responsive image" src="../../Imagenes/odontograma.jpg">

<div class="card-body">
    <h5 class="card-title">Llenado de odontograma</h5>
    <div class="form-row">
        <div class="form-group col-md-3">
            <label for="NumeroDiente">Número de diente</label>
            <asp:TextBox ID="NumeroDiente" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-group col-md-9">
            <label for="DiagnosticoDiente">Diagnostico</label>
            <asp:TextBox ID="DiagnosticoDiente" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>


    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="Peso">Tratamiento</label>
            <asp:TextBox ID="TratamientoDiente" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="ComentarioDiente">Comentario</label>
            <asp:TextBox ID="ComentarioDiente" runat="server" Font-Size="Medium" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>

    <div class="row">
    <div class="col-4">

    </div>
    <div class="col-4">

    </div>
    <div class="col-4">
        <asp:Button ID="AgregarOdontograma" runat="server" Text="Agregar" class="btn btn-success btn-lg btn-block" OnClick="AgregarOdontograma_Click"/>
    </div>
</div>

    <br />

    
<div class="container">

    <asp:GridView ID="GridViewOdontogtrama" runat="server" CssClass="highlight centered responsive-table table table-striped table table-hover" Font-Size="Medium">
    </asp:GridView>
</div>

</div>








