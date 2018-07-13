<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cuestionario.ascx.cs" Inherits="AVM.Controles.Usuario.Cuestionario" %>

    <br />
    <br />
<div class="container">
  <asp:Panel ID="PanelAviso" runat="server">
        <div class="  card-panel  accent-1#ffffff white">
            <div class="jumbotron">
                <h1>Aviso de privacidad</h1>
                <p class="lead">
                    Se podrá contestar sólo una vez, sea cuidadoso.
                </p>
                <p>

                    El objetivo del llenado es registrar los antecedentes del paciente y generar su historial clínico, para esto tienes que aceptar el aviso de privasidad, se cuidadoso y sincero a la hora de contestar el cuestionario.
                </p>
            </div>
            <div class="row">
                <div class="center-align" style="margin:auto">
                    <h4>
                    <asp:Button ID="ButtonAceptarTerminos" runat="server" Text="Aceptar" CssClass="btn btn-primary" OnClick="ButtonAceptarTerminos_Click" />
                    </h4>
                </div>
            </div>
            <br />
             <br />
        </div>

    </asp:Panel>

    <asp:Panel ID="PanelCuestionarnio" runat="server" Visible="false">
        <div class="nav nav-pills mb-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
  <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#medico" role="tab" aria-controls="medico" aria-selected="true">Médico</a>
  <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#dental" role="tab" aria-controls="dental" aria-selected="false">Dental</a>
  <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#psicologo" role="tab" aria-controls="psicologos" aria-selected="false">Psicológico</a>
  <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#acuse" role="tab" aria-controls="acuse" aria-selected="false">Acuse</a>
