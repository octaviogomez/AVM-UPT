using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Controles.Admin
{
    public partial class contReportesCuestionarioPsicologico : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DropDownListReporte.Items.Clear();
                DropDownListReporte.Items.Add(new ListItem("Seleccione una opción:"));
                DropDownListReporte.Items.Add(new ListItem("1.- ¿La UPT fue tu primera opción?"));
                DropDownListReporte.Items.Add(new ListItem("2.- ¿La carrera que elegiste fue tu primera opción?"));
                DropDownListReporte.Items.Add(new ListItem("3.- ¿Qué tan satisfecho estás con la elección de tu carrera?"));
                DropDownListReporte.Items.Add(new ListItem("4.- ¿Sabes cuál es tu perfil vocacional?"));
                DropDownListReporte.Items.Add(new ListItem("5.- ¿Cuál es el acontecimiento más relevante de tu infancia (0-9 años)?"));
                DropDownListReporte.Items.Add(new ListItem("6.- ¿Cuál es el acontecimiento más relevante de tu adolescencia (10-19 años)?"));
                DropDownListReporte.Items.Add(new ListItem("7.- ¿Cómo consideras que es tu autoestima?"));
                DropDownListReporte.Items.Add(new ListItem("8.- ¿Cómo consideras tu capacidad para relacionarte con otras personas?"));
                DropDownListReporte.Items.Add(new ListItem("9.- ¿Tienes un proyecto de vida?"));
                DropDownListReporte.Items.Add(new ListItem("10.- ¿Cuantas horas duermes diariamente?"));

            }
        }
    }
}