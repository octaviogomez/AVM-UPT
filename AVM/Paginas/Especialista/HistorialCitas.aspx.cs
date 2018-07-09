using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;
using Core.Presenter;
using Core.View;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp.text.pdf;
using System.Data;

namespace AVM.Paginas.Especialista
{
    public partial class HistorialCitas : System.Web.UI.Page, IConsulta
    {



        WConsulta vistaConsulta;
        //Especialista
        CEspecialista usuariologeado;//Objeto donde se guarda los datos de sesion del especialista


        public enum tabIndex {
            tab1=1,
            tab2=2
        }
        public void setTab(tabIndex value) {
            HiddenField1.Value = ((int)value).ToString();
        }

        public GridViewRow FilaSeleccionada
        {
            get;
            private set;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            usuariologeado = new CEspecialista();
            usuariologeado = (CEspecialista)Session["UsuarioLogeadoEspecialista"];  //Objeto donde esta los datos de sesion del especialista
            if (usuariologeado != null && usuariologeado.Rol == 2)
            {
                vistaConsulta = new WConsulta(this);
     
            }
            else
            {
                Response.Redirect("Default.aspx", true);
            }
        }

        public CConsulta DatosPasienteConsulta
        {
            get
            {
                CConsulta obj = new CConsulta();

                try
                {
                  
                    obj.fk_Alumno = TextBoxidUsuario.Text;
                    obj.TipoUsuario = Convert.ToInt32(DropDownListTipo.SelectedValue);// Se establece el tipo de historial en esta propiedad 

                }
                catch (Exception)
                {

                    obj=null;
                }
                return obj;
            }
        }

        public int EliminarConsulta
        {
            get
            {
                return 0;
            }
        }

        public DataSet ListadoConsulta
        {
            set
            {
                if (value != null)
                {
                    DataSet obj = new DataSet();
                    obj = value;
                    GridViewHistorialCitas.DataSource = value;
                    GridViewHistorialCitas.DataBind();

                    if (obj.Tables[0].Rows.Count <= 0)
                    {
                      
                    }
                    else
                    {
                       
                    }

                }
            
            }
        }

        public List<CConsulta> LlenarComboEspecialidad
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

        public List<CConsulta> LlenarComboEspecialista
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

        public List<CConsulta> LlenarComboHora
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

        public List<CConsulta> LlenarEnfermedad
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

        public CConsulta NewConsulta
        {
            get
            {
                return null;
            }
        }

        public DataSet Odontograma
        {
            set
            {
                if (value!=null)
                {
                    LabelIdCita.Text = value.Tables[0].Rows[0][0].ToString();   // id de cita

                    LabelMatriculaAlumno.Text = value.Tables[0].Rows[0][1].ToString(); // matricula 
                    matriculaAlumnoPsico.Text = value.Tables[0].Rows[0][1].ToString(); // matricula 


                    ResumenAntecedente.Text = value.Tables[0].Rows[0][2].ToString(); // resumen antecedente
                    Peso.Text = value.Tables[0].Rows[0][3].ToString(); // peso
                    Talla.Text = value.Tables[0].Rows[0][4].ToString(); // talla
                    Presion.Text = value.Tables[0].Rows[0][5].ToString(); // presion

                    TextBoxDiagnostico.Text = value.Tables[0].Rows[0][6].ToString(); // diagnostico
                    diagnosticoPsico.Text = value.Tables[0].Rows[0][6].ToString(); // diagnostico


                    PlanTratamiento.Text = value.Tables[0].Rows[0][7].ToString(); // plan de tratamiento
                    tratamientoPsico.Text= value.Tables[0].Rows[0][7].ToString(); // plan de tratamiento

                    ResumenExploracion.Text = value.Tables[0].Rows[0][8].ToString();
                    exploPisco.Text = value.Tables[0].Rows[0][8].ToString();
                    //datos del medico
                    labelNombreMedico.Text = value.Tables[0].Rows[0][9].ToString();
                    NombrePsicologo.Text= value.Tables[0].Rows[0][9].ToString();


                    LabelEspecialidad.Text = value.Tables[0].Rows[0][10].ToString();
                    EspeciliadadPsicologo.Text= value.Tables[0].Rows[0][10].ToString();

                    LabelFecha.Text = value.Tables[0].Rows[0][11].ToString();
                    fechaPsico.Text = value.Tables[0].Rows[0][11].ToString();

                    labelHora.Text = value.Tables[0].Rows[0][12].ToString();
                    horapsico.Text = value.Tables[0].Rows[0][12].ToString();

                    LabelNombreAlumno.Text = value.Tables[0].Rows[0][13].ToString();
                    usuarioPsico.Text= value.Tables[0].Rows[0][13].ToString();

                    labelIdMedico.Text = value.Tables[0].Rows[0][14].ToString();
                    matriculaPsicologo.Text = value.Tables[0].Rows[0][14].ToString();
                    //add mas
                    Temperatura.Text = value.Tables[0].Rows[0][15].ToString();
                    Ritmocaridaco.Text = value.Tables[0].Rows[0][16].ToString();
                    Diasreposo.Text = value.Tables[0].Rows[0][17].ToString();

                }
            }
        }

        DataSet IConsulta.HistorialCitas
        {
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

        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = "";
            FilaSeleccionada = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

            if (e.CommandName == "Consulta")
            {
                codigo = (((Label)FilaSeleccionada.FindControl("LabelId")).Text);

                vistaConsulta.ListarHistorialCitas(13, codigo, DatosPasienteConsulta);
                
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script> </script>", false);
                setTab(tabIndex.tab2);
            }


            FilaSeleccionada.Dispose();
        }

        protected void DropDownListTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

            vistaConsulta.ListarHistorialMedico(9, DatosPasienteConsulta);



            LinkButtonMedico.Visible = false;
            LinkButtonPsico.Visible = false;
            LinkButtonOdonto.Visible = false;
            switch (DropDownListTipo.SelectedValue)
            {


                case "1":
                    LinkButtonMedico.Visible = true;

                    break;

                case "2":
                    LinkButtonMedico.Visible = true;
                    break;

                case "3":
                    LinkButtonPsico.Visible = true;
                    break;
                case "4":
                    LinkButtonOdonto.Visible = true;
                    break;
                default:
                    break;
            }
        }
    }
}