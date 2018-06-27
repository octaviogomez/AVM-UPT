<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contInfroUsuario.ascx.cs" Inherits="AVM.Controles.Especialista.contInfroUsuario" %>
<div class="card">
    <ul class="list-group list-group-flush">
        <li class="list-group-item">Numero de control:
            <strong>
                <asp:Label ID="LabelNumeroControl" runat="server" Text=""></asp:Label></strong>
        </li>
        <li class="list-group-item">Contraseña:
       <s>     <asp:Label ID="LabelClave" runat="server" Text=""></asp:Label></s></li>
        <li class="list-group-item">Nombre: 
                        <strong>
                            <asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label></strong>
        </li>
        
        <li class="list-group-item">Sexo:
                        <strong>
                            <asp:Label ID="LabelSexo" runat="server" Text=""></asp:Label></strong>
        </li>
        <li class="list-group-item">Fecha nacimiento:  
                         <strong>
                             <asp:Label ID="LabelFechaNacimiento" runat="server" Text=""></asp:Label></strong>
        </li>
        <li class="list-group-item">Carrera:                  
                         <strong>
                             <asp:Label ID="LabelCarrera" runat="server" Text=""></asp:Label></strong>
        </li>
        <li class="list-group-item">Número de seguro social:        
                         <strong>
                             <asp:Label ID="LabelNoSeguro" runat="server" Text=""></asp:Label></strong>
        </li>
        <li class="list-group-item">Curp: 
                      <strong>
                          <asp:Label ID="LabelCurp" runat="server" Text=""></asp:Label></strong>

        </li>
         <li class="list-group-item">Año ingreso: 
                      <strong>
                          <asp:Label ID="LabelIngreso" runat="server" Text=""></asp:Label></strong>

        </li>

    </ul>
</div>
<script>
    (function () {
      

    })();
</script>
