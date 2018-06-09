<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Agenda.ascx.cs" Inherits="AVM.Controles.Usuario.Agenda" %>
<div class="container colorBlanco">

    <div class="card">
        <h5 class="card-header">Consulta de citas</h5>
        <div class="card-body">
            <h5 class="card-title">Instrucciones</h5>
            <p class="card-text">Para eliminar una cita solo de clic en cancelar.</p>
            <br />
            <asp:Panel ID="PanelListadoCitas" runat="server" Height="450px" ScrollBars="Vertical" CssClass="border border-primary">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewCitasPasiente" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" OnRowCommand="GridView1_OnRowCommand">
                        <Columns>
                            <asp:TemplateField ShowHeader="False" HeaderText="IdCita" Visible="false" ControlStyle-CssClass="">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField Visible="false" DataField="Id" HeaderText="Id" />
                            <asp:BoundField Visible="true" DataField="Nombre" HeaderText="Nombre" ItemStyle-Font-Bold="true" />
                            <asp:BoundField Visible="true" DataField="Apellido" HeaderText="Apellido" />
                            <asp:BoundField Visible="true" DataField="Categoría" HeaderText="Categoría" />
                            <asp:BoundField Visible="true" DataField="Fecha" HeaderText="Fecha" />
                            <asp:BoundField Visible="true" DataField="Horario" HeaderText="Horario" />
                            <asp:BoundField Visible="true" DataField="Estado" HeaderText="Estado" />
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
                <h5 class="modal-title" id="exampleModalLabel">Eliminar cita</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Esta seguro de eliminar la reservación para <strong>
                    <asp:Label ID="LabelNombreAlumno" runat="server" Text=" "></asp:Label></strong>

            </div>
            <div class="modal-footer">
                <asp:TextBox ID="TextBoxPkReservacion" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonEliminarCita" runat="server" Text="Eliminar " CssClass="btn btn-danger" OnClick="ButtonEliminarCita_Click" />
            </div>
        </div>
    </div>
</div>
