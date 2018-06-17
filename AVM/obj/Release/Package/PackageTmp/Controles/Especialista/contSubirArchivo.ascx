<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contSubirArchivo.ascx.cs" Inherits="AVM.Controles.Especialista.contSubirArchivo" %>

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
                    <p style="font-size: medium">1.-Seleccione un archivo con extencion pdf. </p>
                    <p style="font-size: medium">2.-Debe de ser menos 1mb </p>
                    <p style="font-size: medium">3.-Puede nombrar el archivo o dejar en blanco.</p>
                    <p style="font-size: medium">Nota: Puede reemplazar archivos</p>
                </div>
            </div>
            </div>
             <div class="form-row">
                <div class="col-md-5 mb-5">
                   
                    <h3>Poner nombre: </h3>
                    <asp:TextBox ID="TextBoxNombre" runat="server"  CssClass="form-control" required=""></asp:TextBox>
                   
                </div>
                <div class="col-md-2 mb-2">
                    <br />
                       
                    
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
                <div class="col-md-2 mb-2">
                    <br />
                        <asp:Button ID="Button1" runat="server" Text="Agregar" CssClass="btn btn-info"  />
                   
                </div>
               
            </div>
            
        </div>


    </div>


</div>

