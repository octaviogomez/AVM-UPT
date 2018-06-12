using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;
using Core.View;
using Core.Presenter;
using System.Data;

namespace AVM.Controles.Especialista
{
    public partial class contAgregarFechaBloqueada : System.Web.UI.UserControl,IFechasBloqueadas
    {
        CEspecialista objLoggerinf;


        CFechasBloqueadas ObjFechasBloqueadas;
        WFechasBloqueadas vistaFechasBloqueadas;

        GridViewRow FilaSeleccionada;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {

                ObjFechasBloqueadas = new CFechasBloqueadas();
                vistaFechasBloqueadas = new WFechasBloqueadas(this);

                CFechasBloqueadas objaux = new CFechasBloqueadas();
                objaux.pk_Especialista = Convert.ToInt32(objLoggerinf.Numero_Control);
                vistaFechasBloqueadas.ObtenerDatosListado(1, objaux);

            }
            else
            {
               
            }
        }

        #region IFechaBloqueadas
        public DataSet FechasDT
        {
            get
            {
                return null;
            }

            set
            {
                //no se implementa
            }
        }

        public CFechasBloqueadas ObjFechas
        {
            get
            {
                CFechasBloqueadas obj = new CFechasBloqueadas();
                obj.Fecha = TextBoxFecha.Text;
                obj.pk_Especialista = Convert.ToInt32(objLoggerinf.Numero_Control);
                return obj;

            }

            set
            {

            }
        }

        public void MensajeFechas(string Mensaje, int tipo)
        {

        }

        #endregion


       

        protected void ButtonAgregar_Click(object sender, EventArgs e)
        {
            vistaFechasBloqueadas.CrearFecha(ObjFechas, 2);
            Response.Redirect(Request.RawUrl);
        }
    }
}