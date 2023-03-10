using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Base_De_Datos_Y_Busquedas
{
    public partial class alta_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            string consulta = @"INSERT INTO usuarios (username,pass,mail,fechaCreacion,activo)
                            VALUES (@TB1,@TB2,@TB3,@TB4,@TB5)";
            string consultaValidar = @"SELECT * FROM usuarios WHERE username LIKE @TB1";

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());// ESTABLECEMOS LA CONEXION

            try
            {
                SqlCommand commandValidation = new SqlCommand(consultaValidar, conn); 
                commandValidation.Parameters.AddWithValue("TB1", TextBox1.Text);
                conn.Open();
                SqlDataReader leerbd = commandValidation.ExecuteReader();
                if (leerbd.Read() == true)
                {
                    Label1.Text = "Usuario existente";
                    conn.Close();
                }
                else
                {
                    try
                    {
                        conn.Close();
                        SqlCommand command = new SqlCommand(consulta, conn); 
                        command.Parameters.AddWithValue("TB1", TextBox1.Text);
                        command.Parameters.AddWithValue("TB2", TextBox2.Text);
                        command.Parameters.AddWithValue("TB3", TextBox3.Text);
                        command.Parameters.AddWithValue("TB4", DateTime.Now);
                        command.Parameters.AddWithValue("TB5", 1);
                        conn.Open();
                        command.ExecuteNonQuery(); 
                        conn.Close(); 
                        Label1.Text = "Se agregaron los registros correctamente.";
                    }
                    catch (Exception ex)
                    {
                        Label1.Text = ex.Message;
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