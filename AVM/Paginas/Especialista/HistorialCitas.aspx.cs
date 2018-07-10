using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;
using Core.Presenter;
using Core.View;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp.text.pdf;
using System.Data;

using Core.Model;
using Core.Presenter;
using Core.View;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp.text.pdf;


namespace AVM.Paginas.Especialista
{
    public partial class HistorialCitas : System.Web.UI.Page, IConsulta
    {



        WConsulta vistaConsulta;
        //Especialista
        CEspecialista usuariologeado;//Objeto donde se guarda los datos de sesion del especialista

        public GridViewRow FilaSeleccionada
        {
            get;
            private set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            usuariologeado = new CEspecialista();
            usuariologeado = (CEspecialista)Session["UsuarioLogeadoEspecialista"];  //Objeto donde esta los datos de sesion del especialista
            if (usuariologeado != null && usuariologeado.Rol == 2)
            {
                vistaConsulta = new WConsulta(this);

            }
            else
            {
                Response.Redirect("Default.aspx", true);
            }
        }

        public CConsulta DatosPasienteConsulta
        {
            get
            {
                CConsulta obj = new CConsulta();

                try
                {

                    obj.fk_Alumno = TextBoxidUsuario.Text;
                    obj.TipoUsuario = Convert.ToInt32(DropDownListTipo.SelectedValue);// Se establece el tipo de historial en esta propiedad 

                }
                catch (Exception)
                {

                    obj = null;
                }
                return obj;
            }
        }

        public int EliminarConsulta
        {
            get
            {
                return 0;
            }
        }

        public DataSet ListadoConsulta
        {
            set
            {
                if (value != null)
                {
                    DataSet obj = new DataSet();
                    obj = value;
                    GridViewHistorialCitas.DataSource = value;
                    GridViewHistorialCitas.DataBind();

                    if (obj.Tables[0].Rows.Count <= 0)
                    {

                    }
                    else
                    {

                    }

                }

            }
        }

        public List<CConsulta> LlenarComboEspecialidad
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CConsulta> LlenarComboEspecialista
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CConsulta> LlenarComboHora
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CConsulta> LlenarEnfermedad
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public CConsulta NewConsulta
        {
            get
            {
                return null;
            }
        }

        public DataSet Odontograma
        {
            set
            {
                if (value != null)
                {
                    LabelIdCita.Text = value.Tables[0].Rows[0][0].ToString();   // id de cita

                    LabelMatriculaAlumno.Text = value.Tables[0].Rows[0][1].ToString(); // matricula 
                    matriculaAlumnoPsico.Text = value.Tables[0].Rows[0][1].ToString(); // matricula 


                    ResumenAntecedente.Text = value.Tables[0].Rows[0][2].ToString(); // resumen antecedente
                    Peso.Text = value.Tables[0].Rows[0][3].ToString(); // peso
                    Talla.Text = value.Tables[0].Rows[0][4].ToString(); // talla
                    Presion.Text = value.Tables[0].Rows[0][5].ToString(); // presion

                    TextBoxDiagnostico.Text = value.Tables[0].Rows[0][6].ToString(); // diagnostico
                    diagnosticoPsico.Text = value.Tables[0].Rows[0][6].ToString(); // diagnostico


                    PlanTratamiento.Text = value.Tables[0].Rows[0][7].ToString(); // plan de tratamiento
                    tratamientoPsico.Text = value.Tables[0].Rows[0][7].ToString(); // plan de tratamiento

                    ResumenExploracion.Text = value.Tables[0].Rows[0][8].ToString();
                    exploPisco.Text = value.Tables[0].Rows[0][8].ToString();
                    //datos del medico
                    labelNombreMedico.Text = value.Tables[0].Rows[0][9].ToString();
                    NombrePsicologo.Text = value.Tables[0].Rows[0][9].ToString();


                    LabelEspecialidad.Text = value.Tables[0].Rows[0][10].ToString();
                    EspeciliadadPsicologo.Text = value.Tables[0].Rows[0][10].ToString();

                    LabelFecha.Text = value.Tables[0].Rows[0][11].ToString();
                    fechaPsico.Text = value.Tables[0].Rows[0][11].ToString();

                    labelHora.Text = value.Tables[0].Rows[0][12].ToString();
                    horapsico.Text = value.Tables[0].Rows[0][12].ToString();

                    LabelNombreAlumno.Text = value.Tables[0].Rows[0][13].ToString();
                    usuarioPsico.Text = value.Tables[0].Rows[0][13].ToString();

                    labelIdMedico.Text = value.Tables[0].Rows[0][14].ToString();
                    matriculaPsicologo.Text = value.Tables[0].Rows[0][14].ToString();
                    //add mas
                    Temperatura.Text = value.Tables[0].Rows[0][15].ToString();
                    Ritmocaridaco.Text = value.Tables[0].Rows[0][16].ToString();
                    Diasreposo.Text = value.Tables[0].Rows[0][17].ToString();

                }
            }
        }

