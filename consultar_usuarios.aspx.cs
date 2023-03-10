using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Base_De_Datos_Y_Busquedas
{
    public partial class consultar_usuarios : System.Web.UI.Page
    {
       
        MySQL mysql = new MySQL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string consulta = "SELECT username AS Nombre_de_Usuario, pass AS Contrasena, fechaCreacion AS Fecha_de_Creacion, mail As Email FROM usuarios";
            mysql.Establecer_Consulta_GridView(consulta, GridView1,Label1);
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string busqueda = TextBox4.Text;
            string consulta = "SELECT username AS Nombre_de_Usuario, pass AS Contrasena, fechaCreacion AS Fecha_de_Creacion, mail As Email FROM usuarios " +
                "WHERE username LIKE'%"+busqueda+"%'";
         
            mysql.Establecer_Consulta_GridView(consulta, GridView1, Label1);     
        }
    }
}