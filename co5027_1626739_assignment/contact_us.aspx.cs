using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace co5027_1626739_assignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            const string senderEmail = "ishtar4896@gmail.com";
            const string accountPassword = "kurosawa_sae12";
            const string recipientEmail = "ichibasato@gmail.com";

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = senderEmail; //for this account the username is the email address
            userpass.Password = accountPassword;
            client.Credentials = userpass;

            MailMessage msg = new MailMessage(senderEmail, recipientEmail);
            msg.Subject = "A new email from the website";
            msg.Body = txtBody.Text;

            client.Send(msg);
            txtBody.Text = "";
        }
    }
}