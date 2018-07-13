using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

using Core.Model;

namespace AVM.Controles.Admin
{
    public partial class contCargarDatosAlumnos : System.Web.UI.UserControl
    {
        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile && FileUpload1.FileName.EndsWith(".xlsx"))
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                string FolderPath = ConfigurationManager.AppSettings["FolderPath"];

                string FilePath = Server.MapPath(FolderPath + FileName);
                FileUpload1.SaveAs(FilePath);
                Import_To_Grid(FilePath, Extension, rbHDR.SelectedItem.Text);
            }
            else
            {
                Response.Write("<script language=javascript> alert('Archivo incompatible, asegúrese de que el archivo sea Excel.'); </script>");
            }



        }
        public DataTable dt;

        public CEspecialista UsuarioLogeadoEspecialista
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }

        public DataSet Empleados
        {
            set
            {
                throw new NotImplementedException();
            }
        }

        private void Import_To_Grid(string FilePath, string Extension, string isHDR)
        {
            try
            {
                dt = new DataTable();
                string conStr = "";
                switch (Extension)
                {
                    case ".xls": //Excel 97-03
                        conStr = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                        break;
                    case ".xlsx": //Excel 07
                        conStr = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
                        break;
                }
                conStr = String.Format(conStr, FilePath, isHDR);
                OleDbConnection connExcel = new OleDbConnection(conStr);
                OleDbCommand cmdExcel = new OleDbCommand();
                OleDbDataAdapter oda = new OleDbDataAdapter();

                cmdExcel.Connection = connExcel;

                //Get the name of First Sheet
                connExcel.Open();
                DataTable dtExcelSchema;
                dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
                connExcel.Close();

                //Read Data from First Sheet
                connExcel.Open();
                cmdExcel.CommandText = "SELECT * From [" + SheetName + "]";
                oda.SelectCommand = cmdExcel;
                oda.Fill(dt);

                connExcel.Close();

                //Bind Data to GridView
                GridView1.Caption = Path.GetFileName(FilePath);
                GridView1.DataSource = dt;
                try
                {
                    GridView1.DataBind();
                }
                catch (Exception e)
                {
                    GridView1.Visible = false;

                }
                
                if (GridView1.Rows.Count > 0 && GridView1.Columns.Count == 8)
                {
                    GridView1.Visible = true;
                    Importar.Visible = true;
                    btnUpload.Visible = false;
                   
                }
                else
                {
                    GridView1.Visible = false;
                }
            }
            catch (Exception)
            {

                
            }
           
        }
        protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string FolderPath = ConfigurationManager.AppSettings["FolderPath"];
            string FileName = GridView1.Caption;
            string Extension = Path.GetExtension(FileName);
            string FilePath = Server.MapPath(FolderPath + FileName);

            Import_To_Grid(FilePath, Extension, rbHDR.SelectedItem.Text);
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void Importar_Click(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {

                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[12] { new DataColumn("alu_E1", typeof(int)),
                        new DataColumn("alu_E2", typeof(int)),
                        new DataColumn("alu_E3",typeof(int)),
                        new DataColumn("alu_Rol",typeof(int)),
                        new DataColumn("alu_NumControl",typeof(string)),
                        new DataColumn("alu_Nombre",typeof(string)),
                        new DataColumn("alu_ApePaterno",typeof(string)),
                        new DataColumn("alu_ApeMaterno",typeof(string)),
                        new DataColumn("alu_Sexo",typeof(string)),
                        new DataColumn("alu_Password",typeof(string)),
                        new DataColumn("alu_FechaNacimiento",typeof(DateTime)),
                        new DataColumn("alu_Carrera",typeof(string))});

                foreach (GridViewRow row in GridView1.Rows)
                {

                    int alu_e1 = 0;
                    int alu_e2 = 0;
                    int alu_e3 = 0;
                    int rol = 1;

                    string numControl = (((Label)row.Cells[0].FindControl("lblNumControl")).Text); //(((Label)row.Cells[0].FindControl("Label1")).Text)


                    string nombre = (((Label)row.Cells[1].FindControl("lblAluNombre")).Text);
                    string apeP = (((Label)row.Cells[2].FindControl("lblAluApeP")).Text);
                    string apeM = (((Label)row.Cells[3].FindControl("lblAluApeM")).Text);
                    string sexo = (((Label)row.Cells[4].FindControl("lblAluSexo")).Text);
                    string pass = (((Label)row.Cells[5].FindControl("lblAluPassword")).Text);
                    string fechaCompleta = ((Label)row.Cells[6].FindControl("lblAluFechaN")).Text;
                    string noseguro = null;
                    string curp = null;
                    string anioRegistro = DateTime.Now.ToShortDateString();
                    try //try utilizado para evitar los registros nulos
                    {
                        DateTime fecha = DateTime.Parse(fechaCompleta); //"24/07/1950"
                    }
                    catch (Exception)
                    {
                        break;

                    }

                    //{ 24 / 07 / 1950 12:00:00 a.m.}
                    string carrera = ((Label)row.Cells[7].FindControl("lblAluCarrera")).Text;

                    // Response.Write("<script language=javascript> alert('Datos almacenados en la base de datos: " + GridView1.Rows.Count+ " registros nuevos.'); </script>");


                    dt.Rows.Add(alu_e1, alu_e2, alu_e3, rol, numControl, nombre, apeP, apeM, sexo, pass, fechaCompleta, carrera);

                }
                if (dt.Rows.Count > 0)
                {
                    string consString = ConfigurationManager.ConnectionStrings["Hospital"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(consString))
                    {
                        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
                        {
                            try
                            {
                                //Set the database table name
                                sqlBulkCopy.DestinationTableName = "ceAlumnos";

                                //[OPTIONAL]: Map the DataTable columns with that of the database table
                                sqlBulkCopy.ColumnMappings.Add("alu_E1", "alu_E1");
                                sqlBulkCopy.ColumnMappings.Add("alu_E2", "alu_E2");
                                sqlBulkCopy.ColumnMappings.Add("alu_E3", "alu_E3");
                                sqlBulkCopy.ColumnMappings.Add("alu_Rol", "alu_Rol");
                                sqlBulkCopy.ColumnMappings.Add("alu_NumControl", "alu_NumControl");
                                sqlBulkCopy.ColumnMappings.Add("alu_Nombre", "alu_Nombre");
                                sqlBulkCopy.ColumnMappings.Add("alu_ApePaterno", "alu_ApePaterno");
                                sqlBulkCopy.ColumnMappings.Add("alu_ApeMaterno", "alu_ApeMaterno");
                                sqlBulkCopy.ColumnMappings.Add("alu_Sexo", "alu_Sexo");
                                sqlBulkCopy.ColumnMappings.Add("alu_Password", "alu_Password");
                                sqlBulkCopy.ColumnMappings.Add("alu_FechaNacimiento", "alu_FechaNacimiento");
                                sqlBulkCopy.ColumnMappings.Add("alu_Carrera", "alu_Carrera");
                                con.Open();
                                sqlBulkCopy.WriteToServer(dt);
                                con.Close();
                                //  Response.Write("<script language=javascript> alert('Datos almacenados en la base de datos: "+dt.Rows.Count.ToString()+" registros nuevos.'); </script>");
                                GridView1.DataSource = null;
                                GridView1.DataBind();
                                //dt.Reset();
                                dt.Rows.Clear();
                                Panel1.Visible = false;
                                GridView1.Visible = false;
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "msg", "<script >   $('#PanelNotificacion').removeClass('ocultar').addClass('mostrar'); </script>");
                            }
                            catch (SqlException ex)
                            {
                            }


                        }
                    }
                }
            }
            else
            {
                Response.Write("<script language=javascript> alert('Seleccione antes un archivo.'); </script>");

            }


        }
    }
}