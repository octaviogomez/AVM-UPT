using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data;

namespace AVM.Controles.Usuario
{
    public partial class Agenda : System.Web.UI.UserControl,IConsulta
    {
        CAlumno objLoggerinf;
        CConsulta objConsultainf;//Objeto donde estara la informacion de logeo temporal

        WConsulta WConsultaVista;//meotodo para poder ocupar los metodos de la wAlumno

        GridViewRow FilaSeleccionada;

        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = new CAlumno();
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];

            WConsultaVista = new WConsulta(this);

            if (objLoggerinf != null)
            {
                objConsultainf = new CConsulta();

                if (!IsPostBack)
                {

                    WConsultaVista.Listar(5, DatosPasienteConsulta);
                }
            }
            else
            {
                Response.Redirect("Default.aspx", true);//
            }


        }
        #region IConsulta
        public CConsulta DatosPasienteConsulta
        {
            get
            {
                CConsulta Datos = new CConsulta();
                Datos.fk_Alumno = objLoggerinf.alu_NumControl;
                return Datos;
            }
        }
        public DataSet ListadoConsulta
        {
            set
            {
                if (value != null)
                {
                    GridViewCitasPasiente.DataSource = value;
                    GridViewCitasPasiente.DataBind();
                }
            }
        }
        public DataSet ListadoDeEspecialistas
        {
            set
            {
             
            }
        }
        public DataSet ListadoDeFechas
        {
            set
            {
                
            }
        }
        public DataSet ListadoDeHoras
        {
            set
            {
                
            }
        }
        public CConsulta NewConsulta
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
                int x = Convert.ToInt32("");
                return x;
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
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet HistorialCitas
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CConsulta> LlenarEnfermedad
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

        public DataSet Odontograma
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }

        #endregion
        #region ICombo
        #endregion

        protected void GridViewCitasPasiente_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = "";
            FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
         
            if (e.CommandName == "Cancelar")
            {
                codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);


                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> $('#ModalEliminar').modal('show');</script>", false);
                TextBoxPkReservacion.Text = codigo;
             

            }

            FilaSeleccionada.Dispose();
        }

        protected void ButtonEliminarCita_Click(object sender, EventArgs e)
        {
            WConsultaVista.EliminarConsulta(6, Convert.ToInt32(TextBoxPkReservacion.Text));
            Response.Redirect(Request.RawUrl);
        }
    }
}