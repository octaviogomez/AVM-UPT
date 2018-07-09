using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Controles.Admin
{
    public partial class contReportesCuestionarioMedico : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListReporte.Items.Clear();
                DropDownListReporte.Items.Add(new ListItem("Seleccione una opción:"));
                DropDownListReporte.Items.Add(new ListItem("1.- Alimentación diaría"));
                DropDownListReporte.Items.Add(new ListItem("2.- ¿Cuantas veces realizas ejercicio?"));
                DropDownListReporte.Items.Add(new ListItem("3.- ¿Cual es su grupo sanguineo?"));
            }
           
        }
    }
}