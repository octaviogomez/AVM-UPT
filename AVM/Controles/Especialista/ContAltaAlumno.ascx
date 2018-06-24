<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContAltaAlumno.ascx.cs" Inherits="AVM.Controles.Especialista.ContAltaAlumno" %>
<br />
<div class="form-row">
    <div class="form-group col-md-3">
        <label for="Nombre">Nombre</label>
        <asp:TextBox ID="Nombre" runat="server" class="form-control" placeholder="Nombre"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nombre" ValidationGroup="alta" ErrorMessage="Campo vacio" CssClass=" alert-warning" />
    </div>
    <div class="form-group col-md-3">
        <label for="ApellidoP">Apellido Paterno</label>
        <asp:TextBox ID="ApellidoP" runat="server" class="form-control" placeholder="Apellido paterno"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ApellidoP" ValidationGroup="alta" ErrorMessage="Campo vacio" CssClass=" alert-warning" />

    </div>
    <div class="form-group col-md-3">
        <label for="ApellidoP">Apellido Materno</label>
        <asp:TextBox ID="ApellidoM" runat="server" class="form-control" placeholder="Apellido Materno"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ApellidoM" ValidationGroup="alta" ErrorMessage="Campo vacio" CssClass=" alert-warning" />

    </div>
    <div class="form-group col-md-3">

        <label for="GeneroList">Género</label>
        <asp:DropDownList ID="GeneroList" runat="server" CssClass="form-control">
            <asp:ListItem Text="Mujer" Value="F"></asp:ListItem>
            <asp:ListItem Text="Hombre" Value="M"></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>

<div class="form-row">
    <div class="form-group col-md-3">
        <label for="NumeroControl">Numero de control</label>
        <asp:TextBox ID="NumeroControl" runat="server" Font-Size="Medium" CssClass="form-control" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldtxtNewName" runat="server" ControlToValidate="NumeroControl" ValidationGroup="alta" ErrorMessage="Campo vacio" CssClass=" alert-warning" />
    </div>
    <div class="form-group col-md-3">
        <label for="FechaNacimiento">Fecha de nacimiento</label>
        <asp:TextBox ID="FechaNacimiento" runat="server" Font-Size="Medium" TextMode="Date" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group col-md-3">
        <label>Carreras:</label>
        <asp:DropDownList ID="droplistCarrera" runat="server" CssClass="form-control">
        </asp:DropDownList>
    </div>

    <div class="form-group col-md-3">
        <br />

        <asp:Button ID="Guardar" runat="server" Text="Guardar" CssClass="btn btn-success btn-lg btn-block " OnClick="Guardar_Click" ValidationGroup="alta" />
    </div>
</div>
