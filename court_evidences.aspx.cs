using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;
using forsenic;
using System.Data;
public partial class court_evidences : System.Web.UI.Page
{
    public string path = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        string tblhtml = "";
        DataTable dt = new DataTable();
        dt.Columns.Add("Pdfurl", typeof(string));
        dt.Columns.Add("Name", typeof(string));
        if (!Page.IsPostBack)
        {
            try
            {
                path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
                System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "Admin/PDF/");
                System.IO.FileInfo[] fileInfos = di.GetFiles("*.pdf");
                foreach (System.IO.FileInfo f in fileInfos)
                {

                    dt.Rows.Add("Admin/PDF/" + f.Name, f.Name.Substring(0, f.Name.LastIndexOf('.')));
                }

                for (i = 0; i <= dt.Rows.Count - 1; i++)
                {

                    tblhtml += "<li><div class='li_class'> <img src='Admin/PDF/PDF-Icon.jpg' width='13' height='20' alt ='pdf' />&nbsp;<a target = '_blank' href ='" + dt.Rows[i]["Pdfurl"] + "'>" + dt.Rows[i]["Name"] + "</a></div></li>";
                }


                lblpdf.InnerHtml = tblhtml;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
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
            strbody += "</table>";
        HttpPostedFile fileup = FileUpload1.PostedFile;
               mail.SendMailMessage("forensic_experts@yahoo.in", "", "", "Enquiry", strbody, fileup);

        txtname.Value = "";
        txtmobile.Value = "";
        txtemail.Value = "";
        txtquery.Value = "";
        message.InnerText = "your query has been sent succesfully";
    }
}