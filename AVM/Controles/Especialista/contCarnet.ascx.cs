using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Controles.Especialista
{
    public partial class contCarnet : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VistaPDF();
        }
        protected void VistaPDF()
        {
            //Para optimzar esto, se puede crear una interfaz llamada archivo la cual se implementaria en las paginas a usar
            // y al momento de hacer llamando de esta, en la parte de set se establce cual objeto Embedido seria

            try
            {
                string valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
                embed += "If you are unable to view file, you can download from <a href = \"{0}\">here</a>";
                embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                embed += "</object>";
                PDFCarnet.Text = string.Format(embed, ResolveUrl("~/Archivos/Carnet/" + valor + ".pdf"));



            }
            catch (Exception)
            {


            }
        }
    }
}