using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;
using System.IO;

namespace AVM.Controles.Usuario
{
    public partial class SubirCarnet : System.Web.UI.UserControl
    {
        CAlumno objLoggerinf;
    

        public string carpetaCarnet;

        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CAlumno)Session["UsuarioLogeado"];
            if (objLoggerinf != null && objLoggerinf.alu_Rol == 1)
            {
                carpetaCarnet = Server.MapPath("~/Archivos/Carnet/");//carpeta de archivos   

                //Carga de carnet

                //Para optimzar esto, se puede crear una interfaz llamada archivo la cual se implementaria en las paginas a usar
                // y al momento de hacer llamando de esta, en la parte de set se establce cual objeto Embedido seria

                try
                {
                    string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"600px\" height=\"500px\">";
                    embed += "If you are unable to view file, you can download from <a href = \"{0}\">here</a>";
                    embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                    embed += "</object>";
                    PDFCarnet.Text = string.Format(embed, ResolveUrl("~/Archivos/Carnet/" + objLoggerinf.alu_NumControl + ".pdf"));

                }
                catch (Exception)
                {


                }
            }
            else
            {
                Response.Redirect("../../Default.aspx", true);//
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile.FileName == ""  && FileUpload1.FileBytes.Length<2000000)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelAviso').removeClass('ocultar').addClass('mostrar'); </script>");

            }
            else
            {
                cargarArchivo();
            }

        }
        public void cargarArchivo()
        {
    
            try
            {
                string extencion = Path.GetExtension(FileUpload1.PostedFile.FileName);
                switch (extencion.ToLower())
                {
                    case ".pdf":
                        break;
                    default:
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelAviso').removeClass('ocultar').addClass('mostrar'); </script>");
                        return;
                }
                string archivo = Path.GetFileName(FileUpload1.PostedFile.FileName);
                try
                {
                   
                    FileUpload1.PostedFile.SaveAs(carpetaCarnet + this.objLoggerinf.alu_NumControl + extencion);
                }
                catch (Exception)
                {

                    string A = "";
                }
                 
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script >   $('#PanelNotificacion').removeClass('ocultar').addClass('mostrar'); </script>");

            }
            catch (Exception e)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelAviso').removeClass('ocultar').addClass('mostrar'); </script>");

            }
        

        }

      
    }
}
