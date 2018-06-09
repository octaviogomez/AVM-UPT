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
    public partial class controlCitaRapida : System.Web.UI.UserControl, IConsulta
    {
        CEspecialista objLoggerinf;
        WConsulta vistaConsulta;

        CAlumno ObjTmAlumno;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                vistaConsulta = new WConsulta(this);
                ObjTmAlumno = new CAlumno();
                //llenado de datos de la pagina agregamos datos importantes
                LabelNombre.Text = " " + objLoggerinf.Nombre + " " + objLoggerinf.Apellido;
                LabelEspecialidad.Text = " " + objLoggerinf.Especialidad_texto;
            }
            else
            {
          

            }
        }

        #region IConsulta
        public CConsulta DatosPasienteConsulta
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public CConsulta NewConsulta
        {
            get
            {
                //Reguistro de la cita en la tabla de reservacion
                CConsulta miConsulta = new CConsulta();
                miConsulta.ConsultaActiva = 1;
                miConsulta.fk_Alumno = TextBoxIdAlumno.Text;
                miConsulta.fk_Especialista = objLoggerinf.Numero_Control;
                miConsulta.fk_Fecha = TextBoxFecha.Text;
                miConsulta.fk_Hora = DropDownListHorario.SelectedValue;

                miConsulta.TipoUsuario = (TipoUsuario.Checked) ? 2 : 1;
           


                return miConsulta;
            }
        }

        public int EliminarConsulta
        {
            get
            {
                return 0;
            }
        }

        public DataSet ListadoConsulta
        {

            set
            {

                try
                {
                    if (value != null)
                    {
                     LabelNombreAlumno.Text = value.Tables[0].Rows[0][6].ToString() + " " + value.Tables[0].Rows[0][7].ToString() + " " + value.Tables[0].Rows[0][8].ToString();
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No encontrado');", true);
                    }
                }
                catch
                {
                }
            }
        }

        public DataSet HistorialCitas
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

        public DataSet Odontograma
        {
            set
            {
                
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {
            //throw new NotImplementedException();
        }



        #endregion

        protected void ButtonBUscarID_Click(object sender, EventArgs e)
        {
            LabelNombreAlumno.Text = "";

            if (!string.IsNullOrWhiteSpace(TextBoxIdAlumno.Text))
            {
                vistaConsulta.DatosalumnoCitaRapida(11, TextBoxIdAlumno.Text);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Ingrese id pasiente');", true);
            }
        }

        protected void ButtonReuistrarConsulta_Click(object sender, EventArgs e)
        {
            bool Entro = true;
            if (TextBoxFecha.Text == "")
            {
                Entro = false;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Ingrese Fecha');", true);
                goto Fin;
            }
            if (TextBoxIdAlumno.Text == "")
            {
                Entro = false;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Ingrese Id del pasiente');", true);
                goto Fin;
            }
            if (LabelNombreAlumno.Text == "")
            {
                Entro = false;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Ingrese Id del pasiente');", true);
                goto Fin;
            }





            Fin:
            if (Entro)
            {
                vistaConsulta.Reguistrar(NewConsulta, 3);
                Response.Redirect("AgendaCitas.aspx", true);//
            }

        }
    }
}