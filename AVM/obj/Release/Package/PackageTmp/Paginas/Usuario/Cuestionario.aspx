<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Usuario.Master" AutoEventWireup="true" CodeBehind="Cuestionario.aspx.cs" Inherits="AVM.Paginas.Usuario.Cuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container colorBlanco">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="btn btn-primary active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Mèdico</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-success" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Dental</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-warning" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Psicologico</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">...



            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...

                controles
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...
                controles
            </div>
        </div>
    </div>
</asp:Content>
