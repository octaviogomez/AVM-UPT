using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data;

namespace AVM.Controles.Especialista
{
    public partial class contAdminAlumnos : System.Web.UI.UserControl, IAlumno
    {
        CEspecialista objLoggerinf;



        WAlumno wAlumno;


        List<CCombo> listaDatos = new List<CCombo>();
        public GridViewRow FilaSeleccionada
        {
            get;
            private set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                wAlumno = new WAlumno(this);

                if (!IsPostBack)
                {
              
                    wAlumno.ListadoGeneral(10, UsuarioActulizar);
                 
                }
            }
            else
            {
             
            }
        }


      
        #region IALumno
        public CAlumno UsuarioActulizar
        {
            get
            {
                CAlumno obj = new CAlumno();
                try
                {
                     obj.alu_NumControl = TextBoxidBuscar.Text;
                    //obj.alu_Nombre = Nombre.Text;
                    //obj.alu_ApePaterno = ApellidoP.Text;
                    //obj.alu_ApeMaterno = ApellidoM.Text;
                    //obj.alu_Sexo = GeneroList.SelectedValue;
                    //obj.alu_FechaNacimiento = FechaNacimiento.Text;
                    //obj.alu_Carrera = droplistCarrera.SelectedValue;
                }
                catch (Exception)
                {
                    obj = null;
                }
                return obj;
            }

            set
            {

            }
        }

        public CAlumno UsuarioLogeado
        {
            get
            {
                CAlumno obj = new CAlumno();
                try
                {
                    //obj.alu_NumControl = NumeroControl.Text;
                    //obj.alu_Nombre = Nombre.Text;
                    //obj.alu_ApePaterno = ApellidoP.Text;
                    //obj.alu_ApeMaterno = ApellidoM.Text;
                    //obj.alu_Sexo = GeneroList.SelectedValue;
                    //obj.alu_FechaNacimiento = FechaNacimiento.Text;
                    //obj.alu_Carrera = droplistCarrera.SelectedValue;
                }
                catch (Exception)
                {
                    obj = null;
                }
                return obj;
            }

            set
            {

            }
        }

        public DataSet UsuariosDt
        {
            get
            {
                return null;
            }

            set
            {
                if (value != null)
                {
                    GridViewListado.DataSource = value;
                    GridViewListado.DataBind();
                }
            }
        }

        public List<CCombo> LlenarCombo
        {
            get
            {
                return listaDatos;
            }
            set
            {
                if (value != null)
                { listaDatos = value; }

            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
                {
                    string codigo = "";
                    FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

                    if (e.CommandName == "Baja")
                    {
                        codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> $('#ModalEliminar').modal('show');</script>", false);
                        TextBoxIdUsuario.Text = codigo;
                    }
                    if (e.CommandName == "Consulta")
                    {
                        string id = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);// id de la reservacion

                        Response.Redirect("InfoUsuario.aspx?id="+id, true);//

                    }

                    FilaSeleccionada.Dispose();
                }
        protected void ButtonEliminarCita_Click(object sender, EventArgs e)
        {
            CAlumno objaux = new CAlumno();
            objaux.alu_NumControl = TextBoxIdUsuario.Text;
            wAlumno.EliminarAlumno(objaux, 12);
            Response.Redirect(Request.RawUrl);
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            wAlumno.ListadoGeneral(11, UsuarioActulizar);
        }
    }
}