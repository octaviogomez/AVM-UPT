using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;
using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data.SqlClient;

namespace AVM.Controles.Admin
{
    public partial class contEstadisticasEspecialistas : System.Web.UI.UserControl, IReporte
    {
        List<CReporte> listaDatos = new List<CReporte>();
        WReporte WReporteVista;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListExportar.Items.Clear();
                DropDownListExportar.Items.Add(new ListItem("PDF"));
                DropDownListExportar.Items.Add(new ListItem("WORD"));
                DropDownListExportar.Items.Add(new ListItem("EXCEL"));
                DropDownListExportar.Items.Add(new ListItem("PNG"));
                //LLenar combo de carreras
                DropDownListEspecialista.Items.Clear();
                LlenadoComboEspecialista(DropDownListEspecialista, 2, "1");
                //fin de combo
                WReporteVista = new WReporte(this);
                WReporteVista.obtenerDatosReporteFecha(10, txtFechaInicio.Text, txtFechaFin.Text, int.Parse(DropDownListEspecialista.SelectedValue));
            }
        }
        private void LlenadoComboEspecialista(DropDownList Combo, int Opcion, string Id)
        {
            WReporteVista = new WReporte(this);
            WReporteVista.ListarEspecilistas(Opcion, Id);/// se implementa el llenado de la interfaz
            if (listaDatos != null)
            {
                foreach (CReporte item in listaDatos)
                {
                    Combo.Items.Add(new ListItem(item.Descripcion, item.Id.ToString()));
                }
            }
        }
        public void verReporte_Click(object sender, EventArgs e)
        {
            WReporteVista = new WReporte(this);
            WReporteVista.obtenerDatosReporteFecha(10, txtFechaInicio.Text, txtFechaFin.Text, int.Parse(DropDownListEspecialista.SelectedValue));


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
        public DataSet datosReportes
        {
            set
            {
                if (value != null)
                {
                    ReportViewer1.LocalReport.DataSources.Clear();

                    // conjunto de modo de procesamiento Reportar como local  
                    ReportViewer1.ProcessingMode = ProcessingMode.Local;
                    // establecer la ruta del informe local  
                    ReportViewer1.LocalReport.ReportPath = Server.MapPath("../../Controles/Admin/Report.rdlc");

                    // Proporcionar origen de datos para el Informe obtenido del BDManager
                    ReportDataSource rds = new ReportDataSource("DataSet1", value.Tables[0]);

                    //Limpiar los origenes de datos del reporte
                    ReportViewer1.LocalReport.DataSources.Clear();

                    // Añadir ReportDataSource  
                    ReportViewer1.LocalReport.DataSources.Add(rds);

                }
            }
        }

        public List<CReporte> listaDatosReporte
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CReporte> LlenarComboAños
        {
            get
            { return listaDatos; }
            set
            {
                if (value != null)
                { listaDatos = value; }
            }
        }

        public List<CReporte> LlenarComboEspecialista
        {
            get
            { return listaDatos; }
            set
            {
                if (value != null)
                { listaDatos = value; }
            }
        }

        public void Mensaje(string mensaje, int tipo)
        {
            throw new NotImplementedException();
        }
    }
}