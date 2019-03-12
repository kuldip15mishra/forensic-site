using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Changebanner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.PostedFile != null)
        {
            HttpPostedFile myFile = FileUpload1.PostedFile;
            int nFileLen = myFile.ContentLength;
            if (nFileLen == 0)
            {
                lblOutput.Text = "No file was uploaded.";
                return;
            }
            else
            {
                try
                {
                    string path = AppDomain.CurrentDomain.SetupInformation.ApplicationBase;
                    //System.IO.DirectoryInfo di = new System.IO.DirectoryInfo(path + "images/banner/");
                    //System.IO.FileInfo[] fileInfos = di.GetFiles("*.*");
                    //foreach (FileInfo f in fileInfos)
                    //{
                    //    File.Delete(path + "images/banner/" + f.Name);
                    //}

                    string virtualFolder = "~/images/banner/";

                    string physicalFolder = Server.MapPath(virtualFolder);


                    FileUpload1.SaveAs(physicalFolder + FileUpload1.FileName);


                    lblOutput.Text = "Your file " + FileUpload1.FileName + " has been uploaded.";
                }
                catch (Exception ex)
                {
                }

            }
        }
        else
        {
            Button1.Attributes.Add("onclick",
               "alert ('Please select file for banner...');");
        }
    }
}