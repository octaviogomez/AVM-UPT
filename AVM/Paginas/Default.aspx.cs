using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;
namespace AVM.Paginas
{
    public partial class Default : System.Web.UI.Page
    {
        CAlumno objLoggerinf;
        CEspecialista objLoggerdUserEspecialista;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];
            objLoggerdUserEspecialista = (CEspecialista)Session["UsuarioLogeadoEspecialista"];

            if (objLoggerinf != null)
            {
                Response.Redirect("Usuario/Default.aspx", true);
            }
            else
            if (objLoggerdUserEspecialista != null)
            {
                Response.Redirect("Especialista/Default.aspx", true);
            }
            else {
                Response.Redirect("../Default.aspx", true);
            }

        }
    }
}