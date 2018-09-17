<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contAltaUsuario.ascx.cs" Inherits="AVM.Controles.Admin.contAltaUsuario" %>

<div class="container colorBlanco">
    <div class="card">
        <div class="card-header">
            Nuevo Usuario
        </div>
        <div class="card-body">
            <h5 class="card-title">Datos Generales</h5>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="Nombre">Nombre</label>
                    <asp:TextBox ID="Nombre" runat="server" placeholder="Juan Roma" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vNombre" runat="server" ControlToValidate="Nombre" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />
                </div>
                <div class="form-group col-md-4">
                    <label for="Apellido">Apellido</label>
                    <asp:TextBox ID="Apellido" runat="server" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vApellido" runat="server" ControlToValidate="Apellido" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />
                </div>
                <div class="form-group col-md-4">
                    <label for="GeneroList">Genero</label>
                    <asp:DropDownList ID="GeneroList" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Mujer" Value="0" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Hombre" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="Direccion">Dirección</label>
                    <asp:TextBox ID="Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vDireccion" runat="server" ControlToValidate="Direccion" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />
                </div>
                <div class="form-group col-md-4">
                    <label for="Correo">Correo</label>
                    <asp:TextBox ID="Correo" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vCorreo" runat="server" ControlToValidate="Correo" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />

                </div>
                <div class="form-group col-md-4">
                    <label for="Telefono">Telefono</label>
                    <asp:TextBox ID="Telefono" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vTelefono" runat="server" ControlToValidate="Telefono" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="Fecha">Fecha</label>
                    <asp:TextBox ID="TextBoxFecha" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vTextBoxFecha" runat="server" ControlToValidate="TextBoxFecha" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />
                </div>

            </div>
            <h5 class="card-title">Datos Especificos</h5>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="NumeroControl">Número de control</label>
                    <asp:TextBox ID="NumeroControl" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vNumeroControl" runat="server" ControlToValidate="NumeroControl" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />

                </div>
                <div class="form-group col-md-4">
                    <label for="Clave">Contraseña</label>
                    <asp:TextBox ID="Clave" runat="server" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="vClave" runat="server" ControlToValidate="Clave" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />

                </div>
                <div class="form-group col-md-4">
                    <label for="Cedula">Cedula</label>
                    <asp:TextBox ID="Cedula" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vCedula" runat="server" ControlToValidate="Cedula" ValidationGroup="alta" ErrorMessage="Compo requerido" CssClass="alert-warning" />

                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="RolEspecialista">Especialidad</label>
                    <asp:DropDownList ID="RolEspecialista" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Médico" Value="1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Dental" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Psicologico" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-4">
                    <label for="Rol">Rol</label>
                    <asp:DropDownList ID="Rol" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Especialista" Value="2" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Administrador" Value="3"></asp:ListItem>

                    </asp:DropDownList>
                </div>
            </div>
            <br />
            <div class="form-row">
                <div class="col-12 col-md-4"></div>
                <div class="col-12 col-md-4">
                    <asp:LinkButton ID="LinkButtonGuardar" runat="server" OnClick="LinkButtonGuardar_Click" CssClass="btn btn-success btn-lg btn-block" ValidationGroup="alta">Guardar</asp:LinkButton>
                </div>
                <div class="col-12 col-md-4"></div>
            </div>
            <br />
        </div>
    </div>
</div>
