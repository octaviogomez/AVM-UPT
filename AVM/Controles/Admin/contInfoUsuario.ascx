<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contInfoUsuario.ascx.cs" Inherits="AVM.Controles.Admin.contInfoUsuario" %>


<div class="card">
    <br />
    <h5 class="card-header"><span class=""></span>Información del Especialista</h5>
    <div class="form-row">
        <div class="form-group col-md-4">
            <strong>Nombre: </strong>
            <asp:TextBox ID="Nombre1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <strong>Apellidos: </strong>
            <asp:TextBox ID="Apellido1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <strong>Sexo:</strong>
            <asp:DropDownList ID="DropDownListGenero" runat="server" CssClass="form-control" Enabled="false">
                <asp:ListItem Text="Genero" Value="2"></asp:ListItem>
                <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                <asp:ListItem Text="Femenino" Value="0"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <strong>Dirección:</strong>
            <asp:TextBox ID="Direccion1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <strong>Correo:</strong>
            <asp:TextBox ID="Correo1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <strong>Teléfono:</strong>
            <asp:TextBox ID="Telefono1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>

        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-3">
            <strong>Numero de control:</strong>
            <asp:TextBox ID="NumeroControl1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
            <strong>Contraseña:</strong>
            <asp:TextBox ID="Clave1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
            <strong>Céluda:</strong>
            <asp:TextBox ID="Cedula1" runat="server" Font-Size="Medium" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
            <strong>Especialidad:</strong>
            <asp:DropDownList ID="DropDownListEspecilaidadesCambio" runat="server" CssClass="form-control" Enabled="false">
                <asp:ListItem Text="Especialidad" Value="0"></asp:ListItem>
                <asp:ListItem Text="Médico" Value="1"></asp:ListItem>
                <asp:ListItem Text="Dental" Value="2"></asp:ListItem>
                <asp:ListItem Text="Psicologico" Value="3"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="row">
        <div class="col-4">
        </div>
        <div class="col-4">
            <asp:LinkButton ID="LinkButtonModificar" runat="server" CssClass="btn btn-warning btn-lg btn-block" OnClick="LinkButtonModificar_Click">Modificar</asp:LinkButton>
        </div>
        <div class="col-4">
        </div>
    </div>




    <br />
</div>


<script>
    (function () {


    })();
</script>
