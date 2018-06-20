<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoMedico.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoMedico" %>

<div class="container">
    <div class="card">
        <br />


        <div class="row">
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4">
                <asp:HyperLink ID="HyperLinkMedico" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock"> 
                <span class="oi oi-print"></span> Imprimir
                </asp:HyperLink>
            </div>
        </div>


        <br />
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th  style="width:60%">Pregunta</th>
                    <th  >Respuesta(S)</th>
                </tr>
           
                <tr>
                    <td>
                        <h4>1.-Alimentación diaria </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>2.-Veces que realiza ejercicio por semana</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m2" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>3.-Tipo de sangre</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>4.-Frecuencia de consumo de bebidas alcóholicas</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>5.-Frecuencia de consumo de tabaco</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>6.-Consumo de drogas ilegales</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>7.-Padecimiento de alergias</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>8.-Enfermedades que padece</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>9.-Frecuencia con que se baña</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m9" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>10.-Tipo de baño que hay donde vive</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m10" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>11.-Vive en lugares con enfermedades como el Dengue,Paludismo,etc</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>12.-Está en tratamientos hormonales</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m12" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>13.-Toma anticonceptivos</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m13" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>14.-¿Alguna vez le practicaron cirugía?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m14" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>15.-¿Le han practicado una transfusión sanguínea?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m15" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>16.-¿Está en contacto directo con pacientes diagnosticados con VIH o Tuberculosis?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m16" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>17.-Estatura(cm)</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m17" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>18.-Peso(kg)</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m18" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>19.-Cálculo IMC</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m19" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>20.-¿Su regla es regular?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m20" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>21.-¿Está embarazada?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m21" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>22.-¿Está lactando?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m22" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>23.-Enfermedades que padecieron los abuelos</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m23" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>24.-Enfermedades que padecieron los padres</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m24" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>25.-Enfermedades que padecieron los hermanos primos y tíos</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="m25" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
            </table>
        </div>

    </div>
</div>
