using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Base_De_Datos_Y_Busquedas
{
    public partial class consultar_proveedores : System.Web.UI.Page
    {
        MySQL mysql = new MySQL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string consulta = "SELECT razonSocial AS Razon_Social, CUIT AS Cuit, fechaCreacion AS Fecha_de_Creacion FROM proveedores";
            mysql.Establecer_Consulta_GridView(consulta, GridView1, Label1);
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string busqueda = TextBox4.Text;
            string consulta = "SELECT razonSocial AS Razon_Social, CUIT AS Cuit, fechaCreacion AS Fecha_de_Creacion FROM proveedores " +
                "WHERE razonSocial LIKE'%" + busqueda + "%'";

            mysql.Establecer_Consulta_GridView(consulta, GridView1, Label1);
        }

        protected void ed(object sender, EventArgs e)
        {

        }
    }
}