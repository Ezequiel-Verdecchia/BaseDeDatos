using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

namespace Base_De_Datos_Y_Busquedas
{
    public class MySQL
    {
        public void Establecer_Consulta_GridView(string query, GridView GridView1, Label Label1)
        {
            Label1.Text = "";
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
                {
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    if (da.Fill(ds) == 0)
                    {
                        Label1.Text = "No se encontraron resultados";
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;

            }
        }
    }
}