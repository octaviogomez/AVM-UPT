using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;
using Core.Presenter;
using Core.View;
using Microsoft.Reporting.WebForms;

namespace AVM.Controles.Admin
{
    public partial class contReportesCuestionarioMedico : System.Web.UI.UserControl,IReporte
    {
        WReporte WReporteVista;
        string reporte;
        List<CReporte> listaDatos = new List<CReporte>();

       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListReporte.Items.Clear();
                DropDownListReporte.Items.Add(new ListItem("Seleccione una opción:"));
                DropDownListReporte.Items.Add(new ListItem("1.- Alimentación diaría"));
                DropDownListReporte.Items.Add(new ListItem("2.- ¿Cuantas veces realizas ejercicio?"));
                DropDownListReporte.Items.Add(new ListItem("3.- ¿Cual es su grupo sanguineo?"));

                DropDownListExportar.Items.Clear();
                DropDownListExportar.Items.Add(new ListItem("PDF"));
                DropDownListExportar.Items.Add(new ListItem("WORD"));
                DropDownListExportar.Items.Add(new ListItem("EXCEL"));
                DropDownListExportar.Items.Add(new ListItem("PNG"));
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(10);
            }
           
        }

        protected void DropDownClick(object sender, EventArgs e)
        {
            if (DropDownListReporte.Text == "1.- Alimentación diaría")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(1);

            }
            if (DropDownListReporte.Text == "2.- ¿Cuantas veces realizas ejercicio?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(2);
            }

            if (DropDownListReporte.Text == "3.- ¿Cual es su grupo sanguineo?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(3);

            }
        }
        public void exportarReporte(string formato, string extension)
        {
            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string filenameExtension;

            byte[] bytes = ReportViewer1.LocalReport.Render(
                formato, null, out mimeType, out encoding, out filenameExtension,
                out streamids, out warnings);

            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = mimeType;
            Response.AddHeader("content-disposition", "attachment; filename= reporte" + "." + extension);
            Response.OutputStream.Write(bytes, 0, bytes.Length); // create the file  
            Response.Flush(); // send it to the client to download  
            Response.End();
        }
        protected void DropDownClickExportar(object sender, EventArgs e)
        {
            if (DropDownListExportar.Text == "PDF")
            {
                exportarReporte("PDF", "pdf");

            }
            if (DropDownListExportar.Text == "WORD")
            {
                exportarReporte("WORD", "docx");

            }
            if (DropDownListExportar.Text == "EXCEL")
            {
                exportarReporte("EXCEL", "xls");

            }
            if (DropDownListExportar.Text == "PNG")
            {
                exportarReporte("image", "png");

            }

        }
        #region interfaz
        public List<CReporte> listaDatosReporte
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet datosReportes
        {
            set
            {
                if (value != null)
                {
                    ReportViewer1.LocalReport.DataSources.Clear();

                    // conjunto de modo de procesamiento Reportar como local  
                    ReportViewer1.ProcessingMode = ProcessingMode.Local;
                    // establecer la ruta del informe local  C:\Users\octav\Desktop\AVM\AVM\Controles\
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("../../Controles/Admin/Report.rdlc");
                    ReportViewer1.LocalReport.DisplayName = "ReporteCuestionario " + reporte;
                    // Proporcionar origen de datos para el Informe obtenido del BDManager
                    ReportDataSource rds = new ReportDataSource("DataSet1", value.Tables[0]);

                    //Limpiar los origenes de datos del reporte
                    ReportViewer1.LocalReport.DataSources.Clear();

                    // Añadir ReportDataSource  
                    ReportViewer1.LocalReport.DataSources.Add(rds);
                }
            }
        }

        public List<CReporte> LlenarComboEspecialista
        {
            get
            {
                return null;
            }

            set
            {
              
            }
        }

        public List<CReporte> LlenarComboAños
        {
            get
            {
                return null;
            }

            set
            {
               
            }
        }
        public void Mensaje(string mensaje, int tipo)
        {
         
        }
        #endregion
    }
}