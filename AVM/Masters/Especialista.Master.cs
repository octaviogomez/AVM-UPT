using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;

namespace AVM.Masters
{
    public partial class Especialista : System.Web.UI.MasterPage
    {
        CEspecialista objLoggerdUserEspecialista;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerdUserEspecialista = (CEspecialista)Session["UsuarioLogeadoEspecialista"];

            if (objLoggerdUserEspecialista != null && objLoggerdUserEspecialista.Rol == 2)
            {
              
                
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);
            }
        }
    }
}