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

                LabelNombreEspecialista.Text = objLoggerdUserEspecialista.Nombre;
                switch (objLoggerdUserEspecialista.fk_Especialidad)
                {
                    case "1":
                        ImageRolMedico.Visible = true;
                        break;
                    case "2":
                        ImageRolDental.Visible = true;
                        break;
                    case "3":
                        ImageRolPisco.Visible = true;
                        break;
                    default:
                        break;
                }
            }
            else
            {
                Response.Redirect("../../Default.aspx", true);
            }
        }
    }
}