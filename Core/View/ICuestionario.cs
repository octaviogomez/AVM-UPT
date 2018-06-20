using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Core.Model;

namespace Core.View
{
    public interface ICuestionario
    {
        void Mensaje(string Mensaje, int tipo);
        CCuestionario NewCuestionarioDental { get;  }
        CCuestionario NewCuestionarioMedico { get; }
        CCuestionario NewCuestionarioPsicologico{ get; }   
        List<CCuestionario> LlenarComboSangre { get; set; }
        DataSet ListadoCuestionario { set; }


    }
}
