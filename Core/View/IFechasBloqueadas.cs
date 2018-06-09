using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Core.Model;
namespace Core.View
{
    public interface IFechasBloqueadas
    {
        void MensajeFechas(string Mensaje, int tipo);

        CFechasBloqueadas ObjFechas { set; get; }
        DataSet FechasDT { set; get; }
    }
}
