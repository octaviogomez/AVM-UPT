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

namespace AVM.Controles.Admin
{
    public partial class contListadoUsuarios : System.Web.UI.UserControl, IEspecialista
    {
        CEspecialista objLoggerinf;
        WEspecialista vistaEspecialista;

        GridViewRow FilaSeleccionada;

        public int OpcionObjetoEspecialista = 0;

      
        protected void Page_Load(object sender, EventArgs e)
        {

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (true)
            {
                vistaEspecialista = new WEspecialista(this);

                vistaEspecialista.ListarEmpleados(2);
            }
            else
            {
                
            }

        }

        public CEspecialista UsuarioLogeadoEspecialista
        {
            get
            {
                return null;
            }

            set
            {
            }
        }

        public DataSet Empleados
        {
            set
            {
                if (value!=null)
                {
                    GridViewListado.DataSource = value;
                    GridViewListado.DataBind();
                }
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {
            
        }

        protected void GridViewListado_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = "";
            FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            if (e.CommandName == "Baja")
            {
                codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> $('#ModalEliminar').modal('show');</script>", false);
                TextBoxIdUsuario.Text = codigo;

            }
            if (e.CommandName == "Consulta")
            {
                string id = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);// id de la reservacion

                Response.Redirect("InfoUsuario.aspx?id=" + id, true);//

            }

            FilaSeleccionada.Dispose();
        }

        protected void ButtonEliminarCita_Click(object sender, EventArgs e)
        {
            try
            {
                CEspecialista objaux = new CEspecialista();
                objaux.Numero_Control = TextBoxIdUsuario.Text;
                vistaEspecialista.ConfiguracionEmpleados(objaux, 5);
                Response.Redirect(Request.RawUrl);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}