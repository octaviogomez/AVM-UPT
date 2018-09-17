<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Administrador.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AVM.Paginas.Admin.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container colorBlanco">
        <br />
        <div class="">
            <h1 class="display-4">Bienvenido !</h1>
            <p class="lead">Usted puede hacer uso de funcionalidades de usuario Administrador.</p>
        </div>
        <br />


        <div class="row">
            <div class="col-12 col-md-4">
                <div class="card border-dark ">
                    <div class="card-header">Reportes</div>
                    <div class="card-body text-dark">

                        <p class="card-text">
                            Usted podrá observar reportes ques se generen mediante las encuestas realizadas
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                        <div class="card border-dark">
                    <div class="card-header">Importar datos de Alumnos</div>
                    <div class="card-body text-dark">

                        <p class="card-text">Usted tendrá la posibilidad de importar los datos de los alumnos desde un archivo Excel hacia la Base de Datos.</p>
                    </div>
                </div>
            </div>
             <div class="col-12 col-md-4">
                        <div class="card border-dark">
                    <div class="card-header">Estadísticas por Especialista</div>
                    <div class="card-body text-dark">

                        <p class="card-text">Consultar el número de consultas realizadas por especialista.</p>
                    </div>
                </div>
            </div>
        </div>
  
        <br />
    </div>
</asp:Content>

