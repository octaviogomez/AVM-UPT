using System;
using System.Collections.Generic;
using System.Linq;
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
    public partial class contSubirArchivo : System.Web.UI.UserControl,IEspecialista
    {
        CEspecialista objLoggerinf;
        WEspecialista vistaEspecialista;

        public string carpeta;
        public string nombreReal;

        public bool bandera = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            bandera = false;

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                vistaEspecialista = new WEspecialista(this);
                carpeta = Server.MapPath("~/Files/examen/");//carpeta de archivos    
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);//
            }
        }


        public void UploadFile(object sender, EventArgs e)
        {
            nombreReal = TextBoxNombre.Text != "" ? TextBoxNombre.Text : FileUpload1.PostedFile.FileName;
            if (FileUpload1.PostedFile.FileName == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", "alert('No se seleccino archivo');", true);
            }
            else
            {
                if (File.Exists(Server.MapPath("../Archivos/Examen/" + nombreReal + ".pdf")))
                {

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



        #region IEspecialista
        public CEspecialista UsuarioLogeadoEspecialista { get { return null; } set { } }
        public DataSet Empleados { set { } }

        DataSet IEspecialista.Empleados
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {
            throw new NotImplementedException();
        }
        #endregion
    }
}