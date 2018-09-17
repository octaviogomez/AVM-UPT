<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebsMasters.aspx.cs" Inherits="AVM.Paginas.WebsMasters" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sesion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <link href="/Content/app.css" rel="stylesheet" />
    <link href="/Iconos/icon/font/css/open-iconic-bootstrap.css" rel="stylesheet" />


    <script src="/Scripts/jquery-3.3.1.min.js"></script>
    <script src="/Scripts/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
</head>
<body>
    <header id="header-container" class="fondoColor posicionFoter">
        <div class="container">
            <div class="row">

                <div class="col-1">
                    <asp:Image ID="ImagenLogo" runat="server" ImageUrl="~/Imagenes/Universidad/corazon.png" Height="65px" Width="76px" alt="Responsive image" />
                </div>
                <div class="col-10 text-center">
                    <h2>Universidad Politécnica de Tulancingo</h2>
                </div>
                <div class="col-1">
                </div>
            </div>
        </div>
    </header>
    <br />
    <br />
    <form id="form2" runat="server">
        <div class="container colorBlanco">

            <div class="row">
                <div class="col-md-6">
                    <h2><em>Desarrolladores</em></h2>



                    <blockquote>
                        <span class="fa fa-user"></span>M.I. José Manuel Hernández Reyes (jose.hernandez@upt.edu.mx)<br />
                        <br />
                        <span class="fa fa-user"></span>Octavio Gómez Romo (1530096@upt.edu.mx)<br />
                        <br />
                        <span class="fa fa-user"></span>Pedro Cruz Licona (1530096@upt.edu.mx)<br />
                        <br />
                        <span class="fa fa-user"></span>Carlos ortega Riveros (1530096@upt.edu.mx)<br />
                        <br />
                        <span class="fa fa-user"></span>Aurelio Martines Soto (1530096@upt.edu.mx)<br />
                        <br />
                    </blockquote>
                    
                    <br />
                    <asp:LinkButton ID="LinkButtonDefault" runat="server" href="Default.aspx" CssClass="btn btn-info">Inicio</asp:LinkButton>

                </div>

                <div class="col-md-6">
                    <h2>Lugar de desarrollo</h2>
                    <div class="image-caption">
                        <img  width="650" src="../Imagenes/universidad/IMA3.jpg" class="img-fluid" alt="Responsive image" />
                        <h4><strong>Fábrica de Software</strong></h4>
                        <p><em>Área de Ingeniería en Sistemas Computacionales.</em></p>
                    </div>
                    <p>
                    </p>
                </div>
            </div>



        </div>
    </form>
    <script>
        (function () {
            $('#show_password').click(function () {
                if ($('#show_password').is(':checked')) {
                    $('#password').attr('type', 'text');
                } else {
                    $('#password').attr('type', 'password');
                }
            });
        })();
    </script>
</body>
</html>
