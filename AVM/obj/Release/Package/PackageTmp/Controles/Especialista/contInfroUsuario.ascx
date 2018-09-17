<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contInfroUsuario.ascx.cs" Inherits="AVM.Controles.Especialista.contInfroUsuario" %>
<div class="card">
    <ul class="list-group list-group-flush">
        <li class="list-group-item">
            <strong>Numero de control:</strong>
                <asp:Label ID="LabelNumeroControl" runat="server" Text=""></asp:Label>
        </li>
        <li class="list-group-item">
            <strong>Contraseña:</strong>
            <s>
                <asp:Label ID="LabelClave" runat="server" Text=""></asp:Label></s></li>
        <li class="list-group-item">
            <strong>Nombre: </strong>
            <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label>
        </li>

        <li class="list-group-item">
            <strong>Sexo:</strong>
            <asp:Label ID="LabelSexo" runat="server" Text=""></asp:Label>
        </li>
        <li class="list-group-item">
            <strong>Fecha nacimiento:</strong>
            <asp:Label ID="LabelFechaNacimiento" runat="server" Text=""></asp:Label>
        </li>
        <li class="list-group-item">
            <strong>Carrera:</strong>
            <asp:Label ID="LabelCarrera" runat="server" Text=""></asp:Label>
        </li>
        <li class="list-group-item">
            <strong>Número de seguro social:</strong>
            <asp:Label ID="LabelNoSeguro" runat="server" Text=""></asp:Label>
        </li>
        <li class="list-group-item">
            <strong>Curp:</strong>
            <asp:Label ID="LabelCurp" runat="server" Text=""></asp:Label>

        </li>
        <li class="list-group-item">
            <strong>Año ingreso:</strong>
            <asp:Label ID="LabelIngreso" runat="server" Text=""></asp:Label>

        </li>

    </ul>
</div>
<script>
    (function () {


    })();
</script>
