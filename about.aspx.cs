using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using forsenic;
public partial class about : System.Web.UI.Page
{
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void cmdsent_Click(object sender, EventArgs e)
    {
string strbody = "<html><body><Table><tr><td>Hi,</td></tr><tr><td>ENQUIRY DETAILS :</td></tr></Table></body></html><html><body>";
            strbody += "</body></html><html><body><Table><tr><td> </td></tr><tr><td>NOTE: This is an automated mail. Please, do not reply.</td></tr>";
            strbody += "<tr><td>Name : " + txtname.Value + "</td></tr>";
            strbody += "<tr><td>Mobile : " + txtmobile.Value + "</td></tr>";
            strbody += "<tr><td>E-mail : " + txtemail.Value + "</td></tr>";
            strbody += "<tr><td>Query : " + txtquery.Value + "</td></tr>";
            strbody += "<tr><td>Regards,</td></tr>";
            strbody += "</table>";        HttpPostedFile fileup = FileUpload1.PostedFile;
        mail.SendMailMessage("forensic_experts@yahoo.in", "", "", "Enquiry", strbody, fileup);

        txtname.Value = "";
        txtmobile.Value = "";
        txtemail.Value = "";
        txtquery.Value = "";
        message.InnerText = "your query has been sent succesfully";
    }
}