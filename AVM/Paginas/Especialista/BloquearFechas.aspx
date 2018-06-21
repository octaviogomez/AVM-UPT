
<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Especialista.Master" AutoEventWireup="true" CodeBehind="BloquearFechas.aspx.cs" Inherits="AVM.Paginas.Especialista.BloquearFechas" %>

<%@ Register Src="~/Controles/Especialista/contFechasBloqueadas.ascx" TagPrefix="uc1" TagName="contFechasBloqueadas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container colorBlanco">

        <div class="card">
            <h5 class="card-header">as</h5>
            <div class="card-body">
                <div class="card-header" id="headingOne">
                    <h5 class="mb-0">
                        <a class="linkAyuda" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <span class="oi oi-info"></span>Información
                        </a>
                    </h5>
                </div>
                <div class="Row">
                    <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="card-body">
                            <ul>

                                <li>Para visualizar un <strong>usuario</strong> identifiquelo, y despues de click en       <span class="oi oi-person"></span></li>
                                <li>Para eliminar un <strong>usuario</strong> identifiquel, y despues de click en    <span class="oi oi-trash"></span></li>
                            </ul>
                            <br />
                        
                        </div>
                    </div>
                </div>
                <br />
                <uc1:contFechasBloqueadas runat="server" ID="contFechasBloqueadas" />
                
            </div>
        </div>
    </div>
    
</asp:Content>
