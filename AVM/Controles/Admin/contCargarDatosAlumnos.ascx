<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contCargarDatosAlumnos.ascx.cs" Inherits="AVM.Controles.Admin.contCargarDatosAlumnos" %>
<div class="container colorBlanco">
    <div id="accordion">
        <div class="card">
            <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Instrucciones:
                    </button>
                </h5>
            </div>
            <div class="Row">
                <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    <p style="font-size: medium">1.-Seleccione un archivo Excel. </p>
                    <p style="font-size: medium">2.-Debe de ser menos 1mb </p>
                    <p style="font-size: medium">3.-Puede nombrar el archivo o dejar en blanco.</p>
                    <p style="font-size: medium">Nota: Puede reemplazar archivos</p>
                </div>
            </div>
            </div>
 
            <div class="form-row">
                <div class="col-md-5 mb-5">
                   
                   <form>
  <div class="form-group">
    <label for="exampleFormControlFile1">Archivo:</label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
  </div>
</form>

                </div>
               

               
            </div>

            <div class="form-group">
                <div class="form-row">
                <div class="col-md-5 mb-5">
                     <asp:Button ID="btnUpload" runat="server" Text="Actualizar" OnClick="btnUpload_Click" CssClass="btn btn-info"  />
                </div>
                <div class="col-md-5 mb-5">
                     <asp:Button ID="Importar" runat="server" Text="Cargar a la base de datos" OnClick="Importar_Click" CssClass="btn btn-info"  />
                </div>
                    </div>

            </div>
   
            
        </div>

        <!--inicia la tabla-->
        <asp:RadioButtonList ID="rbHDR" runat="server" Visible="False">
            <asp:ListItem Text = "Sí" Value = "Yes" Selected = "True" ></asp:ListItem>
            <asp:ListItem Text = "No" Value = "No"></asp:ListItem>
        </asp:RadioButtonList>
        <asp:Panel
	ID="Panel1"
	runat="server"
	Height="400px"
	ScrollBars="Vertical"
	Width="100%"> 
        <asp:GridView ID="GridView1" runat="server"      class="highlight" EnableModelValidation="True" AutoGenerateColumns="false" >
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblNumControl" runat="server" Text='<%# Eval("alu_NumControl") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluNombre" runat="server" Text='<%# Eval("alu_Nombre") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluApeP" runat="server" Text='<%# Eval("alu_ApePaterno") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluApeM" runat="server" Text='<%# Eval("alu_ApeMaterno") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluSexo" runat="server" Text='<%# Eval("alu_Sexo") %>' Visible="true"></asp:Label>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluPassword" runat="server" Text='<%# Eval("alu_Password") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluFechaN" runat="server" Text='<%# Eval("alu_FechaNacimiento", "{0:dd/MM/yyyy}") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblAluCarrera" runat="server" Text='<%# Eval("alu_Carrera") %>' Visible="true"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
            </asp:Panel>
    


</div>