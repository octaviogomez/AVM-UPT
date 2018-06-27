using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data;

using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.IO;

namespace AVM.Controles.Especialista
{
    public partial class contHistoPsico : System.Web.UI.UserControl,ICuestionario
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
                    WmiCuestionario.ListarUsuarioHistorialClinico(6, objAlumno);
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

                        p1.Text = value.Tables[0].Rows[0][0].ToString();
                        p2.Text = value.Tables[0].Rows[0][1].ToString();
                        p3.Text = value.Tables[0].Rows[0][2].ToString();
                        p4.Text = value.Tables[0].Rows[0][3].ToString();
                        p5.Text = value.Tables[0].Rows[0][4].ToString();
                        p6.Text = value.Tables[0].Rows[0][5].ToString();
                        p7.Text = value.Tables[0].Rows[0][6].ToString();
                        p8.Text = value.Tables[0].Rows[0][7].ToString();
                        p9.Text = value.Tables[0].Rows[0][8].ToString();
                        p10.Text = value.Tables[0].Rows[0][9].ToString();
                        p11.Text = value.Tables[0].Rows[0][10].ToString();
                        p12.Text = value.Tables[0].Rows[0][11].ToString();
                        p13.Text = value.Tables[0].Rows[0][12].ToString();
                        p14.Text = value.Tables[0].Rows[0][13].ToString();
                        p15.Text = value.Tables[0].Rows[0][14].ToString();
                        p16.Text = value.Tables[0].Rows[0][15].ToString();
                        p17.Text = value.Tables[0].Rows[0][16].ToString();
                        p18.Text = value.Tables[0].Rows[0][17].ToString();
                        p19.Text = value.Tables[0].Rows[0][18].ToString();

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

        protected void HyperLinkPsico_Click(object sender, EventArgs e)
        {
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HPsico.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<table colspan=2 border=2>";
            cadenaFinal += "<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Histotial Psicologico del alumno con la matrícula: <b>" + valor + "</b></td></tr>";
            cadenaFinal += "<tr><td><b>1.-¿La Universidad Politécnica de Tulancingo fue su primera opción?: </b></td><td>" + p1.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>2.-¿La carrera que eligió fue su primera opción?: </b></td><td>" + p2.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>3.-¿Qué tan satisfecho está con la elección de carrera?: </b></td><td>" + p3.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>4.-¿Sabe cuál es su perfil vocacional?: </b></td><td>" + p4.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>5.-¿Cómo es la relación con sus abuelos?: </b></td><td>" + p5.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>6.-¿Cómo es la relación con su mamá?: </b></td><td>" + p6.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>7.-¿Cómo es la relación con su papá?: </b></td><td>" + p7.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>8.-¿Cómo es la relación con sus hermanos?: </b></td><td>" + p8.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>9.-¿Cuál es el acontecimiento más relevante de su infancia?: </b></td><td>" + p9.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>10.-¿Cuál es el acontecimiento más relevante de su adolesencia?: </b></td><td>" + p10.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>11.-¿Cómo es su autoestima?: </b></td><td>" + p11.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>12.-¿Cómo considera su capacidad para relacionarse con otras personas?: </b></td><td>" + p12.Text + "</td><tr>";
            cadenaFinal += "<tr><td><b>13.-¿Tiene algún proyecto de vida?s: </b></td><td>" + p13.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>14.-¿Le gustaría recibir orientación psicológica?: </b></td><td>" + p14.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>15.-¿Número de hijo que es?: </b></td><td>" + p15.Text + "</td</tr>";
            cadenaFinal += "<tr><td><b>16.-¿Con quién vive actualmente?: </b></td><td>" + p16.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>17.-¿Cuales son sus preferencias sexuales?: </b></td><td>" + p17.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>18.-¿Ha asistido a terapia psicológica?: </b></td><td>" + p18.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>19.-¿Cuantas horas duermes diariamente?: </b></td><td>" + p19.Text + "</td></tr>";

            cadenaFinal += "</table>";

            cadenaFinal += "<br/><br/>";
            string nom = "HistorialPsicológico" + valor;
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