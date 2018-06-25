using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Model;
using System.Data;

namespace Core.View
{
    public interface IOdontograma
    {
        void MensajeOdontograma(string Mensaje, int tipo);
        COdontograma newOdontograma { get; set; }
        DataSet Odontograma { set; }
    }
}
