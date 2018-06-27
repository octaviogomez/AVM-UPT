using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Model
{
    public class COdontograma:CConsulta
    {
        ManagerBD objManagerBD;
        public COdontograma()
        {
            objManagerBD = new ManagerBD();
        }
        #region Propiedades
        public int Diente { get; set; }
        public string FechaOdontograma { get; set; }
        public string DiagnositcoOdontograma { get; set; }
        public string TratatmientoOdontograma { get; set; }
        public string ObservacionesOdontograma { get; set; }
        #endregion


        public bool InsertarOdontograma(int opcion, COdontograma NewOdontograma)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@fk_Especialista", SqlDbType.VarChar) { Value = NewOdontograma.fk_Especialista });
            lstParametros.Add(new SqlParameter("@fk_Alumno", SqlDbType.VarChar) { Value = NewOdontograma.fk_Alumno });
            lstParametros.Add(new SqlParameter("@Diente", SqlDbType.Int) { Value = NewOdontograma.Diente });
            lstParametros.Add(new SqlParameter("@DiagnositcoOdontograma", SqlDbType.VarChar) { Value = NewOdontograma.DiagnositcoOdontograma });
            lstParametros.Add(new SqlParameter("@TratatmientoOdontograma", SqlDbType.VarChar) { Value = NewOdontograma.TratatmientoOdontograma });
            lstParametros.Add(new SqlParameter("@ObservacionesOdontograma", SqlDbType.VarChar) { Value = NewOdontograma.ObservacionesOdontograma });
            objManagerBD = new ManagerBD();
            
            if (objManagerBD.UpdateData("PConsulta", lstParametros.ToArray()))
                return true;
            return false;
        }
        //ver odontograma
        public bool listarOdontograma(int opcion, ref DataSet objDatos, string fk_Alumno)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@fk_Alumno", SqlDbType.NVarChar, 50) { Value = fk_Alumno });
            objDatos = objManagerBD.GetData("PConsulta", lstParametros.ToArray());
            if (objDatos.Tables.Count > 0)
            {
                ExisteDatos = true;
            }
            return ExisteDatos;
        }

    }
}