</div>
<div class="tab-content" id="v-pills-tabContent">
  <div class="tab-pane fade show active" id="medico" role="tabpanel" aria-labelledby="v-pills-home-tab">
        <%-- Aviso de cuestionario terminado --%>
                    <asp:Panel ID="PanelAvisoMedico" runat="server" Visible="false" >
                        <div class="jumbotron  panel panel-default accent-1#ffffff white ">
                            <h1 class="center-align">Sección terminada</h1>
                            <br />
                            <br />
                          <p id="demo" onclick="myFunction()" class="btn btn-primary">Suguiente</p>
                        </div>
                    </asp:Panel>
                    <%-- Banner de cuestionario medico --%>
                    <asp:Panel ID="PanelMedico" runat="server" Visible="true">
                        <div id="red1" class="#fafafa grey lighten-5  " style="height: auto">
                            <nav class="" data-target="red" style="top: auto; z-index: auto">
                                <div class="nav-wrapper #2196f3 blue">
                                    <div class="container center-align">
                                        <h1 class="">Cuestionario Médico</h1>
                                        <ul id="nav-mobile2" class="right hide-on-med-and-down">
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <br />
                            
                            <div class="container">
                                <div class="row">
                                        <%-- Pregunta 1 Doctor --%>
                            <div class="col s10" style="font-size: medium">
                                <h4>1.-Alimentación diaria</h4>

                                <div style="font-size: medium" class="valign-wrapper ">
                                    <asp:RadioButton ID="pre1Res1" runat="server" Text=" " GroupName="pm1" />
                                    1 comida
                                </div>
                                <div style="font-size: medium" class="valign-wrapper ">
                                    <asp:RadioButton ID="pre1Res2" runat="server" Text=" " GroupName="pm1" />
                                    2 comidas
                                </div>
                                <div style="font-size: medium" class="valign-wrapper ">
                                    <asp:RadioButton ID="pre1Res3" runat="server" Text=" " GroupName="pm1" />
                                    3 comidas
                                </div>
                                <div style="font-size: medium" class="valign-wrapper ">
                                    <asp:RadioButton ID="pre1Res4" runat="server" Text=" " GroupName="pm1" />
                                    4 o más
                                </div>

                            </div>
                                </div>
                              
                            <%-- Pregunta 2 Doctor --%>
                            <div class="row">
                                <div class="col s10">
                                    <h4>2.-¿Cuántas veces a la semana realizas ejercicio?</h4>

                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre2Res1" runat="server" Text=" " GroupName="pm2" />
                                        3 o más veces por semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre2Res2" runat="server" Text=" " GroupName="pm2" />
                                        Una vez a la semana.
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre2Res3" runat="server" Text=" " GroupName="pm2" />
                                        Una vez cada 15 dias
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre2Res4" runat="server" Text=" " GroupName="pm2" />
                                        Una vez al mes
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre2Res5" runat="server" Text=" " GroupName="pm2" />
                                        Nunca
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 3 Doctor --%>
                            <div class="row">
                                <div class="col s3">
                                    <h4>3.-¿Cuál es su grupo sanguineo?</h4>
                                    <br />

                                    <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" ID="pre3" runat="server" Font-Size="Medium">
                                        <asp:ListItem Selected="False">Seleccione</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                           
                          <br />

                            <%-- Pregunta 4 Doctor --%>
                            <div class="row">
                                <div class="col s10">
                                    <h4>4.-¿Con que frecuencia consumes bebidas alcohólicas?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4Res1" runat="server" Text=" " GroupName="pm4" />
                                        2 o más veces por semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4Res2" runat="server" Text=" " GroupName="pm4" />
                                        Una vez a la semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4Res3" runat="server" Text=" " GroupName="pm4" />
                                        Una vez al mes
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4Res4" runat="server" Text=" " GroupName="pm4" />
                                        Nunca
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 5 Doctor --%>
                            <div class="row">
                                <div class="col s6">
                                    <h4>5.-¿Con que frecuencia fumas tabaco?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre5Res1" runat="server" Text=" " GroupName="pm5" />
                                        Diario
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre5Res2" runat="server" Text=" " GroupName="pm5" />
                                        Una vez a la semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre5Res3" runat="server" Text=" " GroupName="pm5" />
                                        Una vez al mes
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre5Res4" runat="server" Text=" " GroupName="pm5" />
                                        Nunca
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 6 Doctor --%>
                            <div class="row">
                                <div class="col s16">
                                    <h4>6.-¿Consumes alguna droga ilegal (marihuana , cocaína, ácidos(LCD),inhalantes,etc)?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre6Res1" runat="server" Text=" " GroupName="pm6" />
                                        Diario
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre6Res2" runat="server" Text=" " GroupName="pm6" />
                                        Una vez a la semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre6Res3" runat="server" Text=" " GroupName="pm6" />
                                        Una vez al mes
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre6Res4" runat="server" Text=" " GroupName="pm6" />
                                        Nunca
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 7 Doctor --%>
                                <div class="row">
                                       <div class="col s4">
                                <h4>7.-¿Tienes alguna alergia?</h4>
                                           <div class="row">
                                               <div class="col s3">
                                                   <label>
                                                       Si
                                      <asp:CheckBox ID="pre7Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre7Res1_CheckedChanged" />

                                                   </label>

                                               </div>
                                           </div>
                               
                                <asp:Panel ID="PanelPM7" runat="server" Visible="false">
                                    <div>
                                        <div class="row">
                                            <div class="col s3">
                                                <asp:DropDownList ID="DropDownListPM7" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                      
                                    </div>
                                </asp:Panel>
                            </div>
                                </div>
                         <div class="row">
 <div class="col s6">
                                <h4>8.-¿Padeces alguna enfermedad?</h4>

                                <div class="col s4">
                                    <label>
                                        Si
      <asp:CheckBox ID="pre8Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre8Res1_CheckedChanged" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                                <asp:Panel ID="PanelPM8" runat="server" Visible="false">
                                    <div class="input-field col s6">
                                        <asp:DropDownList ID="DropDownListPM8" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>
                                    </div>
                                </asp:Panel>
                            </div>
                         </div>
                            <%-- Pregunta 8 Doctor (la de las enfermedades )--%>
                           

                            <%-- Pregunta 9 Doctor --%>
                            <div class="row">
                                <div class="col s10">

                                    <h4>9.-¿Con que frecuencia te bañas?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre9Res1" runat="server" Text=" " GroupName="pm9" />
                                        Diario
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre9Res2" runat="server" Text=" " GroupName="pm9" />
                                        Cada tercer día
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre9Res3" runat="server" Text=" " GroupName="pm9" />
                                        Una vez a la semana
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre9Res4" runat="server" Text=" " GroupName="pm9" />
                                        Una vez al mes
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 10 Doctor --%>
                            <div class="row">
                                <div class="col s6">
                                    <h4>10.-¿Qué tipo de baño hay donde vives?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre10Res1" runat="server" Text=" " GroupName="pm10" />
                                        Baño con drenaje
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre10Res2" runat="server" Text=" " GroupName="pm10" />
                                        Letrina
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre10Res3" runat="server" Text=" " GroupName="pm10" />
                                        Fosa Séptica
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre10Res4" runat="server" Text=" " GroupName="pm10" />
                                        Ras de suelo
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 11 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s10">
                                        <h4>11.-¿Vives en lugares con enfermedades como el Dengue, Paludismo, etc.?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                <asp:CheckBox ID="pre11Res1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>

                            </div>
                            <%-- Pregunta 12 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h4>12.-Estás en algún tratamiento hormonal. </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                <asp:CheckBox ID="pre12Res1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 13 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h4>13.-¿Tomas anticonceptivos? </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                <asp:CheckBox ID="pre13Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre13Res1_CheckedChanged" />
                                            <span class="lever"></span>
                                            
                                        </label>

                                    </div>
                                    <br />
                                    <div class="row">
                                    <div class="col s4">
                                        <asp:Panel ID="Panelpre13Res1" runat="server" Visible="false">
                                            <asp:DropDownList ID="DropDownListpre13Res1" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>
                                        </asp:Panel>
                                    </div>
                                    </div>
                                    

                                </div>
                            </div>
                            <%-- Pregunta 14 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h4>14.-¿Alguna vez te practicaron una cirugía?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                                            
                    <asp:CheckBox ID="pre14Res1" runat="server" AutoPostBack="true" OnCheckedChanged="pre14Res1_CheckedChanged" />
                                            <span class="lever"></span>
                                           
                                        </label>
                                    </div>
                                    <br />
                                    <div class="row">
                                    <div class="col s4">
                                        <asp:Panel ID="Panelpre14Res1" runat="server">
                                            <asp:DropDownList ID="DropDownListpre14Res1" CssClass="btn btn-secondary dropdown-toggle" runat="server"></asp:DropDownList>
                                        </asp:Panel>
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <%-- Pregunta 15 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s10">
                                        <h4>15.-¿Alguna vez te han practicado una transfunción de sangre?
                                        </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                <asp:CheckBox ID="pre15Res1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 16 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>16.-¿Estás en contacto directo con pacientes diagnosticados con VIH o Tuberculosis? </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
                <asp:CheckBox ID="pre16Res1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 17 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h4>17.-¿Cuál es tu altura en centímetros? </h4>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="input-field col s6" runat="server">
                                        <asp:TextBox ID="pre17Res1" runat="server" Font-Size="Medium" ></asp:TextBox>
                                        <label class="active" for="pre17Res1">Altura(cm)</label>
                                    </div>

                                    <asp:RegularExpressionValidator ID="validarTalla" runat="server" ErrorMessage="Solo números, sin puntos" ForeColor="Red" BackColor="Yellow" ControlToValidate="pre17Res1" ValidationExpression="^[0-9]*" Font-Size="X-Large"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <%-- Pregunta 18 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s6">
                                        <h4>18.-¿Cuál es tu peso en kilogramos? </h4>
                                    </div>
                                </div>
                                <div class="input-field col s6" runat="server" id="txtPeso">
                                    <asp:TextBox ID="pre18Res1" runat="server" Font-Size="Medium" ></asp:TextBox>
                                    <label class="active" for="pm18">Peso(kg)</label>
                                </div>
                                <asp:RegularExpressionValidator ID="validarPeso" runat="server" ErrorMessage="Solo números" ForeColor="Red" BackColor="Yellow" ControlToValidate="pre18Res1" ValidationExpression="^\d+(?:[\.\,]\d+)?$" Font-Size="X-Large"></asp:RegularExpressionValidator>
                            </div>
                            <%-- Pregunta 19 Doctor --%>
                            <%---------------------------falta la 19 es el calculo imc --%>
                            <%-- Pregunta 20 Doctor --%>
                            <asp:Panel ID="PanelPreguntasMujer" runat="server">
                                <div>
                                    <div class="row">
                                        <div class="col s6">
                                            <h4>19.-¿Tu regla es regular? (Tu regla es de 1 mes,7 dias más 7 dias menos)</h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class=" col s4">
                                            <label>
                                                Si
                    <asp:CheckBox ID="pre20Res1" runat="server" />
                                                <span class="lever"></span>
                                                
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <a class="carousel-item tooltipped" data-position="top" data-tooltip="Tu regla es de 1 mes,7 dias más 7 dias menos">
                                            <img src="imag/iconos/ayuda.jpg" /></a>
                                    </div>
                                </div>
                                <%-- Pregunta 21 Doctor --%>
                                <div>
                                    <div class="row">
                                        <div class="col s6">
                                            <h4>20.-¿Estás embarazada? </h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4">
                                            <label>
                                               Si
                <asp:CheckBox ID="pre21Res1" runat="server" />
                                                <span class="lever"></span>
                                                
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <%-- Pregunta 22 Doctor --%>
                                <div>
                                    <div class="row">
                                        <div class="col s6">
                                            <h4>21.-¿Estás lactando (dando pecho)? </h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s4" id="switch" runat="server">
                                            <label>
                                                 Si
                    <asp:CheckBox ID="pre22Res1" runat="server" />
                                                <span class="lever"></span>
                                               
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </asp:Panel>



                            <%-- Pregunta 23 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s10">
                                        <h4>22.-¿Tus abuelos padecieron algunas de estas enfermedades? </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s6">
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res1" runat="server" Text=" " />
                                            Diabetes Mellitu
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res2" runat="server" Text=" " />
                                            Hipertensión Arterial
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res3" runat="server" Text=" " />
                                            Cardiopatias
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res4" runat="server" Text=" " />
                                            Cáncer
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res5" runat="server" Text=" " />
                                            Epilepsia
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res6" runat="server" Text=" " />
                                            Enfermedades autoinmunes
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res7" runat="server" Text=" " />
                                            Psiquiatricas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res8" runat="server" Text=" " />
                                            Sanguineas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res9" runat="server" Text=" " />
                                            No se
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre23Res10" runat="server" Text=" " />
                                            Ninguna
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 24 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s10">
                                        <h4>23.-¿Tus padres padecieron algunas de estas enfermedades?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s10">
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res1" runat="server" Text=" " />
                                            Diabetes Mellitu
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res2" runat="server" Text=" " />
                                            Hipertensión Arterial
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res3" runat="server" Text=" " />
                                            Cardiopatias
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res4" runat="server" Text=" " />
                                            Cáncer
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res5" runat="server" Text=" " />
                                            Epilepsia
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res6" runat="server" Text=" " />
                                            Enfermedades autoinmunes
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res7" runat="server" Text=" " />
                                            Psiquiátricas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res8" runat="server" Text=" " />
                                            Sanguíneas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res9" runat="server" Text=" " />
                                            No se
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre24Res10" runat="server" Text=" " />
                                            Ninguna
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 25 Doctor --%>
                            <div>
                                <div class="row">
                                    <div class="col s10">
                                        <h4>24.-¿Tus hermanos, primos o tíos padecieron algunas de estas enfermedades?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s6">
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res1" runat="server" Text=" " />
                                            Diabetes Mellitu
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res2" runat="server" Text=" " />
                                            Hipertensión Arterial
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res3" runat="server" Text=" " />
                                            Cardiopatias
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res4" runat="server" Text=" " />
                                            Cáncer
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res5" runat="server" Text=" " />
                                            Epilepsia
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res6" runat="server" Text=" " />
                                            Enfermedades autoinmunes
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res7" runat="server" Text=" " />
                                            Psiquiatricas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res8" runat="server" Text=" " />
                                            Sanguineas
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res9" runat="server" Text=" " />
                                            No se
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre25Res10" runat="server" Text=" " />
                                            Ninguna
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br/>
                            <br/>
                            <%-- Boton siguiente--%>
                            <div class="row justify-content-center">
                                <asp:Button ID="ButtonAgregarMedico" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonAgregarMedico_Click" />
                            </div>
                                  
                            <br/>
                            <br/>
                            <br/>
                        </div>
                         </div>
                    </asp:Panel>
  </div>
  <div class="tab-pane fade" id="dental" role="tabpanel" aria-labelledby="v-pills-profile-tab">
 <%-- Banner de cuestionario Dentista y preguntas --%>
                    <asp:Panel ID="PanelAvisoDental" runat="server" Visible="false">
                      <div class="jumbotron  panel panel-default accent-1#ffffff white ">
                            <h1 class="center-align">Sección terminada</h1>
                            <br />
                            <br />
                         <p id="demo2" onclick="MyFunction1()" class="btn btn-primary">Siguiente</p>
                          </div>
                    </asp:Panel>
                    <asp:Panel ID="PanelDentista" runat="server" Visible="true">
                        <div id="red" class="#fafafa grey lighten-5">
                            <nav class="" data-target="red" style="top: auto; z-index: auto">
                                <div class="nav-wrapper #558b2f light-green darken-3">
                                    <div class="container center-align">
                                        <h1 class="">Cuestionario Dental</h1>
                                        <ul id="nav-mobile2" class="right hide-on-med-and-down">
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            
                            <br />
                            <div class="container">
                            <%-- Pregunta 1 Dentista --%>
                            <div class="row">
                                <div class="col s10">
                                    <h4>1.-¿Cuándo fue la última vez que fuiste al dentista?</h4>
                                   
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre1ResD1" runat="server" Text=" " GroupName="pd1" />
                                        Menos de 6 meses
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre1ResD2" runat="server" Text=" " GroupName="pd1" />
                                        Menos de un año
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre1ResD3" runat="server" Text=" " GroupName="pd1" />
                                        Un año o más
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre1ResD4" runat="server" Text=" " GroupName="pd1" />
                                        Nunca
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 2 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s8">
                                        <h4>2.-¿Motivo de tu última visita dental?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s6">
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD1" runat="server" Text="  " />
                                            Diagnóstico
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD2" runat="server" Text=" " />
                                            Caries
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD3" runat="server" Text=" " />
                                            Profilaxis (limpieza)
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD4" runat="server" Text=" " />
                                            Dolor de muelas (muelas del juicio)
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD5" runat="server" Text=" " />
                                            Gingivitis (sangrado )
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD6" runat="server" Text=" " />
                                            Tratamientos de ortodoncia (braquetes)
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD7" runat="server" Text=" " />
                                            Endodoncia
                                        </div>
                                        <div style="font-size: medium" class="valign-wrapper ">
                                            <asp:CheckBox ID="pre2ResD8" runat="server" Text=" " OnCheckedChanged="pre2ResD8_CheckedChanged" AutoPostBack="true" />
                                            Ninguna
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 3 Dentista --%>
                            <div class="row">
                                <div class="col s8">
                                    <h4>3.-¿Cómo califica su boca?</h4>
                                   
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre3ResD1" runat="server" Text=" " GroupName="pd3" />
                                        Muy buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre3ResD2" runat="server" Text=" " GroupName="pd3" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre3ResD3" runat="server" Text=" " GroupName="pd3" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre3ResD4" runat="server" Text=" " GroupName="pd3" />
                                        Muy mala
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 4 Dentista --%>
                            <div class="row">
                                <div class="col s8">
                                    <h4>4.-¿Cuántas veces al día cepilla sus dientes?</h4>
                                    
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4ResD1" runat="server" Text=" " GroupName="pd4" />
                                        1
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4ResD2" runat="server" Text=" " GroupName="pd4" />
                                        2
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4ResD3" runat="server" Text=" " GroupName="pd4" />
                                        3
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="pre4ResD4" runat="server" Text=" " GroupName="pd4" />
                                        Ninguna
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 5 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>5.-¿Te truena la mandibula cuando abres mucho la boca?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4" id="Div1" runat="server">
                                        <label>
                                             Si
                    <asp:CheckBox ID="pre5ResD1" runat="server" />
                                            <span class="lever"></span>
                                           
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 6 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>6.-¿Te sangran las encias cuando te cepillas los dientes?
                                        </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4" id="Div3" runat="server">
                                        <label>
                                           Si
                    <asp:CheckBox ID="pre6ResD1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 7 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>7.-¿Tienes dificultad para abrir la boca en algunas ocasiones? </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4" id="Div4" runat="server">
                                        <label>
                                            Si
                    <asp:CheckBox ID="pre7ResD1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 8 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>8.-¿Se ha quedado alguna vez con la boca abierta sin poder cerrarla? </h4>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col s4" id="Div5" runat="server">
                                        <label>
                                            Si
                        <asp:CheckBox ID="pre8ResD1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 9 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>9.-¿Has tenido perforaciones en la boca (percings)? </h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4" id="Div6" runat="server">
                                        <label>
                                            Si
                    <asp:CheckBox ID="pre9ResD1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 10 Dentista --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>10.-¿Has presentado mal aliento? </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4">
                                    <label>
                                        Si
   <asp:CheckBox ID="pre10ResD1" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 11 Dentista --%>
                            <div>
                                <div class="row">
                                    <div class="col s12">
                                        <h4>11.-¿Tienes el hábito de morderte las uñas, apretar y tallarte los dientes o morder objetos?</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s4">
                                        <label>
                                            Si
      <asp:CheckBox ID="pre11ResD1" runat="server" />
                                            <span class="lever"></span>
                                            
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <asp:Button ID="ButtonAgregarDental" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonAgregarDental_Click" />
                            </div>
                                <br>
                                </br>
                                <br>
                                </br>
                        </div>
                        </div>
                    </asp:Panel>
  </div>
  <div class="tab-pane fade" id="psicologo" role="tabpanel" aria-labelledby="v-pills-messages-tab">
  <%-- Banner de cuestionario Psicologo --%>
                    <asp:Panel ID="PanelAvisoPsicologo" runat="server" Visible="false">
                        <div class="jumbotron card-panel  accent-1#ffffff white">
                            <h1 class="center-align">Sección terminada</h1>
                            <br />
                            <br />
                              <p id="demo3" onclick="MyFunction2()" class="btn btn-primary">Siguiente</p>
                             </div>
                    </asp:Panel>
                    <asp:Panel ID="PanelPsicologo" runat="server" Visible="true">
                        <div id="green" class="block white">
                            <nav class="" data-target="red" style="top: auto; z-index: auto">
                                <div class="nav-wrapper #ef6c00 orange darken-3">
                                    <div class="container center-align">
                                        <h1 class="">Cuestionario Psicológico</h1>
                                        <ul id="nav-mobile2" class="right hide-on-med-and-down">
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <br />
                            <%-- Pregunta 1 Psicologo --%>
                            <div class="container">
                            <div class="row">
                                <div class="col s12">
                                    <h4>1.-¿La Universidad Politécnica de Tulancingo fue tu primera opción? </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
      <asp:CheckBox ID="pre11ResP1" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 2 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>2.-¿La carrera que elegiste fue tu primera opción? </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
                    <asp:CheckBox ID="pre2p" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 3 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>3.-¿Qué tan satisfecho estás con la elección de tu carrera?</h4>
                                    <br />

                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res3p1" runat="server" Text=" " GroupName="pp1" />
                                        Muy satisfecho
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res3p2" runat="server" Text=" " GroupName="pp1" />
                                        Satisfecho
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res3p3" runat="server" Text=" " GroupName="pp1" />
                                        Poco satisfecho
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res3p4" runat="server" Text=" " GroupName="pp1" />
                                        Insatisfecho
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 4 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>4.-¿Sabes cuál es tu perfil vocacional? </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
                <asp:CheckBox ID="res4p" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 5 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>5.-¿Cómo es tu relación con tus abuelos?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res5p1" runat="server" Text=" " GroupName="pp5" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res5p2" runat="server" Text=" " GroupName="pp5" />
                                        Regular
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res5p3" runat="server" Text=" " GroupName="pp5" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res5p4" runat="server" Text=" " GroupName="pp5" />
                                        Sin relación
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 6 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>6.-¿Cómo es tu relación con tu mamá?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res6p1" runat="server" Text=" " GroupName="pp6" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res6p2" runat="server" Text=" " GroupName="pp6" />
                                        Regular
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res6p3" runat="server" Text=" " GroupName="pp6" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res6p4" runat="server" Text=" " GroupName="pp6" />
                                        Sin relación
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 7 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>7.-¿Cómo es tu relación con tu papá?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res7p1" runat="server" Text=" " GroupName="pp7" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res7p2" runat="server" Text=" " GroupName="pp7" />
                                        Regular
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res7p3" runat="server" Text=" " GroupName="pp7" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res7p4" runat="server" Text=" " GroupName="pp7" />
                                        Sin relación
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 8 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>8.-¿Cómo es tu relación con tus hermanos?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res8p1" runat="server" Text=" " GroupName="pp8" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res8p2" runat="server" Text=" " GroupName="pp8" />
                                        Regular
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res8p3" runat="server" Text=" " GroupName="pp8" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res8p4" runat="server" Text=" " GroupName="pp8" />
                                        Sin relación
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 9 Psicologo --%>
                            <div class="row">
                                <div class="col s10">
                                    <h4>9.-¿Cuál es el acontecimiento más relevante de tu infancia(0-9 años)?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p1" runat="server" Text=" " />
                                        Divorcio de los padres
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p2" runat="server" Text=" " />
                                        Nacimiento de un hermano
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p3" runat="server" Text=" " />
                                        Fallecimiento de uno de tus  abuelo 
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p4" runat="server" Text=" " />
                                        Fallecimiento de uno de tus padres
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p5" runat="server" Text=" " />
                                        Fallecimiento de uno de tus hermanos
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p6" runat="server" Text=" " />
                                        Fallecimiento de un familiar
                                       
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p7" runat="server" Text=" " />
                                        Ausencia del padre
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p8" runat="server" Text=" " />
                                        Ausencia de la madre
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p9" runat="server" Text=" " />
                                        Cambio de domicilio
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p10" runat="server" Text=" " />
                                        Violencia familiar
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p11" runat="server" Text=" " />
                                        Abuso sexual
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p12" runat="server" Text=" " />
                                        Víctima de bullying
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p13" runat="server" Text=" " />
                                        Ninguno 
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res9p14" runat="server" Text=" " OnCheckedChanged="res9p14_CheckedChanged" AutoPostBack="true" />
                                        Otro
                                    </div>
                                    <div>
                                        <asp:Panel ID="Panelres9p14" runat="server" Visible="false">
                                            <div style="font-size: medium" class="valign-wrapper ">
                                                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium"></asp:TextBox>
                                                <label class="active" for="pm18">Descripción.</label>
                                            </div>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 10 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>10.-¿Cuál es el acontecimiento más relevante de tu adolescencia (10-19 años)?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p1" runat="server" Text=" " />
                                        Divorcio de los padres
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p2" runat="server" Text=" " />
                                        Nacimiento de un hermano
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p3" runat="server" Text=" " />
                                        Fallecimiento de uno de tus  abuelo
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p4" runat="server" Text=" " />
                                        Fallecimiento de uno de tus padres
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p5" runat="server" Text=" " />
                                        Fallecimiento de uno de tus hermanos
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p6" runat="server" Text=" " />
                                        Fallecimiento de un familiar
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p7" runat="server" Text=" " />
                                        Ausencia del padre 
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p8" runat="server" Text=" " />
                                        Ausencia de la madre
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p9" runat="server" Text=" " />
                                        Cambio de domicilio
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p10" runat="server" Text=" " />
                                        Violencia familiar
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p11" runat="server" Text=" " />
                                        Abuso sexual
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p12" runat="server" Text=" " />
                                        Víctima de bullying
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p13" runat="server" Text=" " />
                                        Ninguno
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:CheckBox ID="res10p14" runat="server" Text=" " OnCheckedChanged="res10p14_CheckedChanged" AutoPostBack="true" />
                                        Otro
                                    </div>
                                    <div>
                                        <asp:Panel ID="Panelres10p14" runat="server" Visible="false">
                                            <p>
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                <label class="active" for="pm18">Descripción.</label>
                                            </p>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 11 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>11.-¿Cómo consideras que es tu autoestima?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res11p1" runat="server" Text=" " GroupName="pp11" />
                                        Muy Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res11p2" runat="server" Text=" " GroupName="pp11" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res11p3" runat="server" Text=" " GroupName="pp11" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res11p4" runat="server" Text=" " GroupName="pp11" />
                                        Muy mala
                                    </div>
                                </div>

                            </div>
                            <%-- Pregunta 12 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>12.-¿Cómo consideras tu capacidad para relacionarte con otras personas?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res12p1" runat="server" Text=" " GroupName="pp12" />
                                        Muy Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res12p2" runat="server" Text=" " GroupName="pp12" />
                                        Buena
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res12p3" runat="server" Text=" " GroupName="pp12" />
                                        Mala
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res12p4" runat="server" Text=" " GroupName="pp12" />
                                        Muy mala
                                    </div>
                                </div>

                            </div>
                            <%-- Pregunta 13 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>13.-¿Tienes proyecto de vida? </h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
     <asp:CheckBox ID="res13p1" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 14 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>14.-¿Te gustaría recibir atención psicológica?</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
     <asp:CheckBox ID="res14p1" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 15 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>15.-¿Qué número de hijo eres?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res15p1" runat="server" Text=" " GroupName="pp15" />
                                        Mayor
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res15p2" runat="server" Text=" " GroupName="pp15" />
                                        Intermedio
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res15p3" runat="server" Text=" " GroupName="pp15" />
                                        Menor
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res15p4" runat="server" Text=" " GroupName="pp15" />
                                        Único
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 16 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>16.-¿Con quién vives actualmente?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res16p1" runat="server" Text=" " GroupName="pp16" />
                                        Papás
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res16p2" runat="server" Text=" " GroupName="pp16" />
                                        Familiares o Amigos
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res16p3" runat="server" Text=" " GroupName="pp16" />
                                        Casa de huespedes
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res16p4" runat="server" Text=" " GroupName="pp16" />
                                        Sólo
                                    </div>
                                </div>

                            </div>
                            <%-- Pregunta 17 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>17.-¿Cuál es tu preferencia sexual?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res17p1" runat="server" Text=" " GroupName="pp17" />
                                        Heterosexual
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res17p2" runat="server" Text=" " GroupName="pp17" />
                                        Homosexual
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res17p3" runat="server" Text=" " GroupName="pp17" />
                                        Bisexual
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res17p4" runat="server" Text="Otro." GroupName="pp17" Visible="false" />
                                    </div>
                                </div>
                            </div>
                            <%-- Pregunta 18 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>18.-¿Has asistido  a terapia psicológica anteriormente?</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s4" runat="server">
                                    <label>
                                        Si
      <asp:CheckBox ID="res18p1" runat="server" />
                                        <span class="lever"></span>
                                        
                                    </label>
                                </div>
                            </div>
                            <%-- Pregunta 19 Psicologo --%>
                            <div class="row">
                                <div class="col s12">
                                    <h4>19.-¿Cuántas horas duermes diariamente?</h4>
                                    <br />
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res19p1" runat="server" Text=" " GroupName="pp19" />
                                        Menos de 2 horas
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res19p2" runat="server" Text=" " GroupName="pp19" />
                                        De 2 a 5 horas
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res19p3" runat="server" Text=" " GroupName="pp19" />
                                        De 5 a 8 horas
                                    </div>
                                    <div style="font-size: medium" class="valign-wrapper ">
                                        <asp:RadioButton ID="res19p4" runat="server" Text=" " GroupName="pp19" />
                                        Más de 8 horas
                                    </div>
                                </div>
                            </div>
                            <div class="center">

                                <br />
                                <br />
                            </div>
                            <div class="row justify-content-center">
                                <asp:Button ID="ButtonAgregarPsicologo" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="ButtonAgregarPsicologo_Click" />
                            </div>
                                <br>
                                </br>
                                <br>
                                </br>
                        </div>
                            </div>
                    </asp:Panel>
  </div>
  <div class="tab-pane fade" id="acuse" role="tabpanel" aria-labelledby="v-pills-settings-tab">
        <%-- Banner de cuestionario Dentista y preguntas --%>
                    <asp:Panel ID="PanelAcuse" runat="server" Visible="false">
                        <div class="jumbotron card-panel  accent-1#ffffff white">
                            <h4 class="center-align">Impresión de acuse de realización de cuestionarios</h4>
                            <p>Este acuse sirve como comprobante de realización de encuesta.</p>
                            <br />
                            <div class="row">
                                <div class=" right-align">
                                    <asp:Button ID="ButtonAcuse" runat="server" Text="Imprimir" CssClass="btn btn-primary" OnClick="ButtonAcuse_Click" />
                                </div>
                            </div>
                            <br />
                        </div>
                    </asp:Panel>
  </div>
