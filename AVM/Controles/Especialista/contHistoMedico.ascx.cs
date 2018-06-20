using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Core.Model;
using Core.Presenter;
using Core.View;


using System.IO;
using System.Data;

using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace AVM.Controles.Especialista
{
    public partial class contHistoMedico : System.Web.UI.UserControl,ICuestionario
    {
        CEspecialista usuariologeado;//Objeto donde se guarda los datos de sesion del especialista
        CAlumno objAlumno;


        WCuestionario WmiCuestionario;
        string valor;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuariologeado = new CEspecialista();
            usuariologeado = (CEspecialista)Session["UsuarioLogeadoEspecialista"];  //Objeto donde esta los datos de sesion del especialista

            if (usuariologeado != null)
            {
                WmiCuestionario = new WCuestionario(this);


                try
                {
                    valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                    objAlumno = new CAlumno();
                    objAlumno.alu_NumControl = valor;
                    WmiCuestionario.ListarUsuarioHistorialClinico(5, objAlumno);
                }
                catch (Exception)
                {


                }


            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);
            }
        }

        #region ICuestionario

        public DataSet ListadoCuestionario
        {
            set
            {
                if (value != null)
                {
                    try
                    {

                        m1.Text = value.Tables[0].Rows[0][0].ToString();
                        m2.Text = value.Tables[0].Rows[0][1].ToString();
                        m3.Text = value.Tables[0].Rows[0][2].ToString();
                        m4.Text = value.Tables[0].Rows[0][3].ToString();
                        m5.Text = value.Tables[0].Rows[0][4].ToString();
                        m6.Text = value.Tables[0].Rows[0][5].ToString();
                        m7.Text = value.Tables[0].Rows[0][6].ToString();
                        m8.Text = value.Tables[0].Rows[0][7].ToString();
                        m9.Text = value.Tables[0].Rows[0][8].ToString();
                        m10.Text = value.Tables[0].Rows[0][9].ToString();
                        m11.Text = value.Tables[0].Rows[0][10].ToString();
                        m12.Text = value.Tables[0].Rows[0][11].ToString();
                        m13.Text = value.Tables[0].Rows[0][12].ToString();
                        m14.Text = value.Tables[0].Rows[0][13].ToString();
                        m15.Text = value.Tables[0].Rows[0][14].ToString();
                        m16.Text = value.Tables[0].Rows[0][15].ToString();
                        m17.Text = value.Tables[0].Rows[0][16].ToString();
                        m18.Text = value.Tables[0].Rows[0][17].ToString();
                        m19.Text = value.Tables[0].Rows[0][18].ToString();
                        m20.Text = value.Tables[0].Rows[0][19].ToString();
                        m21.Text = value.Tables[0].Rows[0][20].ToString();
                        m22.Text = value.Tables[0].Rows[0][21].ToString();
                        m23.Text = value.Tables[0].Rows[0][22].ToString();
                        m24.Text = value.Tables[0].Rows[0][23].ToString();
                        m25.Text = value.Tables[0].Rows[0][24].ToString();
                    }
                    catch (Exception e)
                    {
                    }
                }
            }
        }

        public List<CCuestionario> LlenarComboSangre
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public CCuestionario NewCuestionarioDental
        {
            get
            {
                return null;
            }
        }

        public CCuestionario NewCuestionarioMedico
        {
            get
            {
                return null;
            }
        }

        public CCuestionario NewCuestionarioPsicologico
        {
            get
            {
                return null;
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion

        protected void HyperLinkMedico_Click(object sender, EventArgs e)
        {
            
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HMedico.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<table colspan=2 border=2>";
            cadenaFinal += "<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Historial Médico del alumno con la matrícula: <b>" + valor + "</td></tr>";
            cadenaFinal += "<tr><td><b>1.-Alimentación diaria: </b></td><td>" + m1.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>2.-Veces que realiza ejercicio por semana: </b></td><td>" + m2.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>3.-Tipo de sangre: </b></td><td>" + m3.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>4.-Frecuencia de consumo de bebidas alcóholicas: </b></td><td>" + m4.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>5.-Frecuencia de consumo de tabaco: </b></td><td>" + m5.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>6.-Consumo de drogas ilegales: </b></td><td>" + m6.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>7.-Padecimiento de alergias: </b></td><td>" + m7.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>8.-Enfermedades que padece: </b></td><td>" + m8.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>9.-Frecuencia con que se baña: </b></td><td>" + m9.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>10.-Tipo de baño que hay donde vive: </b></td><td>" + m10.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>11.- Vive en lugares con enfermedades como el Dengue,Paludismo,etce: </b></td><td>" + m11.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>12.-Está en tratamientos hormonales: </b></td><td>" + m12.Text + "</td><tr>";
            cadenaFinal += "<tr><td><b>13.-Toma anticonceptivos: </b></td><td>" + m13.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>14.-¿Alguna vez le practicaron cirugía?: </b></td><td>" + m14.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>15.-¿Le han practicado una transfusión sanguínea?: </b></td><td>" + m15.Text + "</td</tr>";
            cadenaFinal += "<tr>><td><b>16.-¿Está en contacto directo con pacientes diagnosticados con VIH o Tuberculosis?: </b></td><td>" + m16.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>17.-Estatura(cm): </b></td><td>" + m17.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>18.-Peso(kg): </b></td><td>" + m18.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>19.-Cálculo IMC: </b></td><td>" + m19.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>20.-¿Su regla es regular?: </b></td><td>" + m20.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>21.-¿Está embarazada?: </b></td><td>" + m21.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>22.-¿Está lactando?: </b></td><td>" + m22.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>23.-Enfermedades que padecieron los abuelos: </b></td><td>" + m24.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>24.-Enfermedades que padecieron los padres: </b></td><td>" + m16.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>25.-Enfermedades que padecieron los hermanos primos y tíos: </b></td><td>" + m25.Text + "</td></tr>";

            cadenaFinal += "</table>";

            cadenaFinal += "<br/><br/>";
            string nom = "HistorialMedico" + valor;
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