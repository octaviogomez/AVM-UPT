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
    public partial class ContAltaAlumno : System.Web.UI.UserControl, IAlumno, ICombo
    {
        CEspecialista objLoggerinf;

        WAlumno wAlumno;

        WCombo Wcombo;
        List<CCombo> listaDatos = new List<CCombo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            objLoggerinf = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objLoggerinf != null && objLoggerinf.Rol == 2)
            {
                wAlumno = new WAlumno(this);

                if (!IsPostBack)
                {
                    Wcombo = new WCombo(this);//Hacer uso de metodos del combo
          
                    LlenadoCombo(droplistCarrera, 13, "PAlumno");
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
                    obj.alu_NumControl = NumeroControl.Text;
                    obj.alu_Nombre = Nombre.Text;
                    obj.alu_ApePaterno = ApellidoP.Text;
                    obj.alu_ApeMaterno = ApellidoM.Text;
                    obj.alu_Sexo = GeneroList.SelectedValue;
                    obj.alu_FechaNacimiento = FechaNacimiento.Text;
                    obj.alu_Carrera = droplistCarrera.SelectedValue;
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
                }
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion
        #region ICombo 
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
        #endregion
        private void LlenadoCombo(DropDownList Combo, int Opcion, string procedimiento)
        {
            Combo.Items.Clear();// limpiamos combo

            Wcombo.ListarDatosCarreras(Opcion, procedimiento);/// se implementa el llenado de la interfaz
            if (listaDatos != null)
            {
                foreach (CCombo item in listaDatos)
                {
                    Combo.Items.Add(new System.Web.UI.WebControls.ListItem(item.Descripcion, item.Id.ToString()));
                }
            }
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            wAlumno.AltaAlumno(UsuarioLogeado, 14);
            Response.Redirect(Request.RawUrl);
        }
    }
}