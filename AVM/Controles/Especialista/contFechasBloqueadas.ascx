<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contFechasBloqueadas.ascx.cs" Inherits="AVM.Controles.Especialista.contFechasBloqueadas" %>
<div class="container colorBlanco">
            <asp:Panel ID="PanelListadoCitas" runat="server" Height="450px" ScrollBars="Vertical" CssClass="border border-primary">
                <div class="table-responsive">
                    <asp:GridView ID="GridViewFechasBloqueadas" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="true" OnPageIndexChanging="GridViewFechasBloqueadas_PageIndexChanging" AutoGenerateColumns="false" OnRowCommand="GridView1_OnRowCommand" >
                       <%----%>
                        <Columns>
                            <asp:TemplateField ShowHeader="False" HeaderText="Id" Visible="false" ControlStyle-CssClass="">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("Id")%>'></asp:Label>
                                </ItemTemplate>
                                
                            </asp:TemplateField>

                 
                            <asp:BoundField Visible="true" DataField="Fecha" HeaderText="Fecha" />
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
  
<br />

<!-- Modal -->
<div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
               
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Esta seguro de eliminar la fecha bloqueada?
            </div>
            <div class="modal-footer">
                <asp:TextBox ID="TextBoxPkReservacion" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonEliminarCita" runat="server" Text="Eliminar " CssClass="btn btn-danger" OnClick="ButtonEliminarCita_Click" />
                <%--OnClick="ButtonEliminarCita_Click"--%>
            </div>
        </div>
    </div>
</div>