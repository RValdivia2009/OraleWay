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
using System.Web.UI.WebControls.WebParts;

namespace OraleWey_Web
{
    public partial class PreAlerta : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = (string)Session["user"];
            string nombre = (string)Session["nombre"];
            string cliente = (string)Session["cliente"];

        
            Lb_ORW.Text = user;
            Lb_Nombre.Text = nombre;
            id_Cliente.Text = cliente;
            tb_user.Text = user;
          
            if (id_Cliente.Text != "")
            {
                desabilitarcajas();
                Guardar.Enabled = false;
                Limpiarcajas();
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert(' Para prealertar una compra debe logearce antes.... ');", true);
                Response.Redirect("Login.aspx");
            }
            
        
            
        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            string selectRegistra = "SELECT id_Package, fecha, ORW, Tienda, Description1, Tracking, id_cliente, DeliveryDay, Valor, Estado FROM dbo.tbl_Package";
            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            SqlDataAdapter da = new SqlDataAdapter(selectRegistra, cnn);
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataTable dt = new DataTable();
            da.Fill(dt);

            DataRow drnew = dt.NewRow();
            //DateTime fecha1 = DateTime.Parse(tb_Fecha.Text);
            tb_Fecha.Text = DateTime.Now.ToString();

            DateTime aa = DateTime.Parse(tb_FechaEntrega.ToString());


            drnew["fecha"] = tb_Fecha.Text;
            drnew["ORW"] = tb_user.Text;
            drnew["Tienda"] = tb_Tienda.Text;
            drnew["Description1"] = tb_Descripcion.Text;
            drnew["Tracking"] = tb_Tracking.Text;
            drnew["id_cliente"] = id_Cliente.Text;
            drnew["DeliveryDay"] = DateTime.Parse(tb_FechaEntrega.Text);
            drnew["Valor"] = tb_Valor.Text;
            drnew["Estado"] = 1;

            dt.Rows.Add(drnew);
            cnn.Open();
            da.Update(dt);
            dt.AcceptChanges();
            cnn.Close();
            Limpiarcajas();
            desabilitarcajas();
            Guardar.Enabled = false;
            NuevaC.Enabled = true;
        }

        private void desabilitarcajas()
        {
            tb_Fecha.Enabled = false;
          //  tb_user.Enabled = false;
            tb_Tienda.Enabled = false;
            tb_Descripcion.Enabled = false;
            tb_Tracking.Enabled = false;
           // id_Cliente.Enabled = false;
            tb_FechaEntrega.Enabled = false;
            tb_Valor.Enabled = false;
           
        }
        private void Habilitarcajas()
        {
            tb_Fecha.Enabled = true;
          //  tb_user.Enabled = true;
            tb_Tienda.Enabled = true;
            tb_Descripcion.Enabled = true;
            tb_Tracking.Enabled = true;
          //  id_Cliente.Enabled = true;
            tb_FechaEntrega.Enabled = true;
            tb_Valor.Enabled = true;

        }
        private void Limpiarcajas()
        {
            tb_Fecha.Text = "";
          //  tb_user.Text = "";
            tb_Tienda.Text = "";
            tb_Descripcion.Text = "";
            tb_Tracking.Text = "";
          //  id_Cliente.Text = "";
            tb_FechaEntrega.Text = "";
            tb_Valor.Text = "";

        }

        protected void NuevaC_Click(object sender, EventArgs e)
        {
            Habilitarcajas();
            Limpiarcajas();
            Guardar.Enabled = true;
            NuevaC.Enabled = false;
        }
       
    }
}