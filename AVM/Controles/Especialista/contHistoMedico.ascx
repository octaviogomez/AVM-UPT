<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoMedico.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoMedico" %>

<div class="container">
    <div class="card">
        <br />


        <div class="row">
            <div class="col-12 col-md-8">
                <asp:Panel ID="PanelAviso" runat="server" Visible="false" AccessKey>
                    <div class="alert alert-warning" role="alert">
                       Sin resultados!
                    </div>
                </asp:Panel>
            </div>

            <div class="col-12 col-md-4">
                <asp:LinkButton ID="HyperLinkMedico" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock" OnClick="HyperLinkMedico_Click"> 
                <span class="oi oi-print"></span> Imprimir
                </asp:LinkButton>
            </div>
        </div>

        <br />
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th style="width: 60%">Pregunta</th>
                    <th>Respuesta(S)</th>
                </tr>

                <tr>
                    <td>
                        <p>1.-Alimentación diaria </p>
                    </td>
                    <td>
                        <asp:TextBox ID="m1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>2.-Veces que realiza ejercicio por semana</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m2" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>3.-Tipo de sangre</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>4.-Frecuencia de consumo de bebidas alcóholicas</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>5.-Frecuencia de consumo de tabaco</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>6.-Consumo de drogas ilegales</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>7.-Padecimiento de alergias</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>8.-Enfermedades que padece</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>9.-Frecuencia con que se baña</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m9" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>10.-Tipo de baño que hay donde vive</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m10" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>11.-Vive en lugares con enfermedades como el Dengue,Paludismo,etc</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>12.-Está en tratamientos hormonales</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m12" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>13.-Toma anticonceptivos</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m13" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>14.-¿Alguna vez le practicaron cirugía?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m14" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>15.-¿Le han practicado una transfusión sanguínea?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m15" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>16.-¿Está en contacto directo con pacientes diagnosticados con VIH o Tuberculosis?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m16" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>17.-Estatura(cm)</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m17" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>18.-Peso(kg)</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m18" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>19.-Cálculo IMC</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m19" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>20.-¿Su regla es regular?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m20" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>21.-¿Está embarazada?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m21" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>22.-¿Está lactando?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m22" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>23.-Enfermedades que padecieron los abuelos</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m23" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>24.-Enfermedades que padecieron los padres</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m24" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>25.-Enfermedades que padecieron los hermanos primos y tíos</p>
                    </td>
                    <td>
                        <asp:TextBox ID="m25" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
            </table>
        </div>

    </div>
</div>
<script>
 
</script>
