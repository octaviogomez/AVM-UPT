<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contCargarDatosAlumnos.ascx.cs" Inherits="AVM.Controles.Admin.contCargarDatosAlumnos" %>
<div class="container colorBlanco">
    
  
 
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
                     <asp:Button ID="Importar" runat="server" Text="Cargar a la base de datos" OnClick="Importar_Click" CssClass="btn btn-info" Visible="false"  />
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
    


