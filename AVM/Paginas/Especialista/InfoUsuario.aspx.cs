using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Paginas.Especialista
{
    public partial class InfoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {

            try
            {
                int id = Convert.ToInt32(TextBoxidUsuario.Text);

                string pagina = "InfoUsuario.aspx?id=" +id ;
                Response.Redirect(pagina, true);//

            }
            catch (Exception)
            {
                PanelAviso.Visible = true;
            }
        }
    }
}