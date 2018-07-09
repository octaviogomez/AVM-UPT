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