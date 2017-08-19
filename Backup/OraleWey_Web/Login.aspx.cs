using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OraleWey_Web.Properties;
using System.Data.SqlClient;

namespace OraleWey_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Properties.Settings.Default.ConnectionString_Hosting);

            try
            {
                SqlCommand cmd = new SqlCommand("SELECT id_Cliente, Nom_Cliente, Apellidos_Cliente, Usuario, PassWord, ORW FROM dbo.tbl_ORW_Clientes WHERE Usuario = '" + user_name.Text + "' ", cn);
                cn.Open();
                cmd.ExecuteNonQuery();

                System.Data.DataTable dt = new System.Data.DataTable();
              //  System.Data.DataSet ds = new System.Data.DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                              
                da.Fill(dt);
                System.Data.DataRow dr;
               

                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0]; //Tables["dbo.tbl_ORW_Clientes"].Rows[0];
                    string aaa = dr["PassWord"].ToString();
                    string bbb = dr["Usuario"].ToString();

                    if ((user_name.Text == dr["Usuario"].ToString()) & (password.Text == dr["PassWord"].ToString()))
                    {

                        string Nombre = dr["Nom_Cliente"].ToString() + " " + dr["Apellidos_Cliente"].ToString();
                        string mORW = dr["ORW"].ToString();
                        string Password = dr["PassWord"].ToString();
                        string mId_Cliente = dr["id_Cliente"].ToString();
                        // String Id = dr["user_ID"].ToString();

                        //  Hacer lo mismo pero guardando los valores en la session
                        Session.Add("user", mORW);
                        Session.Add("Nombre", Nombre);
                        Session.Add("cliente", mId_Cliente);
                      
                        //redireccionamos
                        Response.Redirect("MiCuenta.aspx");
                        //en la siguiente recuperamos los valores
                        string user = (string)Session["user"];


                        // string pwd = (string)Session["pwd"];
                        //borramos las vars de la sesion
                        Session.Remove("user"); //etc...
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert(' Error en Password, intentelo de nuevo ');", true);
                    }

                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert(' Usuario inexistente, intentelo de nuevo o Registrese  ');", true);
                }

            }

            finally
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrate.aspx");
        }

     
    }
}