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
        CAlumno objAlumno;


        WCuestionario WmiCuestionario;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            usuariologeado = new CEspecialista();
            usuariologeado = (CEspecialista)Session["UsuarioLogeadoEspecialista"];  //Objeto donde esta los datos de sesion del especialista

            if (usuariologeado != null)
            {
                WmiCuestionario = new WCuestionario(this);


                try
                {
                    string valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                    objAlumno = new CAlumno();
                    objAlumno.alu_NumControl = valor;
                    WmiCuestionario.ListarUsuarioHistorialClinico(4, objAlumno);
                }
                catch (Exception )
                {

                 
                }

             
            }
            else
            {
                Response.Redirect("/Sesion.aspx", true);
            }
        }

        #region ICuestionario

        public DataSet ListadoCuestionario
        {
            set
            {
                if (value!=null)
                {
                    try
                    {

                        d1.Text = value.Tables[0].Rows[0][1].ToString();
                        d2.Text = value.Tables[0].Rows[0][2].ToString();
                        d3.Text = value.Tables[0].Rows[0][3].ToString();
                        d4.Text = value.Tables[0].Rows[0][4].ToString();
                        d5.Text = value.Tables[0].Rows[0][5].ToString();
                        d6.Text = value.Tables[0].Rows[0][6].ToString();
                        d7.Text = value.Tables[0].Rows[0][7].ToString();
                        d8.Text = value.Tables[0].Rows[0][8].ToString();
                        d9.Text = value.Tables[0].Rows[0][9].ToString();
                        d10.Text = value.Tables[0].Rows[0][10].ToString();
                        d11.Text = value.Tables[0].Rows[0][11].ToString();
                    }
                    catch (Exception e)
                    {                    
                    }
                }
            }
        }

        public List<CCuestionario> LlenarComboSangre
        {
            get
            {
                return null;
            }

            set
            {

            }
        }

        public CCuestionario NewCuestionarioDental
        {
            get
            {
                return null;
            }
        }

        public CCuestionario NewCuestionarioMedico
        {
            get
            {
                return null;
            }
        }

        public CCuestionario NewCuestionarioPsicologico
        {
            get
            {
                return null;
            }
        }

        public void Mensaje(string Mensaje, int tipo)
        {

        }
        #endregion 

    }
}