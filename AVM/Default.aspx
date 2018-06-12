<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AVM.Default" %>

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
                <div class="col align-content-md-center">
                    <br />
                    <asp:Image ID="ImagenLogo" runat="server" ImageUrl="~/Imagenes/Universidad/corazon.png" Height="73px" Width="76px" />
                </div>
                <div class="col align-self-center">
                    <h2>Sistema médico UPT</h2>
                </div>
                <div class="col"></div>
            </div>
        </div>

    </header>
    <br />
    <br />
    <form id="form1" runat="server">
        <div class="container ">
            <div class="row">
                <div class="col-3 ">
                </div>
                <div class="col-6">
                    <div class="row justify-content-md-center ">

                        <div class="col align-content-center">
                            <div class="card bg-light ">
                                <div class="card-header fondoColor text-center">UPT</div>
                                <div class="card-body">
                                    <div class="card-body">
                                        <h4 class="card-title">Inicio de Sesión</h4>


                                        <div class="form-group">
                                            <label for="TextBoxNumeroDeControl"><span class="oi oi-person" />&nbsp;Matrícula</label>
                                            <asp:TextBox PlaceHolder="Escriba su matrícula" ID="TextBoxNumeroDeControl" runat="server" required="" CssClass="form-control input-lg" value="" pattern="[0-9]{1,7}" title="Solo números. Tamaño :7 digitos" autofocus=""></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="password">
                                                <span class="oi oi-key"></span>&nbsp;Contraseña
										
                                            </label>
                                            <asp:TextBox PlaceHolder="Escriba su contraseña" ID="TextBoxContrasena" runat="server" required="" CssClass="form-control input-lg " TextMode="Password" pattern="[A-Za-z0-9]{1,25}" title="Letras y números. Tamaño mínimo: 5. Tamaño máximo: 25"></asp:TextBox>

                                        </div>
                                        <div class="form-check">
                                            <input type="checkbox" id="show_password" class="form-check-input" id="exampleCheck1" />
                                            <label class="form-check-label" for="exampleCheck1">Mostrar contraseña</label>
                                        </div>
                                        <div class="row center-align">
                                            <div class="col m1 s1"></div>
                                            <div class="col m10 s10">
                                                <br />
                                                <asp:DropDownList ID="DropDownListRoles" runat="server" CssClass="form-control"></asp:DropDownList>
                                                <br />
                                            </div>
                                            <div class="col m4 s1"></div>
                                        </div>


                                        <div class="form-group my-2">
                                            <asp:Button ID="Button1" runat="server" Text="Entrar" class="btn  btn-block fondoColor" OnClick="Button1_Click" />

                                        </div>


                                    </div>
                                </div>
                                <div class="footer">
                                    Copyright &copy; Fábrica de Software <a href="#" class="alert-link"><%Response.Write(DateTime.Now.Year); %></a>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="col-3">
                </div>
            </div>


        </div>
    </form>
    <!--footer -->
    <div id="global-footer" class="fondoColor my-5 ">
        <div class="container">
            <div class="row">
                <div id="bottom-logo" class="col-xs-6 col-sm-2"><a href="http://www.upt.edu.mx/">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Universidad/logoUpt.png" Height="73px" Width="76px" />
                </a></div>

                <div class="clear"></div>
                <p class="copyright vcard col-sm-10">© <span class="fn org">Universidad Politécnica de Tulancingo</span>.&nbsp; <span class="adr"><span class="locality">Calle Ingenierías # 100. Col. Huapalcalco, Hidalgo</span>, <span class="region">México</span> <span class="postal-code">C.P. 43629, Teléfono: 01(775) 75 5 82 02,   Fax: 01(775) 75 5 83 21</span></span>.</p>
            </div>
            <!-- .row end -->
        </div>
        <!-- .container end -->
    </div>
    <!--/Footer-->
    <script>
        $(function () {
            $('#show_password').click(function () {
                if ($('#show_password').is(':checked')) {
                    $('#password').attr('type', 'text');
                } else {
                    $('#password').attr('type', 'password');
                }
            });
        });
    </script>
</body>
</html>
