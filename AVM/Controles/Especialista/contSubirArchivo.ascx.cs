using System;

using System.Web.UI;
using Core.Model;
using System.IO;
using System.Web;

namespace AVM.Controles.Especialista
{
    public partial class contSubirArchivo : System.Web.UI.UserControl
    {
       public CAlumno objLoggerinf;//objeto que tiene datos del GET
        public string carpetaCarnet;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            objLoggerinf = new CAlumno();
            carpetaCarnet = Server.MapPath("~/Archivos/Examen/");//carpeta de archivos   


            try
            {
                string valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                objLoggerinf.alu_NumControl = valor;

                HyperLinkVistaCompleta.NavigateUrl = "~/Archivos/Examen/"+valor+".pdf";
            }
            catch (Exception)
            {
                objLoggerinf.alu_NumControl = "0";
            }




            try
            {
                string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"800px\" height=\"700px\">";
                embed += "If you are unable to view file, you can download from <a href = \"{0}\">here</a>";
                embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                embed += "</object>";
                PDFCarnet.Text = string.Format(embed, ResolveUrl("~/Archivos/Examen/" + objLoggerinf.alu_NumControl + ".pdf"));

            }
            catch (Exception)
            {


            }

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile.FileName == "" && FileUpload1.FileBytes.Length < 2000000)
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