using System;
using System.Web.UI.WebControls;
using System.Data;

using Core.Model;
using Core.Presenter;
using Core.View;
using System.Web.UI;

namespace AVM
{
    public partial class Default : System.Web.UI.Page,IAlumno,IEspecialista
    {
        public CAlumno objLoggerinf;//Objeto donde estara la informacion de logeo temporal
        public WAlumno WAlumnoVista;//Objeto para poder ocupar los metodos de la wAlumno


        CEspecialista objLoggerinfEs;
        WEspecialista WEspecialistaVista;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            if (!IsPostBack)
            {
                DropDownListRoles.Items.Clear();
                DropDownListRoles.Items.Add(new ListItem("Alumno", "1"));
                DropDownListRoles.Items.Add(new ListItem("Especialista", "2"));
            }
            //Inicializamos el objeto y le pasamos this como interfaz
            WAlumnoVista = new WAlumno(this);
            objLoggerinf = new CAlumno();

            objLoggerinfEs = new CEspecialista();
            WEspecialistaVista = new WEspecialista(this);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownListRoles.SelectedValue == "1")
            {
                WAlumnoVista.ObtenerDatosDeAlumno(1, UsuarioLogeado); //En este metodo hace que el UsuarioLogeado objeto los valores del loggeo   
                if (objLoggerinf != null)//Comparamos si el objeto que nos regreso y agregamos(declarado como objLoggerinf ) es nulo si es nulo no entra y si si nos manda a la pagina de inicio de la pagina
                {
                    Session.Clear();// limpiamos la sesion
                    Session.Add("UsuarioLogeado", objLoggerinf);//Creamos la variable de sesion en donde la podremos utlizar cuando nos mande a la master
                    Response.Redirect("/Paginas/Usuario/Default.aspx", true);// no direcciona a la pagina default de la master
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>  $('#PanelAviso').removeClass('ocultar').addClass('mostrar');</script>", false);

                }



            }
            if (DropDownListRoles.SelectedValue == "2")
            {
                WEspecialistaVista.ObtenerDatosDeEspecialista(1, UsuarioLogeadoEspecialista); //En este metodo hace que el UsuarioLogeado objeto los valores del loggeo   
                if (objLoggerinfEs != null)//Comparamos si el objeto que nos regreso y agregamos(declarado como objLoggerinf ) es nulo si es nulo no entra y si si nos manda a la pagina de inicio de la pagina
                {
                    Session.Clear();// limpiamos la sesion
                    
                    if (objLoggerinfEs.Rol==3)
                    {
                        Session.Add("UsuarioLogeadoAdministrador", objLoggerinfEs);//Creamos la variable de sesion en donde la podremos utlizar cuando nos mande a la master

                        Response.Redirect("/Paginas/Admin/Default.aspx", true);// no direcciona a la pagina default de la master
                    }

                    if (objLoggerinfEs.Rol == 2)
                    {
                        Session.Add("UsuarioLogeadoEspecialista", objLoggerinfEs);//Creamos la variable de sesion en donde la podremos utlizar cuando nos mande a la master
                        Response.Redirect("/Paginas/Especialista/Default.aspx", true);// no direcciona a la pagina default de la master
                    }
                    else {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>  $('#PanelAviso').removeClass('ocultar').addClass('mostrar');</script>", false);
                    }
                }


            }


        }

        public void Mensaje(string Mensaje, int tipo)
        {
            
        }

        #region  Interfaz de Alumnos
        public CAlumno UsuarioLogeado
        {
            get
            {
                CAlumno objLoggerdUser = new CAlumno();
                objLoggerdUser.alu_Password = TextBoxContrasena.Text;
                objLoggerdUser.alu_NumControl = TextBoxNumeroDeControl.Text;
                objLoggerdUser.alu_Rol = 1;
                return objLoggerdUser;
            }
            set
            {
                if (value != null)
                {
                    this.objLoggerinf = value;
                    
                    
                }
                else {
                    this.objLoggerinf = null;
                }
            }
        }
        public CAlumno UsuarioActulizar
        {
            get
            {
                return null;
            }

            set
            {
              
            }
        }
        public DataSet UsuariosDt { get { return null; } set { } }
        #endregion
        #region IEspecialista

        public CEspecialista UsuarioLogeadoEspecialista
        {
            get
            {
                CEspecialista objLoggerdUser = new CEspecialista();
                objLoggerdUser.Contrasena = TextBoxContrasena.Text;
                objLoggerdUser.Numero_Control = TextBoxNumeroDeControl.Text;

                return objLoggerdUser;
            }
            set
            {
                if (value != null)
                {

                    objLoggerinfEs.pk_Especialista = value.pk_Especialista.ToString();
                    objLoggerinfEs.Activo = value.Activo.ToString();
                    objLoggerinfEs.Cedula = value.Cedula.ToString();
                    objLoggerinfEs.Numero_Control = value.Numero_Control.ToString();
                    objLoggerinfEs.Nombre = value.Nombre.ToString();
                    objLoggerinfEs.Apellido = value.Apellido.ToString();
                    objLoggerinfEs.FechaNacimiento = value.FechaNacimiento.ToString();
                    objLoggerinfEs.Genero = value.Genero.ToString();
                    objLoggerinfEs.Direccion = value.Direccion.ToString();
                    objLoggerinfEs.Correo = value.Correo.ToString();
                    objLoggerinfEs.Telefono = value.Telefono.ToString();
                    objLoggerinfEs.fk_Especialidad = value.fk_Especialidad;
                    objLoggerinfEs.Especialidad_texto = value.Especialidad_texto;

                    objLoggerinfEs.Rol = Convert.ToInt32(value.Rol);
                    

                }
                else {
                    objLoggerinfEs = null;
                }
            }
        }

        public DataSet Empleados {

            set
            { 
            }
        }

        #endregion
    }

}