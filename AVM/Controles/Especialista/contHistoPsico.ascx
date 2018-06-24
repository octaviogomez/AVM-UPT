<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contHistoPsico.ascx.cs" Inherits="AVM.Controles.Especialista.contHistoPsico" %>
<div class="container">
    <div class="card">
        <br />

        <div class="row">
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4"></div>
            <div class="col-12 col-md-4">
                <asp:LinkButton ID="HyperLinkPsico" runat="server" CssClass="btn btn-outline-info btn-lg btn-lock" OnClick="HyperLinkPsico_Click"> 
                <span class="oi oi-print"></span> Imprimir
                </asp:LinkButton>
            </div>
        </div>

        <br />
        <!-- Table -->
        <div class="table-responsive">
            <table class="table table-bordered  table-striped table-hover">
                <tr>
                    <th style="width:60%">Pregunta</th>
                    <th>Respuesta</th>
                </tr>
                <%-- P1 P --%>
                <tr>
                    <td>
                        <p>1.-¿La Universidad Politécnica de Tulancingo fue su primera opción?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p1" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>2.-¿La carrera que eligió fue su primera opción?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p2" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>3.-¿Qué tan satisfecho está con la elección de carrera?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p3" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>4.-¿Sabe cuál es su perfil vocacional?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p4" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>5.-¿Cómo es la relación con sus abuelos?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p5" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>6.-¿Cómo es la relación con su mamá?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p6" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>7.-¿Cómo es la relación con su papá?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p7" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>8.-¿Cómo es la relación con sus hermanos?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p8" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>9.-¿Cuál es el acontecimiento más relevante de su infancia?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p9" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>10.-¿Cuál es el acontecimiento más relevante de su adolesencia?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p10" TextMode="MultiLine" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>11.-¿Cómo es su autoestima?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p11" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>12.-¿Cómo considera su capacidad para relacionarse con otras personas?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p12" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>13.-¿Tiene algún proyecto de vida?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p13" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>14.-¿Le gustaría recibir orientación psicológica?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p14" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>15.-¿Número de hijo que es?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p15" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>16.-¿Con quién vive actualmente?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p16" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>17.-¿Cuales son sus preferencias sexuales?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p17" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>18.-¿Ha asistido a terapia psicológica?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p18" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <p>19.-¿Cuantas horas duermes diariamente?</p>
                    </td>
                    <td>
                        <asp:TextBox ID="p19" runat="server" ReadOnly="True" Font-Size="Medium" CssClass="form-control"></asp:TextBox></td>
                </tr>
            </table>
        </div>

    </div>
</div>
