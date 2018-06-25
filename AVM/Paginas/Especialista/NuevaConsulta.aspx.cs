using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Core.Model;

namespace AVM.Paginas.Especialista
{
    public partial class NuevaConsulta : System.Web.UI.Page
    {
        CEspecialista objInfo;
        protected void Page_Load(object sender, EventArgs e)
        {
            objInfo = (CEspecialista)Session["UsuarioLogeadoEspecialista"];
            if (objInfo!=null)
            {
                switch (objInfo.fk_Especialidad)
                {
                    case "1":
                        PanelInforMedico.Visible = true;
                        PanelConsultaMedica.Visible = true;
                        break;
                    case "2":
                        PanelInfoDental.Visible = true;
                        PanelConsultaDental.Visible = true;
                        HyperLinkOdontograma.Visible = true;
                        PanelOdontograma.Visible = true;
                        break;
                    case "3":
                        PanelInfoPsico.Visible = true;
                        PanelConsultaPsico.Visible = true;
                        break;

                    default:
                        break;
                }
            }
            
        }
    }
}