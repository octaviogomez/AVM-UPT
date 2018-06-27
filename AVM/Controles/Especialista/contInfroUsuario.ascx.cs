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
    public partial class contInfroUsuario : System.Web.UI.UserControl, IAlumno
    {
        CAlumno objLoggerinf;
        WAlumno vistaAlumno;

        CEspecialista objLoggerinfEspecialista;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            objLoggerinfEspecialista = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            vistaAlumno = new WAlumno(this);
            if ((objLoggerinfEspecialista != null && objLoggerinfEspecialista.Rol == 2))
            {
                vistaAlumno.ActualizarDatosDeAlumno(UsuarioLogeado);
            }
            else
            {
                Response.Redirect("../../Default.aspx", true);//
            }

        }

        #region Interfaz Alumno
        public CAlumno UsuarioLogeado
        {
            get
            {
                CAlumno objaux = new CAlumno();
                try
                {
                    string valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                    objaux.alu_NumControl = valor;
                }
                catch (Exception)
                {
                    objaux.alu_NumControl = "0";
                }
                return objaux;
            }
            set
            {
                //Del objeto obtenido se establece los valores a las etiquetas
                if (value != null)
                {
                    LabelNumeroControl.Text = value.alu_NumControl.ToString();
                    LabelClave.Text = value.alu_Password;
                    LabelNombre.Text = value.alu_Nombre;                  
                    LabelSexo.Text = value.alu_Sexo;
                    LabelFechaNacimiento.Text = value.alu_FechaNacimiento;
                    LabelCarrera.Text = value.alu_Carrera;
                    LabelNoSeguro.Text = value.Noseguro;
                    LabelCurp.Text = value.curp;
                    LabelIngreso.Text = value.AnioRegistro;
          

                }else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>      $('#PanelAviso').removeClass('ocultar').addClass('mostrar');</script>", false);

                }
            }
        }
        public CAlumno UsuarioActulizar
        {
            get { return this.objLoggerinf; }
            set
            {
                if (value != null)
                {
                    objLoggerinf = value;
                    LabelNumeroControl.Text = value.alu_NumControl.ToString();
                    LabelNombre.Text = value.alu_Nombre + " " + value.alu_ApePaterno + " " + value.alu_ApeMaterno;
                    LabelSexo.Text = value.alu_Sexo;
                    LabelFechaNacimiento.Text = value.alu_FechaNacimiento;
                    LabelCarrera.Text = value.alu_Carrera;
                    LabelNoSeguro.Text = value.Noseguro;
                    LabelCurp.Text = value.curp;
                    LabelIngreso.Text = value.AnioRegistro;
                    LabelClave.Text = value.alu_Password;
               

                }
                else {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>      $('#PanelAviso').removeClass('ocultar').addClass('mostrar');</script>", false);
                }
            }
        }

        public DataSet UsuariosDt { get { return null; } set { } }

        public void Mensaje(string Mensaje, int tipo)
        {

        }

        #endregion
    }
}