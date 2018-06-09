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
    public partial class Usuario : System.Web.UI.MasterPage
    {
        CAlumno objLoggerinf;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];

            try
            {
                if (objLoggerinf == null)
                {
                    Response.Redirect("../../Default.aspx", true);//
                }
                else
                {
                    if (objLoggerinf != null)
                    {
                        LabelNombreAlumno.Text = objLoggerinf.alu_Nombre+ " "+objLoggerinf.alu_ApePaterno;

                    }
                  
                }
            }
            catch (Exception)
            {
                Response.Redirect("../Default.aspx", true);//

            }



        }
    }
}