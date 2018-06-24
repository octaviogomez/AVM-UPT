<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Perfil.ascx.cs" Inherits="AVM.Controles.Usuario.Perfil" %>
<div class="container colorBlanco">



    <div class="card">
        <h5 class="card-header">Información del usuario</h5>
        <div class="card-body">
            <asp:Panel ID="PanelAviso" runat="server">
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Aviso!!</strong> Verifica tus datos
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
  </button>
                </div>
            </asp:Panel>

                 <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>   Información:
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ul>
                            <li>Para actualizar su contraseña de click en  <span class="oi oi-transfer"></span></li> 
                            <li>Para agrear o nodificar su <strong>Número de Seguridad Social</strong> o su <strong>CURP</strong> de click <span class="oi oi-reload"></span></li>
                        </ul>
                        <br />
                    </div>
                </div>
            </div>


            <div class="card">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Numero de control:
                        <strong>
                            <asp:Label ID="LabelNumeroControl" runat="server" Text=""></asp:Label></strong>
                    </li>
                    <li class="list-group-item">
                        <asp:LinkButton ID="LinkButtonClave" runat="server"  ToolTip="Cambiar contraseña" data-toggle="modal" data-target="#Contrasena"> <span class="oi oi-transfer"></span></asp:LinkButton>
                        Contraseña: 
                        <asp:Label ID="LabelClave" runat="server" Text=""></asp:Label>

                    </li>
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
                    <li class="list-group-item">
                        <asp:LinkButton ID="LinkButtonNoSocial" runat="server" ToolTip="Actilizar Número de seguro social" data-toggle="modal" data-target="#NumeroSocial"> <span class="oi oi-reload"></span></asp:LinkButton>
                        Número de seguro social:        
                         <strong>
                             <asp:Label ID="LabelNoSeguro" runat="server" Text=""></asp:Label></strong>
                    </li>
                    <li class="list-group-item">
                        <asp:LinkButton ID="LinkButtonCrup" runat="server"  ToolTip="Actilizar CURP" data-toggle="modal" data-target="#Curp"> <span class="oi oi-reload"></span></asp:LinkButton>
                        Curp: 
                      <strong>
                          <asp:Label ID="LabelCurp" runat="server" Text=""></asp:Label></strong>

                    </li>

                </ul>
            </div>

        </div>
    </div>

</div>


<div class="modal fade" id="NumeroSocial" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col">NSS:</div>
                    <div class="col">
                        <asp:TextBox ID="textboxNoSocial" runat="server" ValidationGroup="ValidacionSocial" TextMode="Number" min="8" MaxLength="20"></asp:TextBox>
                    </div>
                    <div class="col">
                        <a href="http://www.imss.gob.mx/tramites/imss02008" target="_blank">Consulta</a>
                    </div>

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonActualizarNoSocial" runat="server" Text="Actulizar" CssClass="btn btn-warning" OnClick="ButtonActualizarNoSocial_Click" />

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Curp" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col">CURP:</div>
                    <div class="col">
                        <asp:TextBox ID="textboxCurp" runat="server" pattern="^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$" title="No es correcto el formato"></asp:TextBox>
                    </div>
                    <div class="col">
                        <a href="https://consultas.curp.gob.mx/CurpSP/inicio2_2.jsp" target="_blank">Consulta</a>
                    </div>

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonActulizarCurp" runat="server" Text="Actulizar" CssClass="btn btn-warning" OnClick="ButtonActulizarCurp_Click" />

            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="Contrasena" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col">Nueva contraseña:</div>
                    <div class="col">
                        <asp:TextBox ID="textboxClave1" runat="server" pattern="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,40})$" title="8 a 10 caractéres, al menos un dígito y un carácter alfabético"></asp:TextBox>
                    </div>
                    <div class="col">
                    </div>
                </div>
                <div class="row">
                    <div class="col">Repetir</div>
                    <div class="col">
                        <asp:TextBox ID="textboxClave2" runat="server" pattern="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,40})$" title="8 a 10 caractéres, al menos un dígito y un carácter alfabético"></asp:TextBox>
                    </div>
                    <div class="col">
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonContrasena" runat="server" Text="Actulizar" CssClass="btn btn-warning" OnClick="ButtonContrasena_Click" />

            </div>
        </div>
    </div>
</div>
