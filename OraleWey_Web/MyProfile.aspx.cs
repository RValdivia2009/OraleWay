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
using OraleWey_Web.Properties;
//using BusinessRefinery.Barcode.Web;
//using BusinessRefinery.Barcode;


namespace OraleWey_Web
{
    public partial class MyProfile : System.Web.UI.Page
    {
       // string selectRegistra = "SELECT id_Cliente, Nom_Cliente, Apellidos_Cliente, Email_Cliente, Dir_Cliente, ZC_Cliente, Ciudad_Cliente, Estado_Cliente, TelCasa_Cliente, TelMovil, Usuario, PassWord, ORW FROM dbo.tbl_ORW_Clientes";
        private DataTable dt;
        private SqlDataAdapter da;
        SqlConnection cnnIn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
     
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //Llenar_ListView1();
            // Recivir valores de Registrame y/o Logion
            string user = (string)Session["user"];
            string nombre = (string)Session["nombre"];
            string cliente = (string)Session["cliente"];

            // Lb_id_Cliente.Text = user;
            Lb_ORW.Text = user;
            Lb_Nombre.Text = nombre;
            Lb_id.Text = cliente;
           
            if (!IsPostBack)
            {
                llenarTextbox();
            }
           
            desabilitarCajas();
            b_Guardar.Enabled = false;

        }
        private void llenarTextbox()
        {
            cnnIn.Open();
            string selectRegistra = "SELECT id_Cliente, Nom_Cliente, Apellidos_Cliente, Email_Cliente, Dir_Cliente, ZC_Cliente, Ciudad_Cliente, Estado_Cliente, TelCasa_Cliente, TelMovil, Usuario, PassWord, ORW FROM dbo.tbl_ORW_Clientes";
            selectRegistra = selectRegistra + " WHERE id_Cliente = " + Lb_id.Text;
           // SqlConnection cnnIn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            SqlDataAdapter da = new SqlDataAdapter(selectRegistra, cnnIn);
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataRow dr = dt.Rows[0];
            cnnIn.Close();

            TextBoxNom.Text = dr["Nom_Cliente"].ToString();
            TextBoxApell.Text = dr["Apellidos_Cliente"].ToString();
            TextBoxDir.Text = dr["Dir_Cliente"].ToString();
            TextBoxEmail.Text = dr["Email_Cliente"].ToString();
            TextBoxTelef.Text = dr["TelCasa_Cliente"].ToString();
            TextBoxZc.Text = dr["ZC_Cliente"].ToString();
            TextBoxEstado.Text = dr["Estado_Cliente"].ToString();
            TextBoxCiudad.Text = dr["Ciudad_Cliente"].ToString();
            //cnn.Close();
        }
        protected void B_Edit_Click(object sender, EventArgs e)
        {
            habilitarCajas();
            b_Guardar.Enabled = true;
            b_Edit.Enabled = false;
        }

        protected void b_Guardar_Click(object sender, EventArgs e)
        {
            String SqlString = "Update dbo.tbl_ORW_Clientes set Nom_Cliente = '" + TextBoxNom.Text + "', Apellidos_Cliente = '" + TextBoxApell.Text + "', Dir_Cliente = '" + TextBoxDir.Text + "', ZC_Cliente = '" + TextBoxZc.Text + "', Ciudad_Cliente = '" + TextBoxCiudad.Text + "',  Estado_Cliente = '" + TextBoxEstado.Text + "', Email_Cliente = '" + TextBoxEmail.Text + "', TelCasa_Cliente = '" + TextBoxTelef.Text + "' where id_Cliente = '" + Lb_id.Text + "';";
            using (SqlConnection conn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting))
            {
                using (SqlCommand MiComando = new SqlCommand(SqlString, conn))
                {
                    conn.Open();
                    int FilasAfectadas = MiComando.ExecuteNonQuery();
                    conn.Close();
                }
            }
        } 
    
        //-----------------------------

        private void desabilitarCajas()
        {
            TextBoxNom.Enabled = false;
            TextBoxApell.Enabled = false;
            TextBoxDir.Enabled = false;
            TextBoxEmail.Enabled = false;
            TextBoxTelef.Enabled = false;
            TextBoxZc.Enabled = false;
            TextBoxCiudad.Enabled = false;
            TextBoxEstado.Enabled = false;
          
        }
        private void habilitarCajas()
        {
            TextBoxNom.Enabled = true;
            TextBoxApell.Enabled = true;
            TextBoxDir.Enabled = true;
            TextBoxEmail.Enabled = true;
            TextBoxTelef.Enabled = true;
            TextBoxZc.Enabled = true;
            TextBoxCiudad.Enabled = true;
            TextBoxEstado.Enabled = true;
         
        }

    

       

      
    }
}