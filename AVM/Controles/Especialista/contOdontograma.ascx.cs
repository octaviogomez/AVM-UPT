using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;

using Core.Model;
using Core.Presenter;
using Core.View;

namespace AVM.Controles.Especialista
{
    public partial class contOdontograma : System.Web.UI.UserControl, IOdontograma
    {



        WOdontograma wOdontograma;
        CEspecialista objEspe;
        CAlumno miAlumno;
        protected void Page_Load(object sender, EventArgs e)
        {
            objEspe = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            miAlumno = (CAlumno)Session["DatosCitaAlumno"];
            if (miAlumno != null)
            {
                wOdontograma = new WOdontograma(this);
                wOdontograma.ListarOdontograma(14, miAlumno.alu_NumControl);    // llenado del odontograma

            }
        }
        #region IOdontograma
        public COdontograma newOdontograma
        {
            get
            {
                COdontograma obj = new COdontograma();
                try
                {
                    obj.fk_Especialista = objEspe.Numero_Control;
                    obj.fk_Alumno = miAlumno.alu_NumControl;
                    obj.Diente = Convert.ToInt32(NumeroDiente.Text);
                    obj.DiagnositcoOdontograma = DiagnosticoDiente.Text;
                    obj.TratatmientoOdontograma = TratamientoDiente.Text;
                    obj.ObservacionesOdontograma = ComentarioDiente.Text;

                }
                catch (Exception)
                {

                    obj = null;
                }
                return obj;
            }

            set
            {

            }
        }

        public DataSet Odontograma
        {
            set
            {
                if (value != null)
                {
                    GridViewOdontogtrama.DataSource = value; //Pestañana 2 se genera el historial de citas medicas
                    GridViewOdontogtrama.DataBind();
                }
            }
        }

        public void MensajeOdontograma(string Mensaje, int tipo)
        {

        }
        #endregion

        protected void AgregarOdontograma_Click(object sender, EventArgs e)
        {
            wOdontograma.InsertarOdontograma(15, newOdontograma);
            wOdontograma.ListarOdontograma(14, miAlumno.alu_NumControl);
            NumeroDiente.Text = "";
            DiagnosticoDiente.Text = "";
            TratamientoDiente.Text = "";
            ComentarioDiente.Text = "";
        }
    }
}