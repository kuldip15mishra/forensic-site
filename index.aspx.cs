using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using forsenic;

    public partial class index : System.Web.UI.Page
    {
        string path;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }
        protected void cmdsent_Click(object sender, EventArgs e)
        {
            //string strbody = "";
          string strbody = "<html><body><Table><tr><td>Hi,</td></tr><tr><td>ENQUIRY DETAILS :</td></tr></Table></body></html><html><body>";
            strbody += "</body></html><html><body><Table><tr><td> </td></tr><tr><td>NOTE: This is an automated mail. Please, do not reply.</td></tr>";
            strbody += "<tr><td>Name : " + txtname.Value + "</td></tr>";
            strbody += "<tr><td>Mobile : " + txtmobile.Value + "</td></tr>";
            strbody += "<tr><td>E-mail : " + txtemail.Value + "</td></tr>";
            strbody += "<tr><td>Query : " + txtquery.Value + "</td></tr>";
            strbody += "<tr><td>Regards,</td></tr>";
            strbody += "</table>";
            HttpPostedFile fileup = FileUpload1.PostedFile;
            //MailMessage m = new MailMessage("enquiry@forensicservices.co.in", "kuldip15mishra@gmail.com", "Enquiry", strbody);
            //SmtpClient s = new SmtpClient("forensicservices.co.in",25);
            //s.EnableSsl = true;
            //s.Credentials = new System.Net.NetworkCredential("enquiry@forensicservices.co.in", "w3d@3030");
            //s.Send(m);

                   mail.SendMailMessage("forensic_experts@yahoo.in", "kuldip15mishra@gmail.com", "", "Enquiry", strbody, fileup);

            txtname.Value = "";
            txtmobile.Value = "";
            txtemail.Value = "";
            txtquery.Value = "";
            message.InnerText = "your query has been sent succesfully";
        }
       
    }
