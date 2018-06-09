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
            }
            else
            {
                Response.Redirect("../../Default.aspx", true);//
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if (FileUpload1.PostedFile.FileName == "")
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
                    case ".pdf": break;

                    default:
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelAviso').removeClass('ocultar').addClass('mostrar'); </script>");
                        return;
                }
                string archivo = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(carpetaCarnet + this.objLoggerinf.alu_NumControl + extencion);
            }
            catch (Exception e)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelAviso').removeClass('ocultar').addClass('mostrar'); </script>");

            }
            finally
            {
                Response.Redirect(Request.RawUrl);
               // Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelNotificacion').removeClass('ocultar').addClass('mostrar'); </script>");

            }

        }
    }
}
