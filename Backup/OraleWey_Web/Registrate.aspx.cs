using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.ProviderBase;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using  OraleWey_Web.Properties;
//using BusinessRefinery.Barcode.Web;
//using BusinessRefinery.Barcode;


namespace OraleWey_Web
{
    public partial class Registrate : System.Web.UI.Page
    {
        string selectRegistra = "SELECT id_Cliente, Nom_Cliente, Apellidos_Cliente, Email_Cliente, Dir_Cliente, ZC_Cliente, Ciudad_Cliente, Estado_Cliente, TelCasa_Cliente, TelMovil, Usuario, PassWord, ORW FROM dbo.tbl_ORW_Clientes";
        private static int visitCounter = 0; // Variable usada en BLOQUE asignar conecutivo
        int posicion;                        // Variable usada en BLOQUE asignar conecutivo
        static int max, i = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connIn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            connIn.Open();
            SqlCommand cmd = new SqlCommand("select count(*) FROM dbo.tbl_ORW_Clientes", connIn); // Para ver secuancia de registro
            max = Convert.ToInt32(cmd.ExecuteScalar()); // Para ver secuancia de registro
            connIn.Close();
        }

        protected void bt_registrar_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            SqlDataAdapter da = new SqlDataAdapter(selectRegistra, cnn);
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
            SqlCommandBuilder cb = new SqlCommandBuilder(da);

            DataTable dt = new DataTable();
            da.Fill(dt);

            // ---------ASIGNAR CONCECUTIVO ANTES DE GUARDAR----
            i = max; // Para ver secuancia de registro
            posicion = max;
            visitCounter = posicion;
            visitCounter++; // Increase each time a form is loaded
            tb_ORW.Text = visitCounter.ToString("ORW0000"); // Format the counter
            //-----------FIN----------

            DataRow drnew = dt.NewRow();
            drnew["Nom_Cliente"] = tb_nombre.Text;
            drnew["Apellidos_Cliente"] = tb_apellidos.Text;
            drnew["Dir_Cliente"] = tb_direccion.Text;
            drnew["Email_Cliente"] = tb_email.Text;
            drnew["TelCasa_Cliente"] = tb_telfcasa.Text;
            drnew["ZC_Cliente"] = tb_zipcode.Text;
            drnew["Ciudad_Cliente"] = tb_ciudad.Text;
            drnew["Usuario"] = tb_user.Text;
            drnew["PassWord"] = tb_contrasena.Text;
            drnew["ORW"] = tb_ORW.Text;

            dt.Rows.Add(drnew);
            cnn.Open();
            da.Update(dt);
            dt.AcceptChanges();
            cnn.Close();
            //   bt_ORW.Visible = true;


            //Para pasar datos a otra seccion
            string mORW = tb_ORW.Text;
            string mNombre = tb_nombre.Text + " " + tb_apellidos.Text;

            Session.Add("user", mORW);
            Session.Add("nombre", mNombre);
            //redireccionamos
            Response.Redirect("MiCuenta.aspx");
            //en la siguiente recuperamos los valores
            string user = (string)Session["mORW"];
            string nombre = (string)Session["mNombre"];
           //borramos las vars de la sesion
            Session.Remove("nombre");
            Session.Remove("user"); //etc...

        }
    }
}