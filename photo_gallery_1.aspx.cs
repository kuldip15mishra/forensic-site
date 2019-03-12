using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;
using forsenic;
public partial class photo_gallery_1 : System.Web.UI.Page
{
    
    public string tdstring;
    public string Section;
    public string ImagesFolder;
    public static string Image_Name;
    public string path;
    public DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        int i = 0;
        string shtml = "";
        dt = new DataTable();
        dt.Columns.Add("Imageurl", typeof(string));
        dt.Columns.Add("Name", typeof(string));
        if (!Page.IsPostBack)
        {
            try
            {
                path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
                System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "images/gallery/");
                System.IO.FileInfo[] fileInfos = di.GetFiles("*.*");
                foreach (System.IO.FileInfo f in fileInfos)
                {

                    dt.Rows.Add("images/gallery/" + f.Name, f.Name.Substring(0, f.Name.LastIndexOf('.')));
                }
                shtml += "<ul>";
                for (i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    shtml += "<li><div><img width='326' height='200' src='" + dt.Rows[i]["imageurl"] + "'  alt ='image' class='magnify' border='1'/><div><b>" + dt.Rows[i]["Name"] + "</b></div></li>";
                }

                shtml += "</ul>";
                imagegallery.InnerHtml = shtml;



                //Response.Write(path);
                Label1.Text = fileInfos.Length.ToString();
            }
            catch (Exception ex)
            {
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