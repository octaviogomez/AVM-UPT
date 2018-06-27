using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;
using Core.Model;
using Core.Presenter;
using Core.View;
namespace AVM.Controles.Especialista
{
    public partial class contCitaMedica : System.Web.UI.UserControl, IConsulta
    {
        CAlumno objInfo;
        CEspecialista objEspe;
        WConsulta vistaConsulta;
        protected void Page_Load(object sender, EventArgs e)
        {
            objInfo = (CAlumno)Session["DatosCitaAlumno"];
            objEspe = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objInfo != null && objEspe!=null)
            {
                vistaConsulta = new WConsulta(this);
                LabelMatricula.Text = "Matrícula:"+objInfo.alu_NumControl;
                LabelNombre.Text = "Nombre:"+objInfo.alu_Nombre;
                LabelTipo.Text = "Tipo:"+objInfo.tipo_usuario;
            }
            else {
                Response.Redirect("AgendaCitas.aspx", true);// no direcciona a la pagina default de la master

            }
        }

        #region IConsulta
        public CConsulta DatosPasienteConsulta
        {
            get
            {
                return null;
            }
        }

        public int EliminarConsulta
        {
            get
            {
                return 0;
            }
        }

        public DataSet HistorialCitas
        {
            set
            {

            }
        }

        public DataSet ListadoConsulta
        {
            set
            {

            }
        }

        public List<CConsulta> LlenarComboEspecialidad
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public List<CConsulta> LlenarComboEspecialista
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public List<CConsulta> LlenarComboHora
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public List<CConsulta> LlenarEnfermedad
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public CConsulta NewConsulta
        {
            get
            {
                CConsulta Datos = new CConsulta();
                try
                {
                    Datos.fk_Alumno = objInfo.alu_NumControl; 
                    Datos.fk_Especialista = objEspe.pk_Especialista;
                    Datos.pk_Reservacion = objInfo.pk_Reservacion; 
                    Datos.ResumenAntecedente = ResumenAntecedente.Text; //Interrogatorio al paciente
                    Datos.Talla = (Talla.Text != "") ? float.Parse(Talla.Text) : 0;
                    Datos.Temperatura = (Temperatura.Text != "") ? float.Parse(Temperatura.Text) : 0;
                    Datos.Peso = (Peso.Text != "") ? float.Parse(Peso.Text) : 0;
                    Datos.RitmoCardiaco = (RtimoCardiaco.Text != "") ? float.Parse(RtimoCardiaco.Text) : 0;
                    Datos.PresionArterial = (Presion1.Text != "" && Presion.Text != "") ? float.Parse(Presion.Text) / float.Parse(Presion1.Text) : 0;
                    Datos.ExploracionFisica = ResumenExploracion.Text;
                    Datos.Diagnostico = (autocompleteDiagnostico.Text != "") ? autocompleteDiagnostico.Text : "Sin especificacion";
                    Datos.PlanDeTratamiento = PlanTratamiento.Text;
                    Datos.DiasReposo = (DiasReposo.Text != "") ? int.Parse(DiasReposo.Text) : Datos.DiasReposo = 0;                  
                }
                catch (Exception)
                {
                    Datos = null;
                }

                return Datos;
            }
        }

        public DataSet Odontograma
        {
            set
            {

            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion

        protected void ButtonGuardar_Click(object sender, EventArgs e)
        {
            vistaConsulta.ReguistrarConsulta(NewConsulta);
            Response.Redirect("AgendaCitas.aspx", true);
        }

        protected void ImageButtonImpresora_Click(object sender, ImageClickEventArgs e)
        {
            DateTime fechaHoy = DateTime.Now;
            string fecha = fechaHoy.ToShortDateString();
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/encabezadoReseta.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table colspan=2> <tr><td><b>Tipo de consulta:</b> " + objEspe.Especialidad_texto + "</td><td><b>Fecha:</b> " + fecha + "</td></tr> </table>";
            cadenaFinal += "<br/><br/>";
            cadenaFinal += "<table border='1'>";
            cadenaFinal += "<tr><td colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Datos del médico</b></td></tr>";
            //Tiene que llevar el nombre del médico                                                         Tiene que llevar el nombre del médico  
            cadenaFinal += "<tr><td colspan=2><b>Nombre:</b> " + objEspe.Nombre + " " + objEspe.Apellido + "<td colspan=2><b>Cédula profesional:</b> " + objEspe.Cedula + "</td></tr>";
            cadenaFinal += "</table>";
            cadenaFinal += "<br/><br/><br/>";
            cadenaFinal += "<TABLE BORDER='1'>" +
                "<div> <TR><TD colspan=4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Datos del alumno</b> </TD></TR> </div>" +
                "<TR><TD colspan=2><b>Nombre:</b> " + LabelNombre.Text + "</TD><TD colspan=2><b>Matrícula:</b> " + LabelMatricula.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Diagnóstico:</b> " + autocompleteDiagnostico.Text + "</TD></TR>" +
                            "<TR><TD colspan=4><b>Plan de tratamiento:</b> " + PlanTratamiento.Text + "</TD></TR>" +
           //                 "<tr><TD colspan=2><b>Días de reposo: </b>" + DiasReposo.Text + "</TD><TD colspan=2><b>Tipo de usuario: </b>" + TipoDeConsulta.Text + "</TD></tr>" +
                            "</TABLE><br/><br/><br/><br/>";
            cadenaFinal += "<table border=1><tr><td>Especialista: " + objEspe.Nombre + " " + objEspe.Apellido + "</td><td>Firma</td></tr></table>";
            string nom = "RecetaMedica" + LabelNombre.Text;

            ImprimirPDF(cadenaFinal, nom);
        }

        private void ImprimirPDF(string cadenaFinal, string nom)
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
    }

}