        DataSet IConsulta.HistorialCitas
        {
            set
            {
                if (value != null)
                {

                }
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = "";
            FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            if (e.CommandName == "Consulta")
            {
                codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);

                vistaConsulta.ListarHistorialCitas(13, codigo, DatosPasienteConsulta);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> </script>", false);

            }


            FilaSeleccionada.Dispose();
        }

        protected void DropDownListTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

            vistaConsulta.ListarHistorialMedico(9, DatosPasienteConsulta);



            LinkButtonMedico.Visible = false;
            LinkButtonPsico.Visible = false;
            LinkButtonOdonto.Visible = false;
            switch (DropDownListTipo.SelectedValue)
            {


                case "1":
                    LinkButtonMedico.Visible = true;

                    break;

                case "2":
                    LinkButtonMedico.Visible = true;
                    break;

                case "3":
                    LinkButtonPsico.Visible = true;
                    break;
                case "4":
                    LinkButtonOdonto.Visible = true;
                    break;
                default:
                    break;
            }
        }


        private void IHPsico()
        {
            DateTime fechaHoy = DateTime.Now;
            string fecha = fechaHoy.ToShortDateString();
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HPsico.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table colspan=2> <tr><td><b>Tipo de consulta:</b> " + "Dental" + "</td><td><b>Fecha:</b> " + LabelFecha.Text + "</td></tr> </table>";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table border='1'>";
            cadenaFinal += "<tr><td colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Datos del médico</b></td></tr>";
            //Tiene que llevar el nombre del médico                                                         Tiene que llevar el nombre del médico  
            cadenaFinal += "<tr><td colspan=2><b>Nombre:</b> " + labelNombreMedico.Text + "<td colspan=2><b>Matrícula:</b> " + labelIdMedico.Text + "</td></tr>";
            cadenaFinal += "</table>";
            cadenaFinal += "<br/><br/><br/>";
            cadenaFinal += "<TABLE BORDER='1'>" +
                "<div> <TR><TD colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Datos del alumno</b> </TD></TR> </div>" +
                "<TR><TD colspan=2><b>Nombre:</b> " + LabelNombreAlumno.Text + "</TD><TD colspan=2><b>Matrícula:</b> " + LabelMatriculaAlumno.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Interrogatorio al paciente:</b> " + ResumenAntecedente.Text + "</TD></TR>" +

                            "<TR><TD colspan=4><b>Resumen Exploración Física:</b> " + ResumenExploracion.Text + "</TD></TR>" +
                            // "<TR><TD colspan=4><b>Diagnóstico:</b> " + TextBoxDiagnostico.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Plan de tratamiento:</b> " + PlanTratamiento.Text + "</TD></TR>" +
                            //"<tr><TD colspan=2><b>Días de reposo: </b>" + Diasreposo.Text + "</TD><TD colspan=2><b>Tipo de usuario: </b>" + TipoDeConsulta.Text + "</TD></tr>" +
                            "</TABLE><br/><br/><br/><br/>";
            cadenaFinal += "";
            string nom = "HistorialPsicológico " + LabelNombreAlumno.Text;
            ImprimirPDF(cadenaFinal, nom);
        }
        private void IHDental()
        {
            DateTime fechaHoy = DateTime.Now;
            string fecha = fechaHoy.ToShortDateString();
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HDental.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table colspan=2> <tr><td><b>Tipo de consulta:</b> " + "Dental" + "</td><td><b>Fecha:</b> " + LabelFecha.Text + "</td></tr> </table>";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table border='1'>";
            cadenaFinal += "<tr><td colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Datos del médico</b></td></tr>";
            //Tiene que llevar el nombre del médico                                                         Tiene que llevar el nombre del médico  
            cadenaFinal += "<tr><td colspan=2><b>Nombre:</b> " + labelNombreMedico.Text + "<td colspan=2><b>Matrícula:</b> " + labelIdMedico.Text + "</td></tr>";
            cadenaFinal += "</table>";
            cadenaFinal += "<br/><br/><br/>";
            cadenaFinal += "<TABLE BORDER='1'>" +
                "<div> <TR><TD colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Datos del alumno</b> </TD></TR> </div>" +
                "<TR><TD colspan=2><b>Nombre:</b> " + LabelNombreAlumno.Text + "</TD><TD colspan=2><b>Matrícula:</b> " + LabelMatriculaAlumno.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Resumen del antecedente:</b> " + ResumenAntecedente.Text + "</TD></TR>" +
                            "<TR><TD colspan=4 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Datos físicos</b> </TD></TR>" +
                            "<tr><td colspan=2><b>Talla:</b> " + Talla.Text + "</td>" +
                            "<td colspan=3><b>Peso:</b> " + Peso.Text + "</td>" +

                            "<td colspan=2><b>Presión:</b> " + Presion.Text + "/" + Presion.Text + "</td></tr>" +
                            "<tr><td colspan=2><b>Temperatura: </b>" + Temperatura.Text + "</td></tr>" +
                            "<TR><TD colspan=4><b>Resumen Exploración Física:</b> " + ResumenExploracion.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Diagnóstico:</b> " + TextBoxDiagnostico.Text + "</TD></TR>" +
                            "<TR><TD colspan=3><b>Plan de tratamiento:</b> " + PlanTratamiento.Text + "</TD><TD colspan=1><b>Dias de reposo:</b> " + Diasreposo.Text + "</TD></TR>" +
                            //"<tr><TD colspan=2><b>Días de reposo: </b>" + Diasreposo.Text + "</TD><TD colspan=2><b>Tipo de usuario: </b>" + TipoDeConsulta.Text + "</TD></tr>" +
                            "</TABLE><br/><br/><br/><br/>";
            cadenaFinal += "";
            string nom = "HistorialDental " + LabelNombreAlumno.Text;
            ImprimirPDF(cadenaFinal, nom);
        }
        private void IHMedico()
        {
            DateTime fechaHoy = DateTime.Now;
            string fecha = fechaHoy.ToShortDateString();
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HMedico.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table colspan=2> <tr><td><b>Tipo de consulta:</b> " + "Medica" + "</td><td><b>Fecha:</b> " + LabelFecha.Text + "</td></tr> </table>";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table border='1'>";
            cadenaFinal += "<tr><td colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Datos del médico</b></td></tr>";
            //Tiene que llevar el nombre del médico                                                         Tiene que llevar el nombre del médico  
            cadenaFinal += "<tr><td colspan=2><b>Nombre:</b> " + labelNombreMedico.Text + "<td colspan=2><b>Matrícula:</b> " + labelIdMedico.Text + "</td></tr>";
            cadenaFinal += "</table>";
            cadenaFinal += "<br/><br/><br/>";
            cadenaFinal += "<TABLE BORDER='1'>" +
                "<div> <TR><TD colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Datos del alumno</b> </TD></TR> </div>" +
                "<TR><TD colspan=2><b>Nombre:</b> " + LabelNombreAlumno.Text + "</TD><TD colspan=2><b>Matrícula:</b> " + LabelMatriculaAlumno.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Resumen del antecedente:</b> " + ResumenAntecedente.Text + "</TD></TR>" +
                            "<TR><TD colspan=4 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Datos físicos</b> </TD></TR>" +
                            "<tr><td colspan=2><b>Talla:</b> " + Talla.Text + "</td>" +
                            "<td colspan=3><b>Peso:</b> " + Peso.Text + "</td>" +

                            "<td colspan=2><b>Presión:</b> " + Presion.Text + "/" + Presion.Text + "</td></tr>" +
                            "<tr><td colspan=2><b>Temperatura: </b>" + Temperatura.Text + "</td></tr>" +
                            "<TR><TD colspan=4><b>Resumen Exploración Física:</b> " + ResumenExploracion.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Diagnóstico:</b> " + TextBoxDiagnostico.Text + "</TD></TR>" +
                            "<TR><TD colspan=3><b>Plan de tratamiento:</b> " + PlanTratamiento.Text + "</TD><TD colspan=1><b>Dias de reposo:</b> " + Diasreposo.Text + "</TD></TR>" +
                            //"<tr><TD colspan=2><b>Días de reposo: </b>" + Diasreposo.Text + "</TD><TD colspan=2><b>Tipo de usuario: </b>" + TipoDeConsulta.Text + "</TD></tr>" +
                            "</TABLE><br/><br/><br/><br/>";
            cadenaFinal += "";
            string nom = "HistorialMedico " + LabelNombreAlumno.Text;
            ImprimirPDF(cadenaFinal, nom);
        }
        public void ImprimirPDF(string cadenaFinal, string nom)
        {

            Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);

