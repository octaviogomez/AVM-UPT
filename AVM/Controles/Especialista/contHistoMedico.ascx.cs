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
using System.Data;

namespace AVM.Controles.Especialista
{
    public partial class contHistoMedico : System.Web.UI.UserControl,ICuestionario
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
                    WmiCuestionario.ListarUsuarioHistorialClinico(5, objAlumno);
                }
                catch (Exception)
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
                if (value != null)
                {
                    try
                    {

                        m1.Text = value.Tables[0].Rows[0][0].ToString();
                        m2.Text = value.Tables[0].Rows[0][1].ToString();
                        m3.Text = value.Tables[0].Rows[0][2].ToString();
                        m4.Text = value.Tables[0].Rows[0][3].ToString();
                        m5.Text = value.Tables[0].Rows[0][4].ToString();
                        m6.Text = value.Tables[0].Rows[0][5].ToString();
                        m7.Text = value.Tables[0].Rows[0][6].ToString();
                        m8.Text = value.Tables[0].Rows[0][7].ToString();
                        m9.Text = value.Tables[0].Rows[0][8].ToString();
                        m10.Text = value.Tables[0].Rows[0][9].ToString();
                        m11.Text = value.Tables[0].Rows[0][10].ToString();
                        m12.Text = value.Tables[0].Rows[0][11].ToString();
                        m13.Text = value.Tables[0].Rows[0][12].ToString();
                        m14.Text = value.Tables[0].Rows[0][13].ToString();
                        m15.Text = value.Tables[0].Rows[0][14].ToString();
                        m16.Text = value.Tables[0].Rows[0][15].ToString();
                        m17.Text = value.Tables[0].Rows[0][16].ToString();
                        m18.Text = value.Tables[0].Rows[0][17].ToString();
                        m19.Text = value.Tables[0].Rows[0][18].ToString();
                        m20.Text = value.Tables[0].Rows[0][19].ToString();
                        m21.Text = value.Tables[0].Rows[0][20].ToString();
                        m22.Text = value.Tables[0].Rows[0][21].ToString();
                        m23.Text = value.Tables[0].Rows[0][22].ToString();
                        m24.Text = value.Tables[0].Rows[0][23].ToString();
                        m25.Text = value.Tables[0].Rows[0][24].ToString();
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