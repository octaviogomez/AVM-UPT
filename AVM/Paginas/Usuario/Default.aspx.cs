using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;

namespace AVM.Paginas.Usuario
{
    public partial class Default : System.Web.UI.Page
    {
        CAlumno objLoggerinf;
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];
            try
            {
                if (objLoggerinf == null )
                {
                    Response.Redirect("../../Default.aspx", true);//
                }
                else
                {
                    if (objLoggerinf != null)
                    {
                        if (objLoggerinf.Noseguro == "" || objLoggerinf.curp.ToString() == "")
                        {
                            PanelAvisoFalta.Visible = true;
                        }
                        else
                        {
                            PanelAvisoLleno.Visible = true;
                        }

                    }
                    else
                    {
                        PanelAvisoLleno.Visible = false;
                        PanelAvisoFalta.Visible = false;
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("../../Default.aspx", true);//

            }

        }
    }
}