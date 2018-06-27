using System;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.View;
using Core.Presenter;
using System.IO;
using System.Data;

namespace AVM.Controles.Especialista
{
    public partial class contSubirArchivo : System.Web.UI.UserControl
    {
        CEspecialista objLoggerinf;
  

        public string carpeta;
        public string nombreReal;

        public bool bandera = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            bandera = false;

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
            
                carpeta = Server.MapPath("~/Archivos/Examen/");
            }
            else
            {
                Response.Redirect("Default.aspx", true);//
            }
        }


        public void UploadFile(object sender, EventArgs e)
        {
            nombreReal = TextBoxNombre.Text != "" ? TextBoxNombre.Text : FileUpload1.PostedFile.FileName;
            if (FileUpload1.PostedFile.FileName == "" && FileUpload1.FileBytes.LongLength<1800000)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No se seleccino archivo');", true);
            }
            else
            {
                if (File.Exists(Server.MapPath("../Archivos/Examen/" + nombreReal + ".pdf")))
                {
                    //Remplazar?
                }
                else
                {
                    cargarArchivo();
                }
            }

        }

        public void cargarArchivo()
        {

            string extencion = Path.GetExtension(FileUpload1.PostedFile.FileName);
            switch (extencion.ToLower())
            {
                case ".pdf": break;

                default:
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('Formato no correcto   >:v');", true);
                    return;
            }
            try
            {
                string archivo = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(this.carpeta + this.nombreReal + extencion);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script > $('#PanelNotificacion').removeClass('ocultar').addClass('mostrar'); </script>");
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                Response.Redirect(Request.RawUrl);
                TextBoxNombre.Text = "";
            }

        }

     

      
    }
}