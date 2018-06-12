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

namespace AVM.Controles.Especialista
{
    public partial class contFechasBloqueadas : System.Web.UI.UserControl,IFechasBloqueadas
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
                if (value != null)
                {
                    GridViewFechasBloqueadas.DataSource = value;
                    GridViewFechasBloqueadas.DataBind();

                }
            }
        }

        public CFechasBloqueadas ObjFechas
        {
            get
            {
                CFechasBloqueadas obj = new CFechasBloqueadas();
               // obj.Fecha = TextboxFecha.Text;
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


        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = "";
           // FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            if (e.CommandName == "Cancelar")
            {
                codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> $('#ModalEliminar').modal('show');</script>", false);
                TextBoxPkReservacion.Text = codigo;
            }
            

            //FilaSeleccionada.Dispose();
        }

        protected void ButtonAgregar_Click(object sender, EventArgs e)
        {
            vistaFechasBloqueadas.CrearFecha(ObjFechas, 2);
            Response.Redirect("/BloquearFechas.aspx", true);// no direcciona a la pagina default de la master
        }
        protected void ButtonEliminarFechaBloqueada_Click(object sender, GridViewCommandEventArgs e,EventArgs ea)
        {
            FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
            int x = Convert.ToInt32((((Label)FilaSeleccionada.FindControl("Label1")).Text));
            CFechasBloqueadas objAux = new CFechasBloqueadas();
            objAux.pk_FechaBloqueada = x;
            vistaFechasBloqueadas.CrearFecha(objAux, 3);
            Response.Redirect(Request.RawUrl);


        }
      protected void GridViewFechasBloqueadas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewFechasBloqueadas.PageIndex = e.NewPageIndex;
            GridViewFechasBloqueadas.DataBind();
        }
    }
}