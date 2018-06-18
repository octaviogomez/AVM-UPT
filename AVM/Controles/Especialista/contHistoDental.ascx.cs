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
    public partial class contHistoDental : System.Web.UI.UserControl, ICuestionario
    {
        CEspecialista usuariologeado;//Objeto donde se guarda los datos de sesion del especialista

        WCuestionario WmiCuestionario;

        public DataSet ListadoCuestionario
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet ListadoCuestionarioDental
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet ListadoCuestionarioMedico
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet ListadoCuestionarioPsicologico
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        public List<CCuestionario> LlenarComboSangre
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public CCuestionario NewCuestionarioDental
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public CCuestionario NewCuestionarioMedico
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public CCuestionario NewCuestionarioPsicologico
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {
            throw new NotImplementedException();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            usuariologeado = new CEspecialista();
            usuariologeado = (CEspecialista)Session["UsuarioLogeadoEspecialista"];  //Objeto donde esta los datos de sesion del especialista

            if (usuariologeado != null)
            {
                WmiCuestionario = new WCuestionario(this);


                if (!IsPostBack)
                {

                }
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);
            }
        }
    }
}