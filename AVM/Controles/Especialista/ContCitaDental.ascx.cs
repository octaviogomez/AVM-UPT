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

namespace AVM.Controles.Especialista
{
    public partial class ContCitaDental : System.Web.UI.UserControl, IConsulta
    {
        CAlumno objInfo;
        CEspecialista objEspe;
        WConsulta vistaConsulta;
        protected void Page_Load(object sender, EventArgs e)
        {
            objInfo = (CAlumno)Session["DatosCitaAlumno"];
            objEspe = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objInfo != null && objEspe != null)
            {
                vistaConsulta = new WConsulta(this);
                LabelMatricula.Text = "Matrícula:" + objInfo.alu_NumControl;
                LabelNombre.Text = "Nombre:" + objInfo.alu_Nombre;
                LabelTipo.Text = "Tipo:" + objInfo.tipo_usuario;
            }
            else
            {
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
    }

}
