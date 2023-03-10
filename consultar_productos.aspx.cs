using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Base_De_Datos_Y_Busquedas
{
    public partial class consultar_productos : System.Web.UI.Page
    {
        MySQL mysql = new MySQL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string consulta = "SELECT producto AS Producto, descripcion AS Descripcion, stock AS Stock, PU As money FROM productos";
            mysql.Establecer_Consulta_GridView(consulta, GridView1, Label1);
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string busqueda = TextBox4.Text;
            string query = "SELECT producto AS Producto, descripcion AS Descripcion, stock AS Stock, PU As money FROM productos " +
                "WHERE producto LIKE'%" + busqueda + "%'";

            mysql.Establecer_Consulta_GridView(query, GridView1, Label1);
        }
    }
}