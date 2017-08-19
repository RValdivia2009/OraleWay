using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Drawing;
using System.Text;
using System.Net.Mail;
using System.Net; 

namespace OraleWey_Web
{
    public partial class Contactenos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensajeError.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage correo = new MailMessage();
                correo.From = new MailAddress(txtNombre.Text + "<" + txtEmail.Text + ">");

                if (Reenvio.Checked == true)
                {
                    correo.To.Add(new MailAddress("robertov2009@gmail.com"));
                    correo.CC.Add(new MailAddress("lety122587@gmail.com"));
                    correo.CC.Add(new MailAddress("yosvaldy2011@gmail.com"));
                    correo.CC.Add(new MailAddress("stalinboxeo@gmail.com"));
                    correo.To.Add(txtEmail.Text);
                }
                else
                {
                    correo.To.Add(new MailAddress("robertov2009@gmail.com"));
                    correo.CC.Add(new MailAddress("lety122587@gmail.com"));
                    correo.CC.Add(new MailAddress("yosvaldy2011@gmail.com"));
                    correo.CC.Add(new MailAddress("stalinboxeo@gmail.com"));
                }
                correo.Subject = txtTitulo.Text;
                correo.Body = "Contacto de la WEB OraleWeay" + txtMensaje.Text + "  Télefono de Contacto : " + txtTelefono.Text + "  Email Contacto : " + txtEmail.Text;

                SmtpClient client = new SmtpClient();

                client.Host = "smtp.gmail.com";
                client.Credentials = new System.Net.NetworkCredential("frontline.cservice@gmail.com", "frontline2010");
                //cliente.Send(oMsg);

                client.Port = 587;
                client.EnableSsl = true;

                client.Send(correo);
                lblMensajeError.Visible = true;
                lblMensajeError.Text = " Mensaje enviado correctamente, Gracias";
                lblMensajeError.ForeColor = Color.YellowGreen;

                txtNombre.Text = "";
                txtEmail.Text = "";
                txtTelefono.Text = "";
                txtTitulo.Text = "";
                txtMensaje.Text = "";

            }
            catch (Exception ex)
            {
                lblMensajeError.Visible = true;
                lblMensajeError.Text = "Error al enviar, Revise la informacion brindada (Email).";
                lblMensajeError.ForeColor = Color.Red;
            }
            finally
            {

            }
        }
    }
}