using Core.Model;
using Core.View;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Presenter
{
    public class WOdontograma
    {
        ManagerBD Manager;
        IOdontograma ViewOdontograma;
        COdontograma objOdontograma;
        public WOdontograma(IOdontograma InterfazOdontograma)
        {
            objOdontograma = new COdontograma();
            Manager = new ManagerBD();
            ViewOdontograma = InterfazOdontograma;
        }
        public bool ExisteConexion()
        {
            bool ConexcionAvierta = false;
            System.Data.SqlClient.SqlConnection sqlCon = Manager.GetConnection();
            if (sqlCon.State == ConnectionState.Open)
            {
                ConexcionAvierta = true;
            }
            return ConexcionAvierta;
        }

        public void InsertarOdontograma(int op, COdontograma ObjOdontograma)
        {
            bool BolRegistro = false;
            if (ExisteConexion())
            {
                BolRegistro = objOdontograma.InsertarOdontograma(op, ObjOdontograma);
                if (BolRegistro == true)
                    ViewOdontograma.MensajeOdontograma(" registrado", 1);
                else
                    ViewOdontograma.MensajeOdontograma("No registrado", 1);
            }
        }

        public void ListarOdontograma(int opcion, string fk_Alumno)
        {
            bool ExistenDatos = false;
            DataSet dtsDatos = new DataSet();

            if (ExisteConexion())
            {
                ExistenDatos = objOdontograma.listarOdontograma(opcion, ref dtsDatos, fk_Alumno);
                if (ExistenDatos == true)
                    ViewOdontograma.Odontograma = dtsDatos;
                else
                    ViewOdontograma.MensajeOdontograma("No hay reguistros", 2);
            }
            else
            {
                ViewOdontograma.MensajeOdontograma("No hay conexion en red", 2);
            }

        }
    }
}
