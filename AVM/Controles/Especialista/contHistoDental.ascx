<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoDental.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoDental" %>
<div class="container">
    <div class="card">
        <br />

        <div class="row">
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4">
                <asp:LinkButton ID="HyperLinkDental" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock" OnClick="HyperLinkDental_Click"> 
                <span class="oi oi-print"></span> Imprimir
                </asp:LinkButton>
            </div>
        </div>
        <br/>
        <!-- Table -->
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th style="width:60%">Pregunta</th>
                    <th>Respuesta(S)</th>
                </tr>
                <%-- P1 D --%>
                <tr>
                    <td>
                        <p>1.-Última vez que acudió al dentista</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <%-- P2 D --%>
                <tr>
                    <td>
                        <p>2.-Motivo de su última consulta dental</p>

                    </td>
                    <td>
                        <asp:TextBox ID="d2" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium"  CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P3 D --%>
                <tr>
                    <td>
                        <p>3.-¿Cómo calificó su boca?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P4 D --%>
                <tr>
                    <td>
                        <p>4.-¿Cuantas veces al día cepilla sus dientes?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>

                    </td>

                </tr>
                <%-- P5 D --%>
                <tr>
                    <td>
                        <p>5.-¿Le truena la mandíbula cuando abre mucho la boca?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P6 D --%>
                <tr>
                    <td>
                        <p>6.-¿Le sangran las encias cuando se cepilla los dientes?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <%-- P7 D --%>
                <tr>
                    <td>
                        <p>7.-¿Tiene dificultad para abrir la boca en algunas ocasiones?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P8 D --%>
                <tr>
                    <td>
                        <p>8.-¿Se ha quedado alguna vez con la boca abierta y ha tenido incapacidad para cerrarla?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P09 D --%>
                <tr>
                    <td>
                        <p>9.-¿Has tenido perforaciones en la boca (piercings)?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="d9" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P10 D --%>
                <tr>
                    <td>
                        <p>10.-¿Ha presentado mal aliento?</p>

                    </td>
                    <td>
                        <asp:TextBox ID="d10" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>
                    </td>

                </tr>
                <%-- P11 D --%>
                <tr>
                    <td>
                        <p>11.-¿Tienes el hábito de morderte las uñas, tallarte  o morder objetos?</p>

                    </td>
                    <td>
                        <asp:TextBox ID="d11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox>

                    </td>

                </tr>

            </table>
        </div>

    </div>
</div>
