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

using OraleWey_Web.Properties;

namespace OraleWey_Web
{
    public partial class MiCuenta : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            //Llenar_ListView1();
            // Recivir valores de Registrame y/o Logion
            string user = (string)Session["user"];
            string nombre = (string)Session["nombre"];

           // Lb_id_Cliente.Text = user;
            Lb_ORW.Text = user;
            Lb_Nombre.Text = nombre;

            llenarcomboCneeEDID();
        }
        private void Llenar_ListView1()
        {
            string selectRegistra = "SELECT id_Package, fecha FROM dbo.tbl_Package, ORW, Tienda, Description1, Description2, Description3, Tracking, id_cliente, DeliveryDay, Valor FROM dbo.tbl_Package";
            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            SqlDataAdapter da = new SqlDataAdapter(selectRegistra, cnn);
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Lb_ORW.Text = TextBoxORW.Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
  
            ponerVisiblesCajas();
            //id_Package, fecha, ORW, Tienda, Description1, Description2, Description3, Tracking, id_cliente, DeliveryDay, Valor FROM dbo.tbl_Package";
            GridViewRow row = GridView1.SelectedRow;
            ID.Text = row.Cells[6].Text;

            string selectRegistra = "SELECT dbo.tbl_Package.id_Package, dbo.tbl_Package.fecha, dbo.tbl_Package.Estado, dbo.tbl_Package.ORW, dbo.tbl_Package.Tienda, dbo.tbl_Package.Description1, dbo.tbl_Package.Description2, dbo.tbl_Package.Description3, dbo.tbl_Package.Tracking, dbo.tbl_Package.id_cliente, dbo.tbl_Package.DeliveryDay, dbo.tbl_Package.Valor, dbo.tbl_Nom_Estados.Nom_Estado FROM dbo.tbl_Package INNER JOIN dbo.tbl_Nom_Estados ON dbo.tbl_Package.Estado = dbo.tbl_Nom_Estados.id_Estado";                
                
            //"SELECT id_Package, fecha, ORW, Tienda, Description1, Tracking, id_cliente, DeliveryDay, Valor, Estado FROM dbo.tbl_Package";
            selectRegistra = selectRegistra + " WHERE id_Package = " + ID.Text;

            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);
            SqlDataAdapter da = new SqlDataAdapter(selectRegistra, cnn);
            da.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataTable dt = new DataTable();
                
            da.Fill(dt);
            int aa = dt.Rows.Count;
        
            if (dt != null && dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                Tb_Fecha.Text = dr["fecha"].ToString();
                Tb_Tienda.Text = dr["Tienda"].ToString();
                Tb_Descrip.Text = dr["Description1"].ToString();
                Tb_Tracking.Text = dr["Tracking"].ToString();
                Tb_Delivery.Text = dr["DeliveryDay"].ToString();
                Tb_Valor.Text = dr["Valor"].ToString();
                Tb_Estado.Text = dr["Nom_Estado"].ToString();

                //--- Vaor Imagen --  //
                string mIma = dr["Estado"].ToString();

                if (mIma == "1")
                {
                   ImageDetalle.ImageUrl = "css/images/Ball_Yellow-icon.png";
                }
                if (mIma == "2")
                {
                    ImageDetalle.ImageUrl = "css/images/Ball_Purple-icon.png"; ;
                }
                if (mIma == "3")
                {
                    ImageDetalle.ImageUrl = "css/images/ball_Red-icon.png"; ;
                }
                if (mIma == "4")
                {
                    ImageDetalle.ImageUrl = "css/images/Ball_Green-icon.png";
                }
                if (mIma == "5")
                {
                    ImageDetalle.ImageUrl = "css/images/Ball_Blue-icon.png";
                }
  

            }

            cnn.Close();
        }
        private void ponerVisiblesCajas()
        {
            Panel1.Visible = true;
        }
        private void oculatarCajas()
        {
            Panel1.Visible = false;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string KeyID = e.Row.Cells[4].Text;    // e.Row.RowIndex].Value.ToString();
                if (KeyID == "1")
                {
                    System.Web.UI.WebControls.Image imagen = (System.Web.UI.WebControls.Image)e.Row.FindControl("ImgSemaforo");
                    imagen.ImageUrl = "css/images/Ball_Yellow-icon.png";
                }
                if (KeyID == "2")
                {
                    System.Web.UI.WebControls.Image imagen = (System.Web.UI.WebControls.Image)e.Row.FindControl("ImgSemaforo");
                    imagen.ImageUrl = "css/images/Ball_Purple-icon.png";
                }
                if (KeyID == "3")
                {
                    System.Web.UI.WebControls.Image imagen = (System.Web.UI.WebControls.Image)e.Row.FindControl("ImgSemaforo");
                    imagen.ImageUrl = "css/images/ball_Red-icon.png";
                }
                if (KeyID == "4")
                {
                    System.Web.UI.WebControls.Image imagen = (System.Web.UI.WebControls.Image)e.Row.FindControl("ImgSemaforo");
                    imagen.ImageUrl = "css/images/Ball_Green111-icon.png";
                }
                if (KeyID == "5")
                {
                    System.Web.UI.WebControls.Image imagen = (System.Web.UI.WebControls.Image)e.Row.FindControl("ImgSemaforo");
                    imagen.ImageUrl = "css/images/Ball_Blue-icon.png";
                }
             
            }

        }
        public void llenarcomboCneeEDID()
        {
            SqlConnection conn1 = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting); // se establece conexion
                conn1.Open();
                String selectcombo = "SELECT id_Estado, Nom_Estado FROM dbo.tbl_Nom_Estados";
                SqlDataAdapter da1 = new SqlDataAdapter(selectcombo, conn1);   // creo dataadapter
                da1.MissingSchemaAction = MissingSchemaAction.AddWithKey;       // usa ID en tablas
                System.Data.DataSet ds1 = new System.Data.DataSet();
                da1.Fill(ds1, "dbo.tbl_Nom_Estados");
                DD_Estado.DataSource = ds1.Tables[0].DefaultView;
                DD_Estado.DataValueField = "id_Estado";
                DD_Estado.DataTextField = "Nom_Estado";
                //DD_Estado.Text = cosignee.SelectedValue;
                DD_Estado.DataBind();
                conn1.Close();
                DD_Estado.Items.Insert(0, "<-- Select -->");
                // Fecha.Enabled = false;
            
        }
      
    }
}