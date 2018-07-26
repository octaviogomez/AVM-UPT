<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contModificar.ascx.cs" Inherits="AVM.Controles.Admin.contModificar" %>

<div class="card">
    <br />
    <h5 class="card-header"><span class=""></span>Información del Especialista</h5>
    <div class="form-row">
        <div class="form-group col-md-4">
            <strong>Nombre: </strong>
            <asp:TextBox ID="Nombre1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vNombre1" runat="server" ControlToValidate="Nombre1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />
        </div>
        <div class="form-group col-md-4">
            <strong>Apellidos: </strong>
            <asp:TextBox ID="Apellido1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vApellido1" runat="server" ControlToValidate="Nombre1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />
        </div>
        <div class="form-group col-md-4">
            <strong>Sexo:</strong>
            <asp:DropDownList ID="DropDownListGenero" runat="server" CssClass="form-control">

                <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                <asp:ListItem Text="Femenino" Value="0"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <strong>Dirección:</strong>
            <asp:TextBox ID="Direccion1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vDireccion1" runat="server" ControlToValidate="Direccion1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />

        </div>
        <div class="form-group col-md-4">
            <strong>Correo:</strong>
            <asp:TextBox ID="Correo1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vCorreo1" runat="server" ControlToValidate="Correo1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />

        </div>
        <div class="form-group col-md-4">
            <strong>Teléfono:</strong>
            <asp:TextBox ID="Telefono1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vTelefono1" runat="server" ControlToValidate="Telefono1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />

        </div>
    </div>
    <div class="form-row">

        <div class="form-group col-md-4">
            <strong>Contraseña:</strong>
            <asp:TextBox ID="Clave1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vClave1" runat="server" ControlToValidate="Clave1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />

        </div>
        <div class="form-group col-md-4">
            <strong>Céluda:</strong>
            <asp:TextBox ID="Cedula1" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
               <asp:RequiredFieldValidator ID="vCedula1" runat="server" ControlToValidate="Cedula1" ValidationGroup="cambio" ErrorMessage="Compo requerido" CssClass="alert-warning" />

        </div>
        <div class="form-group col-md-4">
            <strong>Especialidad:</strong>
            <asp:DropDownList ID="DropDownListEspecilaidadesCambio" runat="server" CssClass="form-control">
        
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
            <asp:LinkButton ID="LinkButtonModificar" runat="server" CssClass="btn btn-warning btn-lg btn-block" OnClick="LinkButtonModificar_Click">Actualizar</asp:LinkButton>
       <asp:TextBox ID="NumeroControl1" runat="server" Visible="false"></asp:TextBox>
             </div>
        <div class="col-4">
        </div>
    </div>
     
            




    <br />
</div>
