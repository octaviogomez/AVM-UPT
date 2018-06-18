<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoDental.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoDental" %>
<div class="container">
    <div class="card">
        <br />
        <div class="center-align">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info"> 
                <span class="oi oi-print"></span> Imprimir Historial-Dental
            </asp:HyperLink>    
        </div>
        <br />
        <!-- Table -->
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th class="w60">Pregunta</th>
                    <th>Respuesta(S)</th>
                </tr>
                <%-- P1 D --%>
                <tr>
                    <td>
                        <h4>1.-Última vez que acudió al dentista</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <%-- P2 D --%>
                <tr>
                    <td>
                        <h4>2.-Motivo de su última consulta dental</h4>

                    </td>
                    <td>
                        <asp:TextBox ID="d2" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium"  CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P3 D --%>
                <tr>
                    <td>
                        <h4>3.-¿Cómo calificó su boca?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P4 D --%>
                <tr>
                    <td>
                        <h4>4.-¿Cuantas veces al día cepilla sus dientes?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>

                    </td>

                </tr>
                <%-- P5 D --%>
                <tr>
                    <td>
                        <h4>5.-¿Le truena la mandíbula cuando abre mucho la boca?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P6 D --%>
                <tr>
                    <td>
                        <h4>6.-¿Le sangran las encias cuando se cepilla los dientes?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P7 D --%>
                <tr>
                    <td>
                        <h4>7.-¿Tiene dificultad para abrir la boca en algunas ocasiones?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P8 D --%>
                <tr>
                    <td>
                        <h4>8.-¿Se ha quedado alguna vez con la boca abierta y ha tenido incapacidad para cerrarla?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P09 D --%>
                <tr>
                    <td>
                        <h4>9.-¿Has tenido perforaciones en la boca (piercings)?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="d9" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P10 D --%>
                <tr>
                    <td>
                        <h4>10.-¿Ha presentado mal aliento?</h4>

                    </td>
                    <td>
                        <asp:TextBox ID="d10" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P11 D --%>
                <tr>
                    <td>
                        <h4>11.-¿Tienes el hábito de morderte las uñas, tallarte  o morder objetos?</h4>

                    </td>
                    <td>
                        <asp:TextBox ID="d11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>

                    </td>

                </tr>

            </table>
        </div>

    </div>
</div>
