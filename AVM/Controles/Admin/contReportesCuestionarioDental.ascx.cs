using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AVM.Controles.Admin
{
    public partial class contReportesCuestionarioDental : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListReporte.Items.Clear();
                DropDownListReporte.Items.Add(new ListItem("Seleccione una opción:"));
                DropDownListReporte.Items.Add(new ListItem("1.- ¿Cuando fue la última vez que fuiste al dentista?"));
                DropDownListReporte.Items.Add(new ListItem("2.- ¿Motivo de tu última consulta dental?"));
                DropDownListReporte.Items.Add(new ListItem("3.- ¿Como califica su boca?"));
                DropDownListReporte.Items.Add(new ListItem("4.- ¿Cuantas veces al día cepilla su boca?"));
                DropDownListReporte.Items.Add(new ListItem("5.- ¿Te sangran las encías cuando te cepillas los dientes?"));
                DropDownListReporte.Items.Add(new ListItem("6.- ¿Has presentado mal aliento?"));

            }
        }
    }
}