            try
            {
                PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

                //Open PDF Document to write data 
                pdfDoc.Open();

                cadenaFinal += "<h4> © Universidad Politécnica de Tulancingo.  Calle Ingenierías # 100. Col. Huapalcalco, Tulancingo, Hidalgo, México. C.P. 43629, Teléfono: 01(775) 75 5 82 02, Fax: 01(775) 75 5 83 21 </h5>";

                //Assign Html content in a string to write in PDF 
                string strContent = cadenaFinal;

                //Read string contents using stream reader and convert html to parsed conent 
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

                //Get each array values from parsed elements and add to the PDF document 
                foreach (var htmlElement in parsedHtmlElements)
                    pdfDoc.Add(htmlElement as IElement);

                //Close your PDF 
                pdfDoc.Close();

                Response.ContentType = "application/pdf";

                //Set default file Name as current datetime 
                Response.AddHeader("content-disposition", "attachment; filename=" + nom + ".pdf");
                System.Web.HttpContext.Current.Response.Write(pdfDoc);


                Response.Flush();
                Response.End();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = DropDownListTipo.SelectedItem.Text;

            switch (a)
            {
                case "Médico": { IHMedico(); } break;
                case "Dental": { IHDental(); } break;
                case "Psicológico": { IHPsico(); } break;
            }
        }
    }
}