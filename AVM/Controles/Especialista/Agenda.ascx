<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Agenda.ascx.cs" Inherits="AVM.Controles.Especialista.Agenda" %>
<div class="container colorBlanco">

    <div class="card">
        <h5 class="card-header">Citas</h5>
        <div class="card-body">
              <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="oi oi-info"></span>   Información
                    </a>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                    <div class="card-body">
                        <ol>
                            <li>Para eliminar una <strong>Cita</strong> identifiquela, y despues de click en    <span class="oi oi-trash"> </span></li> 
                              <li>Para realizar una <strong>Cita</strong> identifiquela, y despues de click en      <span class="oi oi-circle-check"></span></li> 
                        </ol>
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <asp:Panel ID="PanelListadoCitas" runat="server" Height="450px" ScrollBars="Vertical" CssClass="border border-primary">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewCitasPasiente" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" OnRowCommand="GridView1_OnRowCommand">
                        <Columns>
                            <asp:TemplateField ShowHeader="False" HeaderText="IdCita" Visible="false" ControlStyle-CssClass="">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                                     <asp:Label ID="LabelMatri" Visible="false" runat="server" Text='<%# Eval("Matricula")%>'></asp:Label>
                                      <asp:Label ID="LabelTipo" Visible="false" runat="server" Text='<%# Eval("Usuario")%>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>

                 



                                 <asp:TemplateField ShowHeader="False" HeaderText="Realizar">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonRealizar" runat="server" CommandName="Realizar" CssClass="form-control btn btn-outline-success">
                                     <span class="oi oi-circle-check"></span>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                            <asp:BoundField Visible="true" DataField="Estado" HeaderText="Estado" />
                            <asp:BoundField Visible="true" DataField="Nombre" HeaderText="Nombre" ItemStyle-Font-Bold="true" />
                            <asp:BoundField Visible="true" DataField="Matricula" HeaderText="Matricula" />
                            <asp:BoundField Visible="true" DataField="Fecha" HeaderText="Fecha" />
                            <asp:BoundField Visible="true" DataField="Horario" HeaderText="Horario" />
                            <asp:BoundField Visible="true" DataField="Usuario" HeaderText="Usuario" />
                            <asp:TemplateField ShowHeader="False" HeaderText="Cancelación">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonCancelar" runat="server" CommandName="Cancelar" CssClass="form-control btn btn-outline-danger">
                                      <span class="oi oi-trash"></span>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
            <br />
        </div>
    </div>
</div>
<br />

<!-- Modal -->
<div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Esta seguro de eliminar la cita ?
            </div>
            <div class="modal-footer">
                <asp:TextBox ID="TextBoxPkReservacion" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonEliminarCita" runat="server" Text="Eliminar " CssClass="btn btn-danger" OnClick="ButtonEliminarCita_Click" />
            </div>
        </div>
    </div>
</div>
