<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contAdminAlumnos.ascx.cs" Inherits="AVM.Controles.Especialista.contAdminAlumnos" %>

            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-12 col-md-4" >
                            <label for="TextBoxidUsuario">Matrícula:</label>
                            <asp:TextBox ID="TextBoxidBuscar" runat="server" CssClass="form-control" TextMode="Number" ></asp:TextBox>
                        </div>

                        <div class="col-12 col-md-4">
                            <br />
                            <asp:Button ID="ButtonBuscar" runat="server" Text="Buscar" CssClass="btn btn-success btn-lg btn-block" OnClick="ButtonBuscar_Click" />
                        </div>
                        <div class="col-12 col-md-4">
                            <label for="buscar">Filtrado:</label>
                             <input id="buscar" type="text" class="form-control" placeholder="Escriba algo para filtrar" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <asp:Panel ID="PanelListado" runat="server" Height="450px" ScrollBars="Vertical" CssClass="border border-primary">
                <div class="">
                    <asp:GridView ID="GridViewListado" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="false" OnRowCommand="GridView1_OnRowCommand">
                        <Columns>
                            <asp:TemplateField ShowHeader="False" HeaderText="IdCita" Visible="false" ControlStyle-CssClass="">
                                <ItemTemplate>
                                    <asp:Label ID="LabelId" Visible="false" runat="server" Text='<%# Eval("alu_NumControl")%>'></asp:Label>

                                </ItemTemplate>
                            </asp:TemplateField>




                            <asp:BoundField Visible="false" DataField="alu_ID" HeaderText="alu_ID" />
                            <asp:BoundField Visible="true" DataField="alu_NumControl" HeaderText="Matrícula" ItemStyle-Font-Bold="true" />
                            <asp:BoundField Visible="true" DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField Visible="true" DataField="alu_Sexo" HeaderText="Sexo" />
                            <asp:BoundField Visible="true" DataField="alu_Password" HeaderText="Contraseña" />
                            <asp:BoundField Visible="true" DataField="FechaNacimiento" HeaderText="FechaNacimiento" />
                            <asp:BoundField Visible="true" DataField="Descripcion" HeaderText="Carrera" />
                            <asp:BoundField Visible="true" DataField="NoSeguro" HeaderText="NoSeguro" />
                            <asp:BoundField Visible="true" DataField="AnioIngreso" HeaderText="AnioIngreso" />


                            <asp:TemplateField ShowHeader="False" HeaderText="Consulta">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonConsulta" runat="server" CommandName="Consulta" CssClass="form-control btn btn-outline-info" ToolTip="Consulta general del usuario">
                                     <span class="oi oi-person"></span>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField ShowHeader="False" HeaderText="Modifcar" Visible="false">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonModificacion" runat="server" CommandName="Modifcar" CssClass="form-control btn btn-outline-warning" ToolTip="Modificación del usuario">
                                     <span class="oi oi-pencil"></span>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField ShowHeader="False" HeaderText="Baja">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonBaja" runat="server" CommandName="Baja" CssClass="form-control btn btn-outline-danger" ToolTip="Baja definitiva del usuario">
                                      <span class="oi oi-trash"></span>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
            <br />

   

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
                Esta seguro de eliminar este alumno?
            </div>
            <div class="modal-footer">
                <asp:TextBox ID="TextBoxIdUsuario" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <asp:Button ID="ButtonEliminarCita" runat="server" Text="Eliminar " CssClass="btn btn-danger" OnClick="ButtonEliminarCita_Click" />
            </div>
        </div>
    </div>
</div>

<script>
    (function () {
        document.querySelector("#buscar").onkeyup = function () {
            $TableFilter("#ContentPlaceHolder1_contAdminAlumnos_GridViewListado", this.value);
           //this.vale es igual al valor ingresado
        }

        $TableFilter = function (id, value) {
          
            var rows = document.querySelectorAll(id + ' tbody tr');
         
            for (var i = 0; i < rows.length; i++) {
                var showRow = false;

                var row = rows[i];
               
                row.style.display = 'none';

                for (var x = 0; x < row.childElementCount; x++) {
                    if (row.children[x].textContent.toLowerCase().indexOf(value.toLowerCase().trim()) > -1) {
                        showRow = true;
                        break;
                    }
                }

                if (showRow) {
                    row.style.display = null;
                }
            }
        }
    })();
</script>