</div>
      
    </asp:Panel>
</div>
   






    <%-- Scripts --%>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/materialize.min.js"></script>
    <script type="text/javascript">
        function myFunction() {
            $('#v-pills-tab a[href="#dental"]').tab('show') // Select tab by name
        }
        function MyFunction1() {
            $('#v-pills-tab a[href="#psicologo"]').tab('show') // Select tab by name
        }
        function MyFunction2() {
            $('#v-pills-tab a[href="#acuse"]').tab('show') // Select tab by name
        }
        $(document).ready(function () {
            //código que queremos ejecutar
            $('.pushpin-demo-nav').each(function () {
                var $this = $(this);
                var $target = $('#' + $(this).attr('data-target'));
                $this.pushpin({
                    top: $target.offset().top,
                    bottom: $target.offset().top + $target.outerHeight() - $this.height()
                });
            });
            $('.target').pushpin({
                top: 0,
                bottom: 1000,
                offset: 0
            });
            $('.carousel').carousel();
            $('select').material_select();
            $('.parallax').parallax();
            $('.tooltipped').tooltip({ delay: 10 });
            $(".button-collapse").sideNav();
            $('.button-collapse').sideNav({
                menuWidth: 350, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true, width: 40, height: 30
                // Choose whether you can drag to open on touch screens
            });
            $('.modal').modal();

         
        });
        function cambiar1() {
            $('#dental').tab('show');
        }
    </script>
