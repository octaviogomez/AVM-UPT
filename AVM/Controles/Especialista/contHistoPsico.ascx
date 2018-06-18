<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoPsico.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoPsico" %>
<div class="container">
    <div class="card">
        <br />
        <div class="center-align">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info"> 
                <span class="oi oi-print"></span> Imprimir Historial-Psicológico
            </asp:HyperLink>
        </div>
        <br />
        <!-- Table -->
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th style="white-space:pre-line">Pregunta</th>
                    <th>Respuesta</th>
                </tr>
                <%-- P1 P --%>
                <tr>
                    <td>
                        <h4>1.-¿La Universidad Politécnica de Tulancingo fue su primera opción?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>2.-¿La carrera que eligió fue su primera opción?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p2" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>3.-¿Qué tan satisfecho está con la elección de carrera?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>4.-¿Sabe cuál es su perfil vocacional?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>5.-¿Cómo es la relación con sus abuelos?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>6.-¿Cómo es la relación con su mamá?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>7.-¿Cómo es la relación con su papá?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>8.-¿Cómo es la relación con sus hermanos?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>9.-¿Cuál es el acontecimiento más relevante de su infancia?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p9" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>10.-¿Cuál es el acontecimiento más relevante de su adolesencia?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p10" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>11.-¿Cómo es su autoestima?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>12.-¿Cómo considera su capacidad para relacionarse con otras personas?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p12" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>13.-¿Tiene algún proyecto de vida?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p13" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>14.-¿Le gustaría recibir orientación psicológica?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p14" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>15.-¿Número de hijo que es?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p15" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>16.-¿Con quién vive actualmente?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p16" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>17.-¿Cuales son sus preferencias sexuales?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p17" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>18.-¿Ha asistido a terapia psicológica?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p18" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <h4>19.-¿Cuantas horas duermes diariamente?</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="p19" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
            </table>
        </div>

    </div>
</div>
