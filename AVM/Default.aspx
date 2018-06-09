<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AVM.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sesion</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    



             <div class="row ">
                    <div class="col m4  s1">
                    </div>
                    <div class="col m4 s10 borde">
                        <br />
                        <div class="input-field">
                            <i class="material-icons prefix">person_pin</i>
                            <asp:TextBox PlaceHolder="Escriba su matrícula" ID="TextBoxNumeroDeControl" runat="server" required="" CssClass="form-control input-lg" value="" pattern="[0-9]{1,7}" title="Solo números. Tamaño :7 digitos" autofocus=""></asp:TextBox>
                            <label for="TextBoxNumeroDeControl">Matrícula</label>
                        </div>

                        <div class="input-field ">
                            <i class="material-icons prefix">vpn_key</i>
                            <asp:TextBox PlaceHolder="Escriba su contraseña" ID="TextBoxContrasena" runat="server" required="" CssClass="form-control input-lg " TextMode="Password" pattern="[A-Za-z0-9]{1,25}" title="Letras y números. Tamaño mínimo: 5. Tamaño máximo: 25"></asp:TextBox>
                            <label for="TextBoxContrasena">Contraseña</label>
                        </div>
                        <br />
                        <div class="row center-align">
                            <div class="col m1 s1"></div>
                            <div class="col m10 s10">
                                <asp:DropDownList ID="DropDownListRoles" runat="server" CssClass="input-field"></asp:DropDownList>
                            </div>
                            <div class="col m4 s1"></div>
                        </div>
                        <br />
                          <div class="row">
                    <div class="col m4 s2"></div>
                    <div class="col m4 s8">
                        <asp:Button ID="Button1" runat="server" Text="Iniciar" OnClick="Button1_Click" CssClass="btn btn-lg btn-primary btn-block btn-signin" />
                    </div>
                    <div class="col m4 s2"></div>
                </div>
                    </div>
                    <div class="col m4 s1">
                    </div>
                </div>
















    </div>
    </form>
</body>
</html>
