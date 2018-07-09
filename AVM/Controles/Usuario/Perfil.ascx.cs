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

namespace AVM.Controles.Usuario
{
    public partial class Perfil : System.Web.UI.UserControl,IAlumno
    {
        CAlumno objLoggerinf;
        WAlumno vistaAlumno;

        public string carpetaCarnet;

        public bool bandera = false;

        public int opcionGetUsuarioLogeado = 0;

        protected void Page_Load(object sender, EventArgs e)
        { 
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];
            vistaAlumno = new WAlumno(this);
            if (objLoggerinf != null)
            {

                LabelNumeroControl.Text = objLoggerinf.alu_NumControl;
                LabelClave.Text = objLoggerinf.alu_Password;
                LabelNombre.Text = objLoggerinf.alu_Nombre + " " + objLoggerinf.alu_ApePaterno + " " + objLoggerinf.alu_ApeMaterno;
                LabelSexo.Text = objLoggerinf.alu_Sexo;
                LabelFechaNacimiento.Text = objLoggerinf.alu_FechaNacimiento;
                LabelCarrera.Text = objLoggerinf.alu_Carrera;
                LabelNoSeguro.Text = objLoggerinf.Noseguro;
                LabelCurp.Text = objLoggerinf.curp;

                //Activacion del panel de aviso
                PanelAviso.Visible = (objLoggerinf.curp == "") ? true : false;


            }
            else {
                Response.Redirect("Default.aspx", true);//
            }

        }
        #region InterfazAlumno
        public CAlumno UsuarioLogeado
        {
            get
            {
                CAlumno objaux = this.objLoggerinf;

                switch (this.opcionGetUsuarioLogeado)
                {
                    case 0:
                        return this.objLoggerinf;
                    case 1:
                        objaux.alu_Password = (textboxClave1.Text == textboxClave1.Text) ? textboxClave1.Text : objaux.alu_Password;
                        return objaux;
                    case 2:
                        objaux.Noseguro = textboxNoSocial.Text;
                        objaux.curp = textboxCurp.Text;
                        return objaux;


                    default:
                        return this.objLoggerinf;

                }
            } 
                set
            {
                //Del objeto obtenido se establece los valores a las etiquetas
                if (value != null)
                {

                   // textboxContra.Text = value.alu_Password;

                    //para la parte de numero y curop
                    textboxNoSocial.Text = value.Noseguro;
                    textboxCurp.Text = value.curp;
                }
            }
        }
        public CAlumno UsuarioActulizar {
            get { return this.objLoggerinf; }
            set {
                if (value!=null)
                {
                    this.objLoggerinf = value;
                }
            }
        }

        public DataSet UsuariosDt { get { return null; } set { } }

        public void Mensaje(string Mensaje, int tipo)
        {

        }


        #endregion

        protected void ButtonActualizarNoSocial_Click(object sender, EventArgs e)
        {
            if (textboxNoSocial.Text != "" || !string.IsNullOrWhiteSpace(textboxNoSocial.Text))
            {
                this.opcionGetUsuarioLogeado = 2;
                vistaAlumno.crudAlumno(UsuarioLogeado, 7);

                vistaAlumno.ActualizarDatosDeAlumno(UsuarioLogeado); //actualizamos los datos de la variable se sesion   
                Session.Clear();// limpiamos la sesion  

                Session.Add("UsuarioLogeado", UsuarioActulizar);

                textboxNoSocial.Text = "";

                Response.Redirect(Request.RawUrl);
            }
            else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Datos requeridos');", true);
            }
        }

        protected void ButtonActulizarCurp_Click(object sender, EventArgs e)
        {
            if (textboxCurp.Text != "" || !string.IsNullOrWhiteSpace(textboxCurp.Text))
            {
                this.opcionGetUsuarioLogeado = 2;
                vistaAlumno.crudAlumno(UsuarioLogeado, 15);

                Session.Clear();// limpiamos la sesion

                vistaAlumno.ActualizarDatosDeAlumno(UsuarioLogeado); //actualizamos los datos de la variable se sesion   

                Session.Add("UsuarioLogeado", UsuarioActulizar);

                textboxNoSocial.Text = "";

                Response.Redirect(Request.RawUrl);
            }
            else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Datos requeridos');", true);
            }
        }

        protected void ButtonContrasena_Click(object sender, EventArgs e)
        {
            this.opcionGetUsuarioLogeado = 1;
            if (textboxClave1.Text == textboxClave2.Text && textboxClave1.Text != "" && textboxClave2.Text != "")
            {
           
                vistaAlumno.crudAlumno(UsuarioLogeado, 8);
                Response.Redirect("../../Default.aspx", true);//
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No son iguales');", true);
            }
        }
    }
}