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
    public partial class contHistoDental : System.Web.UI.UserControl, ICuestionario
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
                    WmiCuestionario.ListarUsuarioHistorialClinico(4, objAlumno);
                }
                catch (Exception )
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
                if (value!=null)
                {
                    try
                    {

                        d1.Text = value.Tables[0].Rows[0][0].ToString();
                        d2.Text = value.Tables[0].Rows[0][1].ToString();
                        d3.Text = value.Tables[0].Rows[0][2].ToString();
                        d4.Text = value.Tables[0].Rows[0][3].ToString();
                        d5.Text = value.Tables[0].Rows[0][4].ToString();
                        d6.Text = value.Tables[0].Rows[0][5].ToString();
                        d7.Text = value.Tables[0].Rows[0][6].ToString();
                        d8.Text = value.Tables[0].Rows[0][7].ToString();
                        d9.Text = value.Tables[0].Rows[0][8].ToString();
                        d10.Text = value.Tables[0].Rows[0][9].ToString();
                        d11.Text = value.Tables[0].Rows[0][10].ToString();
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

        protected void HyperLinkDental_Click(object sender, EventArgs e)
        {
            string cadenaFinal = "";
            string path = Server.MapPath("../../Imagenes/universidad/HDental.png");
            cadenaFinal += "<img src='" + path + "' Height='150' Width='500' />";
            cadenaFinal += "<table colspan=2 border=2>";
            cadenaFinal += "<tr><td colspan=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Historial Dental del alumno con la matrícula: <b>" + valor + "</td></tr>";
            cadenaFinal += "<tr><td><b>1.-Última vez que acudió al dentista: </b></td><td>" + d1.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>2.-Motivo de su última consulta dental: </b></td><td>" + d2.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>3.-¿Cómo calificó su boca?: </b></td><td>" + d3.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>4.-¿Cuantas veces al día cepilla sus dientes?: </b></td><td>" + d4.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>5.-¿Le truena la mandíbula cuando abre mucho la boca?: </b></td><td>" + d5.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>6.-¿Le sangran las encias cuando se cepilla los dientes?: </b></td><td>" + d6.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>7.-¿Tiene dificultad para abrir la boca en algunas ocasiones?: </b></td><td>" + d7.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>8.-¿Se ha quedado alguna vez con la boca abierta y ha tenido incapacidad para cerrarla?: </b></td><td>" + d8.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>9.-¿Has tenido perforaciones en la boca (piercings)?: </b></td><td>" + d9.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>10.-¿Ha presentado mal aliento?: </b></td><td>" + d10.Text + "</td></tr>";
            cadenaFinal += "<tr><td><b>11.-¿Tienes el hábito de morderte las uñas, tallarte o morder objetos?: </b></td><td>" + d11.Text + "</td></tr>";


            cadenaFinal += "</table>";

            cadenaFinal += "<br/><br/>";
            string nom = "HistorialDental" + valor;
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