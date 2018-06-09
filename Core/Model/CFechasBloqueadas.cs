using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

using Core.Model;
namespace Core.Model
{

    public class CFechasBloqueadas
    {
        ManagerBD objManagerBD;
        public CFechasBloqueadas()
        {
            objManagerBD = new ManagerBD();
        }

        public bool AgendarFecha(int opcion, CFechasBloqueadas obj )
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@pk_FechaBloqueada", SqlDbType.Int) { Value = obj.pk_FechaBloqueada });
            lstParametros.Add(new SqlParameter("@Fecha", SqlDbType.VarChar) { Value = obj.Fecha });
            lstParametros.Add(new SqlParameter("@fk_Especialista", SqlDbType.Int) { Value = obj.pk_Especialista });
            objManagerBD = new ManagerBD();
            if (objManagerBD.UpdateData("PFechasBloqueadas", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
        public bool ListadoFechas(int opcion, ref DataSet objDatos, CFechasBloqueadas obj)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@pk_FechaBloqueada", SqlDbType.Int) { Value = obj.pk_FechaBloqueada });
            lstParametros.Add(new SqlParameter("@Fecha", SqlDbType.VarChar) { Value = obj.Fecha });
            lstParametros.Add(new SqlParameter("@fk_Especialista", SqlDbType.Int) { Value = obj.pk_Especialista });
            objDatos = objManagerBD.GetData("PFechasBloqueadas", lstParametros.ToArray());
            if (objDatos.Tables.Count > 0)
                ExisteDatos = true;

            return ExisteDatos;
        }


        #region Propiedaes
        public int pk_FechaBloqueada { get; set; }
        public string Fecha { get; set; }
        public int pk_Especialista { get; set; }
        #endregion
    }
}
