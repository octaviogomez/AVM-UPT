using Core.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Masters
{
    public partial class Administrador : System.Web.UI.MasterPage
    {
        CEspecialista objLoggerdUserEspecialista;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerdUserEspecialista = (CEspecialista)Session["UsuarioLogeadoAdministrador"];

            if (objLoggerdUserEspecialista != null && objLoggerdUserEspecialista.Rol == 3)
            {

                LabelNombreAdministrador.Text = objLoggerdUserEspecialista.Nombre;
            }
            else
            {
                Response.Redirect("../../Default.aspx", true);
            }
        }
    }
}