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
    public partial class contReportesCuestionarioPsicologico : System.Web.UI.UserControl,IReporte
    {

        WReporte WReporteVista;

        List<CReporte> listaDatos = new List<CReporte>();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListReporte.Items.Clear();
                DropDownListReporte.Items.Add(new ListItem("Seleccione una opción:"));
                DropDownListReporte.Items.Add(new ListItem("1.- ¿La UPT fue tu primera opción?"));
                DropDownListReporte.Items.Add(new ListItem("2.- ¿La carrera que elegiste fue tu primera opción?"));
                DropDownListReporte.Items.Add(new ListItem("3.- ¿Qué tan satisfecho estás con la elección de tu carrera?"));
                DropDownListReporte.Items.Add(new ListItem("4.- ¿Sabes cuál es tu perfil vocacional?"));
                DropDownListReporte.Items.Add(new ListItem("5.- ¿Cuál es el acontecimiento más relevante de tu infancia (0-9 años)?"));
                DropDownListReporte.Items.Add(new ListItem("6.- ¿Cuál es el acontecimiento más relevante de tu adolescencia (10-19 años)?"));
                DropDownListReporte.Items.Add(new ListItem("7.- ¿Cómo consideras que es tu autoestima?"));
                DropDownListReporte.Items.Add(new ListItem("8.- ¿Cómo consideras tu capacidad para relacionarte con otras personas?"));
                DropDownListReporte.Items.Add(new ListItem("9.- ¿Tienes un proyecto de vida?"));
                DropDownListReporte.Items.Add(new ListItem("10.- ¿Cuantas horas duermes diariamente?"));

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
            if (DropDownListReporte.Text == "1.- ¿La UPT fue tu primera opción?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(7);

            }
            if (DropDownListReporte.Text == "2.- ¿La carrera que elegiste fue tu primera opción?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(8);

            }
            if (DropDownListReporte.Text == "3.- ¿Qué tan satisfecho estás con la elección de tu carrera?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(9);

            }
            if (DropDownListReporte.Text == "4.- ¿Sabes cuál es tu perfil vocacional?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(14);

            }
            if (DropDownListReporte.Text == "5.- ¿Cuál es el acontecimiento más relevante de tu infancia (0-9 años)?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(15);

            }
            if (DropDownListReporte.Text == "6.- ¿Cuál es el acontecimiento más relevante de tu adolescencia (10-19 años)?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(16);

            }
            if (DropDownListReporte.Text == "7.- ¿Cómo consideras que es tu autoestima?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(17);

            }
            if (DropDownListReporte.Text == "8.- ¿Cómo consideras tu capacidad para relacionarte con otras personas?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(18);

            }
            if (DropDownListReporte.Text == "9.- ¿Tienes un proyecto de vida?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(19);

            }
            if (DropDownListReporte.Text == "10.- ¿Cuantas horas duermes diariamente?")
            {
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporte(20);

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
                    ReportViewer1.LocalReport.DisplayName = "ReporteCuestionario ";
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
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CReporte> LlenarComboAños
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
        public void Mensaje(string mensaje, int tipo)
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}