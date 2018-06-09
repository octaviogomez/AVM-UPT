using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Model;
using Core.View;
using System.Data;
using System.Data.SqlClient;


namespace Core.Presenter
{
    public class WFechasBloqueadas
    {
        ManagerBD Manager;
        IFechasBloqueadas ViewFechaBloqueada;
        CFechasBloqueadas objViewFechaBloqueada;

        //constractor
        public WFechasBloqueadas(IFechasBloqueadas InterfazFecha)
        {
            objViewFechaBloqueada = new CFechasBloqueadas();
            Manager = new ManagerBD();
            ViewFechaBloqueada = InterfazFecha;
        }

        public bool ExisteConexion()
        {
            bool ConexcionAvierta = false;
            SqlConnection sqlCon = Manager.GetConnection();
            if (sqlCon.State == ConnectionState.Open)
            {
                ConexcionAvierta = true;
            }
            return ConexcionAvierta;
        }

        public void CrearFecha(CFechasBloqueadas objFecha, int opcion)
        {
            bool BolRegistro = false;
            CFechasBloqueadas objaxu = new CFechasBloqueadas();
            if (ExisteConexion())
            {

                BolRegistro = objFecha.AgendarFecha(opcion, objFecha);
                
                if (BolRegistro == true)
                {
                    ViewFechaBloqueada.MensajeFechas("Cita registrado", 1);
                    //Se reguistro la cita, enviar mensaje al médico

                }
                else
                {

                    ViewFechaBloqueada.MensajeFechas("Cita no reguistrado", 1);
                }
            }
        }
        public void ObtenerDatosListado(int opcion, CFechasBloqueadas FechaBloqueada)
        {
            DataSet DtFechas = new DataSet();
            CFechasBloqueadas objFecha = new CFechasBloqueadas();
            bool ExisteUsuario = false;

            if (ExisteConexion())
            {
                ExisteUsuario = objFecha.ListadoFechas(opcion, ref DtFechas, FechaBloqueada);
                if (ExisteUsuario)
                {
                    try
                    {
                        ViewFechaBloqueada.FechasDT = DtFechas;
                    }
                    catch (Exception)
                    {
                        ViewFechaBloqueada.FechasDT = null;

                    }

                }
                else
                {

                    ViewFechaBloqueada.MensajeFechas("No Valido", 2);
                }

            }
            else
            {
                ViewFechaBloqueada.MensajeFechas("No hay conexion en red", 1);
            }
        }

    }
}
