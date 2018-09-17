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

namespace AVM.Controles.Admin
{
    public partial class contAltaUsuario : System.Web.UI.UserControl, IEspecialista
    {
        CEspecialista objLoggerinf;
        WEspecialista vistaEspecialista;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoAdministrador"];
            if (objLoggerinf != null && objLoggerinf.Rol == 3)
            {
                vistaEspecialista = new WEspecialista(this);
            }

        }

        #region Especialista
        public CEspecialista UsuarioLogeadoEspecialista
        {
            get
            {
                CEspecialista ObjEspecialista = new CEspecialista();

                try
                {

                    ObjEspecialista.Activo = "1";
                    ObjEspecialista.Cedula = Cedula.Text;
                    ObjEspecialista.Numero_Control = NumeroControl.Text;
                    ObjEspecialista.pk_Especialista = NumeroControl.Text;
                    ObjEspecialista.Contrasena = Clave.Text;
                    ObjEspecialista.Nombre = Nombre.Text;
                    ObjEspecialista.Apellido = Apellido.Text;
                    ObjEspecialista.FechaNacimiento = TextBoxFecha.Text;
                    ObjEspecialista.Direccion = Direccion.Text;
                    ObjEspecialista.Correo = Correo.Text;
                    ObjEspecialista.Telefono = Telefono.Text;
                    ObjEspecialista.fk_Especialidad = RolEspecialista.SelectedValue;
                    ObjEspecialista.Rol = Convert.ToInt32(Rol.SelectedValue);
                    ObjEspecialista.Genero = GeneroList.SelectedValue;
                }
                catch (Exception)
                {

                    ObjEspecialista = null;
                }


                return ObjEspecialista;
            }
            set
            {
            }
        }
        public DataSet Empleados
        {
            set
            {
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion

        protected void LinkButtonGuardar_Click(object sender, EventArgs e)
        {
            vistaEspecialista.ConfiguracionEmpleados(UsuarioLogeadoEspecialista, 3);
            Response.Redirect("AdminUsuarios.aspx", true);//
        }
    }
}